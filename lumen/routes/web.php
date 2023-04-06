<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return 'oof';
});

// localhost:8000/
$router->get('ads', ['uses' => 'AdController@getAllAds']);
$router->get('authors', ['uses' => 'AuthorController@getAllAuthors']);
$router->get('posts', ['uses' => 'PostController@getAllPosts']);
$router->get('events', ['uses' => 'EventController@getAllEvents']);
$router->get('subscribers', ['uses' => 'SubscriberController@getAllSubscribers']);
$router->get('volunteers', ['uses' => 'VolunteerController@getAllVolunteers']);

// localhost:8000/2
$router->get('ads/{id}', ['uses' => 'AdController@getOneAd']);
$router->post('ads', ['uses' => 'AdController@createAd']);
$router->put('ads/{id}', ['uses' => 'AdController@updateAd']);
$router->delete('ads/{id}', ['uses' => 'AdController@deleteAd']);

$router->get('authors/{id}', ['uses' => 'AuthorController@getOneAuthor']);
$router->post('authors', ['uses' => 'AuthorController@createAuthor']);
$router->put('authors/{id}', ['uses' => 'AuthorController@updateAuthor']);
$router->delete('authors/{id}', ['uses' => 'AuthorController@deleteAuthor']);

$router->get('posts/{id}', ['uses' => 'PostController@getOnePost']);
$router->post('posts', ['uses' => 'PostController@createPost']);
$router->put('posts/{id}', ['uses' => 'PostController@updatePost']);
$router->delete('posts/{id}', ['uses' => 'PostController@deletePost']);

$router->get('events/{id}', ['uses' => 'EventController@getOneEvent']);
$router->post('events', ['uses' => 'EventController@createEvent']);
$router->put('events/{id}', ['uses' => 'EventController@updateEvent']);
$router->delete('events/{id}', ['uses' => 'EventController@deleteEvent']);

$router->get('subscribers/{id}', ['uses' => 'SubscriberController@getOneSubscriber']);
$router->post('subscribers', ['uses' => 'SubscriberController@createSubscriber']);
$router->put('subscribers/{id}', ['uses' => 'SubscriberController@updateSubscriber']);
$router->delete('subscribers/{id}', ['uses' => 'SubscriberController@deleteSubscriber']);

$router->get('volunteers/{id}', ['uses' => 'VolunteerController@getOneVolunteer']);
$router->post('volunteers', ['uses' => 'VolunteerController@createVolunteer']);
$router->put('volunteers/{id}', ['uses' => 'VolunteerController@updateVolunteer']);
$router->delete('volunteers/{id}', ['uses' => 'VolunteerController@deleteVolunteer']);