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

Auth::routes();

Route::get('/', 'BlogController@index')->name('public');
Route::get('/isi-post/{slug}', 'BlogController@isi_blog')->name('blog.isi');
Route::get('/list-post', 'BlogController@list_blog')->name('blog.list');
Route::get('/about-us', 'BlogController@about_us')->name('blog.about_us');
Route::get('/list-category/{category}', 'BlogController@list_category')->name('blog.category');
Route::get('/list-tag/{tag}', 'BlogController@list_tag')->name('blog.tag');
Route::get('/cari','BlogController@cari')->name('blog.cari');
Route::post('ckeditor/image_upload', 'CKEditorController@upload')->name('upload');

Route::group(['middleware' => 'auth'], function () {

    Route::get('/admin', 'HomeController@index')->name('admin');
    Route::resource('/admin/category', 'CategoryController');
    Route::resource('/admin/tag', 'TagController');

    Route::get('/admin/post/tampil_hapus', 'PostController@tampil_hapus')->name('post.tampil_hapus');
    Route::get('/admin/post/restore/{id}', 'PostController@restore')->name('post.restore');
    Route::delete('/admin/post/kill/{id}', 'PostController@kill')->name('post.kill');
    Route::resource('/admin/post', 'PostController');
});