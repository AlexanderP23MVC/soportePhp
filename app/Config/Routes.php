<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/login','Home::login');
$routes->get('/register','Home::toregister');
$routes->get('/home','Home::home');
$routes->get('/aplications','Home::aplications');
$routes->get('/configAplications','Home::configAplications');
$routes->get('/registerAplications','Home::registerAplications');

