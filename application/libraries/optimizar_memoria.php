<?php
class Optimizar_memoria extends Fpdf_multicell{

	var $f;
	var $outlines=array();
	var $OutlineRoot;
	var $_toc=array();
	var $_numbering=false;
	var $_numberingFooter=false;
	var $_numPageNum=1;
	
	function Open($file='tmp/pdf.pdf')
	{
		if(FPDF_VERSION<'1.6')
			$this->Error('Version 1.6 or above is required by this extension');
		$this->f=fopen($file,'wb');
		if(!$this->f)
			$this->Error('Unable to create output file: '.$file);
		parent::Open();
		$this->_putheader();
	}

	function Image($file, $x=null, $y=null, $w=0, $h=0, $type='', $link='')
	{
		if(!isset($this->images[$file]))
		{
			//Retrieve only meta-information
			$a=getimagesize($file);
			if($a===false)
				$this->Error('Missing or incorrect image file: '.$file);
			$this->images[$file]=array('w'=>$a[0],'h'=>$a[1],'type'=>$a[2],'i'=>count($this->images)+1);
		}
		parent::Image($file,$x,$y,$w,$h,$type,$link);
	}

	function Output()
	{
		if($this->state<3)
			$this->Close();
	}

	function _endpage()
	{
		parent::_endpage();
		//Write page to file
		$filter=($this->compress) ? '/Filter /FlateDecode ' : '';
		$p=($this->compress) ? gzcompress($this->buffer) : $this->buffer;
		$this->_newobj();
		$this->_out('<<'.$filter.'/Length '.strlen($p).'>>');
		$this->_putstream($p);
		$this->_out('endobj');
		$this->buffer='';
	}

	function _newobj()
	{
		$this->n++;
		$this->offsets[$this->n]=ftell($this->f);
		$this->_out($this->n.' 0 obj');
	}

	function _out($s)
	{
		if($this->state==2)
			$this->buffer.=$s."\n";
		else
			fwrite($this->f,$s."\n",strlen($s)+1);
	}

	function _putimages()
	{
		$filter=($this->compress) ? '/Filter /FlateDecode ' : '';
		reset($this->images);
		while(list($file,$info)=each($this->images))
		{
			//Load image
			if($info['type']==1)
				$info=$this->_parsegif($file);
			elseif($info['type']==2)
				$info=$this->_parsejpg($file);
			elseif($info['type']==3)
				$info=$this->_parsepng($file);
			else
				$this->Error('Unsupported image type: '.$file);
			//Put it into file
			$this->_newobj();
			$this->images[$file]['n']=$this->n;
			$this->_out('<</Type /XObject');
			$this->_out('/Subtype /Image');
			$this->_out('/Width '.$info['w']);
			$this->_out('/Height '.$info['h']);
			if($info['cs']=='Indexed')
				$this->_out('/ColorSpace [/Indexed /DeviceRGB '.(strlen($info['pal'])/3-1).' '.($this->n+1).' 0 R]');
			else
			{
				$this->_out('/ColorSpace /'.$info['cs']);
				if($info['cs']=='DeviceCMYK')
					$this->_out('/Decode [1 0 1 0 1 0 1 0]');
			}
			$this->_out('/BitsPerComponent '.$info['bpc']);
			if(isset($info['f']))
				$this->_out('/Filter /'.$info['f']);
			if(isset($info['parms']))
				$this->_out($info['parms']);
			if(isset($info['trns']) && is_array($info['trns']))
			{
				$trns='';
				for($i=0;$i<count($info['trns']);$i++)
					$trns.=$info['trns'][$i].' '.$info['trns'][$i].' ';
				$this->_out('/Mask ['.$trns.']');
			}
			$this->_out('/Length '.strlen($info['data']).'>>');
			$this->_putstream($info['data']);
			unset($info['data']);
			$this->_out('endobj');
			//Palette
			if($info['cs']=='Indexed')
			{
				$this->_newobj();
				$pal=($this->compress) ? gzcompress($info['pal']) : $info['pal'];
				$this->_out('<<'.$filter.'/Length '.strlen($pal).'>>');
				$this->_putstream($pal);
				$this->_out('endobj');
			}
		}
	}

	function _putpages()
	{
		$nb=$this->page;
		if($this->DefOrientation=='P')
		{
			$wPt=$this->DefPageFormat[0]*$this->k;
			$hPt=$this->DefPageFormat[1]*$this->k;
		}
		else
		{
			$wPt=$this->DefPageFormat[1]*$this->k;
			$hPt=$this->DefPageFormat[0]*$this->k;
		}
		//Page objects
		for($n=1;$n<=$nb;$n++)
		{
			$this->_newobj();
			$this->_out('<</Type /Page');
			$this->_out('/Parent 1 0 R');
			if(isset($this->PageSizes[$n]))
				$this->_out(sprintf('/MediaBox [0 0 %.2F %.2F]',$this->PageSizes[$n][0],$this->PageSizes[$n][1]));
			$this->_out('/Resources 2 0 R');
			if(isset($this->PageLinks[$n]))
			{
				//Links
				$annots='/Annots [';
				foreach($this->PageLinks[$n] as $pl)
				{
					$rect=sprintf('%.2F %.2F %.2F %.2F',$pl[0],$pl[1],$pl[0]+$pl[2],$pl[1]-$pl[3]);
					$annots.='<</Type /Annot /Subtype /Link /Rect ['.$rect.'] /Border [0 0 0] ';
					if(is_string($pl[4]))
						$annots.='/A <</S /URI /URI '.$this->_textstring($pl[4]).'>>>>';
					else
					{
						$l=$this->links[$pl[4]];
						$h=isset($this->PageSizes[$l[0]]) ? $this->PageSizes[$l[0]][1] : $hPt;
						$annots.=sprintf('/Dest [%d 0 R /XYZ 0 %.2F null]>>',2+$nb+$l[0],$h-$l[1]*$this->k);
					}
				}
				$this->_out($annots.']');
			}
			$this->_out('/Contents '.(2+$n).' 0 R>>');
			$this->_out('endobj');
		}
		//Pages root
		$this->offsets[1]=ftell($this->f);
		$this->_out('1 0 obj');
		$this->_out('<</Type /Pages');
		$kids='/Kids [';
		for($n=1;$n<=$nb;$n++)
			$kids.=(2+$nb+$n).' 0 R ';
		$this->_out($kids.']');
		$this->_out('/Count '.$nb);
		$this->_out(sprintf('/MediaBox [0 0 %.2F %.2F]',$wPt,$hPt));
		$this->_out('>>');
		$this->_out('endobj');
	}

	function _putresources() //a 186
	{
		$this->_putfonts();
		$this->_putimages();
		//Resource dictionary
		$this->offsets[2]=ftell($this->f);
		$this->_out('2 0 obj');
		$this->_out('<<');
		$this->_putresourcedict();
		$this->_out('>>');
		$this->_out('endobj');
	}

	function _putcatalog()
	{
		$this->_out('/Type /Catalog');
		$this->_out('/Pages 1 0 R');
		$n=3+$this->page;
		if($this->ZoomMode=='fullpage')
			$this->_out('/OpenAction ['.$n.' 0 R /Fit]');
		elseif($this->ZoomMode=='fullwidth')
			$this->_out('/OpenAction ['.$n.' 0 R /FitH null]');
		elseif($this->ZoomMode=='real')
			$this->_out('/OpenAction ['.$n.' 0 R /XYZ null null 1]');
		elseif(!is_string($this->ZoomMode))
			$this->_out('/OpenAction ['.$n.' 0 R /XYZ null null '.($this->ZoomMode/100).']');
		if($this->LayoutMode=='single')
			$this->_out('/PageLayout /SinglePage');
		elseif($this->LayoutMode=='continuous')
			$this->_out('/PageLayout /OneColumn');
		elseif($this->LayoutMode=='two')
			$this->_out('/PageLayout /TwoColumnLeft');
	}

	function _enddoc()
	{
		$this->_putpages();
		$this->_putresources();
		//Info
		$this->_newobj();
		$this->_out('<<');
		$this->_putinfo();
		$this->_out('>>');
		$this->_out('endobj');
		//Catalog
		$this->_newobj();
		$this->_out('<<');
		$this->_putcatalog();
		$this->_out('>>');
		$this->_out('endobj');
		//Cross-ref
		$o=ftell($this->f);
		$this->_out('xref');
		$this->_out('0 '.($this->n+1));
		$this->_out('0000000000 65535 f ');
		for($i=1;$i<=$this->n;$i++)
			$this->_out(sprintf('%010d 00000 n ',$this->offsets[$i]));
		//Trailer
		$this->_out('trailer');
		$this->_out('<<');
		$this->_puttrailer();
		$this->_out('>>');
		$this->_out('startxref');
		$this->_out($o);
		$this->_out('%%EOF');
		$this->state=3;
		fclose($this->f);
	}/**Final optimizar_memoria*/
	
	function Bookmark($txt, $level=0, $y=0)
	{
		if($y==-1)
			$y=$this->GetY();
		$this->outlines[]=array('t'=>$txt, 'l'=>$level, 'y'=>($this->h-$y)*$this->k, 'p'=>$this->PageNo());
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
		
		function _putresources1() ///x 327
		{
			parent::_putresources1();
			$this->_putbookmarks();
		}
		
		function _putcatalog1() //333
		{
			parent::_putcatalog1();
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
					$entrySize=10,
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

	function Footer() {
	if(!$this->_numberingFooter)
		return;
	//Go to 1.5 cm from bottom
		$this->SetY(-15);
		//Select Arial italic 8
		$this->SetFont('Arial','I',8);
		$this->Cell(0,7,$this->numPageNo(),0,0,'C'); 
		if(!$this->_numbering)
			$this->_numberingFooter=false;
}

}
?>