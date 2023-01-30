<?php

use App\Models\Category;
use App\Models\Post;
//use Illuminate\Support\Facades\DB;
use App\Models\User;
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

Route::get( '/', function () {

    //It was used to check n+1 problem from logs.
    /*DB::listen(function($query){
    logger($query->sql, $query->bindings);
    });*/

    return view( 'posts', [
        'posts' => Post::latest()->with( 'category', 'author' )->get(),
    ] );
} );

Route::get( '/posts/{post}', function ( Post $post ) {
    //Find a post by it's slug and pass it to a view called "post"
    //return view( 'post', ['post' => Post::findOrFail( $id )] );

    return view( 'post', ['post' => $post] );
} );

Route::get( '/categories/{category:slug}', function ( Category $category ) {
    return view( 'posts', ['posts' => $category->posts->load( ['author', 'category'] )] ); //Calling posts method from model Category
} );

//By writing after : means tell the browser explplicitly to take username instead of default id
Route::get( '/authors/{author:username}', function ( User $author ) {
    return view( 'posts', ['posts' => $author->posts->load( ['author', 'category'] )] );
} );
