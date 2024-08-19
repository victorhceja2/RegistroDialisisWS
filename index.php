<?php
// index.php
require 'vendor/autoload.php';

$app = new \Slim\App;

$app->get('/medicos', function ($request, $response, $args) {
    // Código para obtener todos los médicos
});

$app->post('/medicos', function ($request, $response, $args) {
    // Código para crear un nuevo médico
});

// Similar para pacientes, maquina_dialisis y registro_diario

$app->run();