<?php
//load de laravel aplication

require __DIR__ . '/../vendor/autoload.php';
$app = require_once __DIR__ . '/../bootstrap/app.php';

//run th aplication

$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);
$response = $kernel ->handle(
    $request= \Illuminate\Http\Request::capture());

    $response->send();
    $kernel->terminate($request,$response);
