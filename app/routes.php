<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('hello');
});

Route::get('users', function()
{
	return View::make('hello');
});

Route::get('questions', function(){
	return Response::json(array(
		'grade' => 1,
		'id' => 1,
		'content' => 'PERSON_1 has NUMBER_1 apples',
		'answers' => array(
			array(
				'id' => 1,
				'content' => 'this is answer 1',
				'correct' => true),
			array(
				'id' => 2,
				'content' => 'this is answer 2',
				'correct' => false),
			array(
				'id' => 3,
				'content' => 'this is answer 3',
				'correct' => false),
			array(
				'id' => 4,
				'content' => 'this is answer 4',
				'correct' => false)
			),
		'cover' => '/img/cover-for-question-1.jpg',
		200
	));
});

Route::get('persons', function(){
	return Response::json(array(
		'id' => 1,
		'type' => 'pupil',
		'name' => 'Michael Jackson',
		'date_created' => date('Y-m-d'),
		'timezone' => 'ICT',
		'affliation' => 'Vietnam National University',
		'profile' => '/img/profile-img-person-1.jpg',
		200
	));
});