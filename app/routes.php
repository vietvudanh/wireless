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

// Route::get('/', function()
// {
// 	return View::make('hello');
// });

// Route group for API versioning
// 
Route::group(array('prefix' => 'api/v1'), function()
{
    // define route to REST controller
    Route::resource('question', 'QuestionController');
    Route::resource('answer', 'AnswerController');
    Route::resource('variable', 'VariableController');
    Route::resource('chatper', 'ChapterController');
    Route::resource('grade', 'GradeController');
    Route::resource('entity', 'EntityController');
    Route::resource('attribute', 'AttributeController');
});