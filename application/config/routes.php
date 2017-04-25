<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'inicio';
$route['ponente/listado/(:num)'] = 'ponente/listado';
$route['evaluador/listado/(:num)'] = 'evaluador/listado';
$route['encuentro/listado/(:num)'] = 'encuentro/listado';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
