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
    // route root of api to documentation
    Route::get('/', function(){
        $url = "https://docs.google.com/document/d/1qjX9mYRFk6q2hzVwudQcOvfOQ0YxmwY5W31Y8SyckIM/edit?usp=sharing";
        $str = "<h1>Welcome to Wireless network API web service</h1>
                for details information, please read the <a href=\"".$url."\">Documentation</a></br>
                Group 6";

        echo $str;
    });

    // define route to REST controller
    Route::resource('question', 'QuestionController');
    Route::resource('answer', 'AnswerController');
    Route::resource('variable', 'VariableController');
    Route::resource('chapter', 'ChapterController');
    Route::resource('grade', 'GradeController');
    Route::resource('entity', 'EntityController');
    Route::resource('attribute', 'AttributeController');
    Route::resource('user', 'UserController');
    Route::resource('history', 'HistoryController');
    Route::resource('question_entity', 'QuestionEntityController');
    Route::resource('entity_attribute', 'EntityAttributeController');
});