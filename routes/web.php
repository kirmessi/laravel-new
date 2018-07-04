<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','homeController@index');
Route::resource('todo','todocontroller');
Route::get('/file',function(){
	return view('file.home');
});
Route::post('/send','mailController@send');
Route::get('/email','mailController@email');
Route::get('/sendmail','mail2Controller@index');

Route::get('/about', 'testController@about')->middleware('test:Kir');
   //1. with
   //2. withBitfumes
   //3. ['']
   //4. compact ('bitfumes')


Route::get('contact', 'testController@Contact');

Route::resource('songs','SongsController');

