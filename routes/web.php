<?php

use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
//use Illuminate\Support\Facades\DB;
use App\Http\Controllers\SessionController;
use Illuminate\Support\Facades\Route;

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

//This route is also off right now and won't work
Route::get( '/post/{posting}', function ( $slug ) {

//This is a very messy code, see bellow for the best one

    if ( !file_exists( $path = __DIR__ . "/../resources/posts/{$slug}.html" ) ) {

//This will thrrow some error message

//dd( 'Path not found' );

//ddd('Path does not exist');

//abort(404); It is used, if unwanted values found in URL, else use dd or ddd

        //This will redirect to homepage
        return redirect( '/posts' );
    }

    $post = cache()->remember( "post.{$slug}", now()->addMinute( 1 ), function () use ( $path ) {
        return file_get_contents( $path );
    } );
    return view( 'post', ['post' => $post] );
} )->where( 'posting', "[A-z_\-]+" );

//This path is off, won't work now
Route::get( '/post', function () {
    return view( 'post', [
        'post' => file_get_contents( __DIR__ . '/../resources/posts/my-first-post.html' ),
    ] );
} );

Route::get( '/', [PostController::class, 'index'] )->name( 'home' );

Route::get( '/posts/{post}', [PostController::class, 'show'] );

//By writing after : means tell the browser explplicitly to take username instead of default id

/*Route::get( '/authors/{author:username}', function ( User $author ) {
return view( 'posts.index', [
'posts' => $author->posts->load( ['author', 'category'] ),
//'categories' => Category::all(),//Don't have to use this line, cause we created a component\view file named CategoryDropdown where, this is passed and need not to pass this line anywhere
] );
} );
 */

/*Route::get( '/categories/{category:slug}', function ( Category $category ) {
return view( 'posts', [
'posts'      => $category->posts->load( ['author', 'category'] ), //Calling posts method from model Category
'currentCategory' => $category,
'categories' => Category::all(),
] );
} )->name( 'category' );
 */

Route::middleware( 'guest' )->group( function () {
    Route::get( 'register', [RegisterController::class, 'create'] );
    Route::post( 'register', [RegisterController::class, 'store'] );
} );

//Similar approach like up but without using the group middleware
Route::get( 'login', [SessionController::class, 'create'] )->middleware( 'guest' );
Route::post( 'login', [SessionController::class, 'store'] )->middleware( 'guest' );

Route::post( 'logout', [SessionController::class, 'destroy'] )->middleware( 'auth' );