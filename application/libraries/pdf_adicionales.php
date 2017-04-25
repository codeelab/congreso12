<?php
class Pdf_adicionales extends Fpdf_class {

	var $outlines=array();
	var $OutlineRoot;
	var $_toc=array();
	var $_numbering=false;
	var $_numberingFooter=false;
	var $_numPageNum=1;

	function Bookmark($txt, $level=0, $y=0, $pages_index=0)
	{
		if($y==-1)
			$y=$this->GetY();
		$this->outlines[]=array('t'=>$txt, 'l'=>$level, 'y'=>($this->h-$y)*$this->k, 'p'=>$this->PageNo()+$pages_index);
	}

	function BookmarkUTF8($txt, $level=0, $y=0)
	{
		$this->Bookmark($this->_UTF8toUTF16($txt),$level,$y);
	}

	function _putbookmarks()
		{
			$nb=count($this->outlines);
			if($nb==0)
				return;
			$lru=array();
			$level=0;
			foreach($this->outlines as $i=>$o)
			{
				if($o['l']>0)
				{
					$parent=$lru[$o['l']-1];
					//Set parent and last pointers
					$this->outlines[$i]['parent']=$parent;
					$this->outlines[$parent]['last']=$i;
					if($o['l']>$level)
					{
						//Level increasing: set first pointer
						$this->outlines[$parent]['first']=$i;
					}
				}
				else
					$this->outlines[$i]['parent']=$nb;
				if($o['l']<=$level and $i>0)
				{
					//Set prev and next pointers
					$prev=$lru[$o['l']];
					$this->outlines[$prev]['next']=$i;
					$this->outlines[$i]['prev']=$prev;
				}
				$lru[$o['l']]=$i;
				$level=$o['l'];
			}
			//Outline items
			$n=$this->n+1;
			foreach($this->outlines as $i=>$o)
			{
				$this->_newobj();
				$this->_out('<</Title '.$this->_textstring($o['t']));
				$this->_out('/Parent '.($n+$o['parent']).' 0 R');
				if(isset($o['prev']))
					$this->_out('/Prev '.($n+$o['prev']).' 0 R');
				if(isset($o['next']))
					$this->_out('/Next '.($n+$o['next']).' 0 R');
				if(isset($o['first']))
					$this->_out('/First '.($n+$o['first']).' 0 R');
				if(isset($o['last']))
					$this->_out('/Last '.($n+$o['last']).' 0 R');
				$this->_out(sprintf('/Dest [%d 0 R /XYZ 0 %.2F null]',1+2*$o['p'],$o['y']));
				$this->_out('/Count 0>>');
				$this->_out('endobj');
			}
			//Outline root
			$this->_newobj();
			$this->OutlineRoot=$this->n;
			$this->_out('<</Type /Outlines /First '.$n.' 0 R');
			$this->_out('/Last '.($n+$lru[0]).' 0 R>>');
			$this->_out('endobj');
		}

		function _putresources() ///x 327
		{
			parent::_putresources();
			$this->_putbookmarks();
		}

		function _putcatalog() //333
		{
			parent::_putcatalog();
			if(count($this->outlines)>0)
			{
				$this->_out('/Outlines '.$this->OutlineRoot.' 0 R');
				$this->_out('/PageMode /UseOutlines');
			}
		}/**Final bookmark*/


	function AddPage($orientation='', $format='') {
		parent::AddPage($orientation,$format);
		if($this->_numbering)
			$this->_numPageNum++;
	}

function startPageNums() {
	$this->_numbering=true;
	$this->_numberingFooter=true;
}

function stopPageNums() {
	$this->_numbering=false;
}

function numPageNo() {
	return $this->_numPageNum;
}

function TOC_Entry($txt, $level=0) {
	$this->_toc[]=array('t'=>$txt,'l'=>$level,'p'=>$this->numPageNo());
}

function insertTOC( $location=1,
					$labelSize=20,
					$entrySize=5,
					$tocfont='Times',
					$label='Índice'
) {
	//make toc at end
	$this->stopPageNums();
	$this->AddPage();
	$tocstart=$this->page;

	$this->SetFont($tocfont,'B',$labelSize);
	$this->Cell(0,5,$label,0,1,'C');
	$this->Ln(10);

	foreach($this->_toc as $t) {

		//Offset
		$level=$t['l'];
		if($level>0)
			$this->Cell($level*8);
		$weight='';
		if($level==0)
			$weight='B';
		$str=$t['t'];
		$this->SetFont($tocfont,$weight,$entrySize);
		$strsize=$this->GetStringWidth($str);
		$this->Cell($strsize+2,$this->FontSize+2,$str);

		//Filling dots
		$this->SetFont($tocfont,'',$entrySize);
		$PageCellSize=$this->GetStringWidth($t['p'])+2;
		$w=$this->w-$this->lMargin-$this->rMargin-$PageCellSize-($level*8)-($strsize+2);
		$nb=$w/$this->GetStringWidth('.');
		$dots=str_repeat('.',$nb);
		$this->Cell($w,$this->FontSize+2,$dots,0,0,'R');

		//Page number
		$this->Cell($PageCellSize,$this->FontSize+2,$t['p'],0,1,'R');
	}

	//Grab it and move to selected location
	$n=$this->page;
	$n_toc = $n - $tocstart + 1;
	$last = array();

	//store toc pages
	for($i = $tocstart;$i <= $n;$i++)
		$last[]=$this->pages[$i];

	//move pages
		for($i=$tocstart-1;$i>=$location-1;$i--)
			$this->pages[$i+$n_toc]=$this->pages[$i];

		//Put toc pages at insert point
			for($i = 0;$i < $n_toc;$i++)
				$this->pages[$location + $i]=$last[$i];
}
	function Header()
	{
		$this->Image(base_url().'images/INFOCYT.jpg',5,5,50);
		$this->Cell(0,5,'','B',1,'C');
		$this->ln(3);
	}

	function Footer() {
	if(!$this->_numberingFooter)
		return;
	//Go to 1.5 cm from bottom
		$this->SetY(-15);
		//Select Arial italic 8
		$this->SetFont('Arial','I',8);
		$this->Cell(0,7,"Pag. ".$this->numPageNo(),0,0,'R');
		if(!$this->_numbering)
			$this->_numberingFooter=false;
}

}
?>