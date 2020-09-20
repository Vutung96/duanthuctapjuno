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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::group(['namespace'=>'Admin'],function(){
	Route::group(['prefix'=>'login','middleware'=>'CheckLogedIn'],function(){
		Route::get('/','LoginController@getLogin');
		Route::post('/','LoginController@postLogin');
	});
	Route::get('logout','HomeController@getLogout');
	Route::group(['prefix'=>'admin','middleware'=>'CheckLogedOut'],function(){
		Route::get('home','HomeController@getHome');
		
		//Account
		Route::group(['prefix'=>'account'],function(){
			Route::get('/','AccountController@getAccount');
			
			Route::get('add','AccountController@getAddAccount');
			Route::post('add','AccountController@postAddAccount');

			Route::get('edit/{id}','AccountController@getEditAccount');
			Route::post('edit/{id}','AccountController@postEditAccount');

			Route::get('delete/{id}','AccountController@getDeleteAccount');

			Route::post('/uploadImage','AccountController@uploadImage')->name('uploadImage');
		});
		//Comment
		Route::group(['prefix'=>'comment'],function(){
			Route::get('/','CommentController@getComment');
			Route::get('edit/{id}','CommentController@getEditComment');
			Route::post('edit/{id}','CommentController@postEditComment');

			Route::get('delete/{id}','CommentController@getDeleteComment');
		});
		//Category
		Route::group(['prefix'=>'category'],function(){
			Route::get('/','CategoryController@getCategory');
			
			Route::get('add','CategoryController@getAddCategory')->name('create-cate');
			Route::post('add','CategoryController@postAddCategory');
			
			
			Route::get('edit/{id}','CategoryController@getEditCategory')->name('edit-cate');
			Route::post('edit/{id}','CategoryController@postEditCategory');

			Route::get('delete/{id}','CategoryController@getDeleteCategory');
		});
		//Attribute
		Route::group(['prefix'=>'attribute'],function(){
			Route::get('/','AttributeController@getAttribute');
			
			Route::get('add','AttributeController@getAddAttribute');
			Route::post('add','AttributeController@postAddAttribute');

			Route::get('edit/{id}','AttributeController@getEdittAttribute')->name('edit-att');
			Route::post('edit/{id}','AttributeController@postEditAttribute');

			Route::get('delete/{id}','AttributeController@getDeleteAttribute');
			Route::get('deletevalue/{id}','AttributeController@getDeleteAttValue');
		});
		// Order
		Route::group(['prefix'=>'order'],function(){
			Route::get('/','OrderController@getOder')->name('order');
			Route::get('edit/{id}','OrderController@getEditOrder');
			Route::post('edit/{id}','OrderController@postEditOrder')->name('edit-order');
			Route::get('delete/{id}','OrderController@getDeleteOrder');
		});
		//product
		Route::group(['prefix'=>'product'],function(){
			Route::get('/','ProductController@getProduct');
			Route::get('add','ProductController@getAddProduct');

			Route::post('add','ProductController@postAddProduct');

			Route::get('edit/{id}','ProductController@getEditProduct')->name('edit-prod');
			Route::post('edit/{id}','ProductController@postEditProduct');
			Route::get('delete/{id}','ProductController@getDeleteProduct');

		});
		//image
		Route::group(['prefix'=>'gallery'],function(){
			Route::get('/','ImageController@getImage');
			Route::get('/upload', 'ImageController@formUpload')->name('form-upload');
			Route::get('/image', 'ImageController@image')->name('image');
			Route::post('/image','ImageController@store')->name('upload');
		});
		//pages
		Route::group(['prefix'=>'page'],function(){
			Route::get('/','PageController@getPage');
			Route::post('/', 'PageController@PostAddPage');
			Route::get('edit/{id}', 'PageController@getEditPage')->name('edit-page');
			Route::post('edit/{id}', 'PageController@PostEditPage');
			Route::get('delete{id}', 'PageController@getDeletePage');
		});
		//new
		Route::group(['prefix'=>'news'],function(){
			Route::get('/','NewsController@getNew');
			Route::post('/','NewsController@postNew');
			Route::get('edit/{id}','NewsController@getEdit');
			Route::post('edit/{id}','NewsController@postEdit');
			Route::get('delete/{id}','NewsController@getDelete');
		});
	});
});

Route::group(['prefix'=>'/'],function(){
	Route::get('','FrontendController@index')->name('index');
	Route::get('san-pham/{slug}.html', 'FrontendController@detail')->name('detail');
	Route::get('tim-kiem.html', 'FrontendController@search')->name('search');
	Route::get('pages/{id}', 'FrontendController@page')->name('page');
	Route::get('news', 'FrontendController@new')->name('new');
	Route::get('news/{slug}.html', 'FrontendController@newsdetail')->name('newsdetail');
	Route::get('chuyen-muc/{slug}.html', 'FrontendController@category')->name('front_cate');
	Route::post('comment/{id}', 'FrontendController@comment')->name('add-comment');
	Route::get('slide', 'FrontendController@loadslide');
	Route::group(['prefix' => 'cart'], function(){
		Route::get('/', 'CartController@cart')->name('cart');
		Route::get('add', 'CartController@cart');
		Route::get('pay', 'CartController@pay')->name('pay');
		Route::post('pay', 'CartController@checkout');
		Route::post('add-cart', 'CartController@addTocart')->name('add-to-cart');
		Route::get('del/{id}', 'CartController@delete')->name('cart-delete');
		Route::get('delall', 'CartController@destroy')->name('cart-destroy');
	});
	Route::get('size','FrontendController@formSize')->name('form-size');
});