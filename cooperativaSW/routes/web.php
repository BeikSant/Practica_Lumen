<?php

/** @var \Laravel\Lumen\Routing\Router $router */



$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router -> group(['prefix' => 'cliente'], function($router){
    $router -> get('all', 'ClienteController@allSinRestricciones');
    $router -> get('allJson', 'ClienteController@allJson');
    $router -> get('get/{cedula}','ClienteController@getCliente');
    $router -> get('delete/{cedula}','ClienteController@deleteCliente');
    $router -> group(['middleware' => 'auth'], function() use ($router){
        $router -> post('new','ClienteController@create');
    });
}); 

$router -> group(['prefix' => 'cuenta'], function($router){
    $router -> get('all/{cedula}', 'CuentaController@allSinRestricciones');
    $router -> get('allJson/{cedula}', 'CuentaController@allJson');
    $router -> get('get/{cedula}/{numero}','CuentaController@getCuenta');
    $router -> get('delete/{cedula}/{numero}','CuentaController@deleteCuenta');
    $router -> group(['middleware' => 'auth'], function() use ($router){
        $router -> post('new/{cedula}','CuentaController@create');
    });
}); 

$router -> group(['prefix' => 'transaccion'], function($router){
    $router -> group(['middleware' => 'auth'], function() use ($router){
        $router -> post('retiro/{cedula}/{numero}','TransaccionController@retiro');
        $router -> post('deposito/{cedula}/{numero}','TransaccionController@deposito');
    });
}); 

$router -> group(['prefix' => 'usuario'], function($router){
    $router -> post('login', 'UserController@login');
    $router -> post('salir', 'UserController@logout');
}); 
