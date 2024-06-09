<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/Login','Home::login');
$routes->get('/Register','Home::toregister');
$routes->get('/Home','Home::home');
$routes->get('/Aplications','Home::aplications');
$routes->get('/RegisterAplications','Home::registerAplications');
$routes->get('/ConfigAplications','Home::configAplications');
$routes->get('/Virtual','Home::virtual');
$routes->get('/RegisterEquipment','Home::registerEquipment');
$routes->get('/Equipment','Home::equipment');
$routes->get('/ReportEquipment','Home::Reportequipment');

$routes->get('/EquipmentAccountants','Home::equipmentAccountants');
$routes->get('/AllEquipmentAccountants','Home::allEquipmentAccountants');


$routes->get('/Backups','Home::backups');
$routes->get('/Course','Home::course');
$routes->get('/AllCourses','Home::allCourse');
$routes->get('/RegisterCourses','Home::registerCourses');
$routes->get('/ImagesSo','Home::images');

