<?php

use App\Http\Controllers\AdminPostController;
use App\Http\Controllers\NewsletterController;
use App\Http\Controllers\PostCommentsController;
//use Illuminate\Support\Facades\DB;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
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
Route::post( '/posts/{post:slug}/comments', [PostCommentsController::class, 'store'] );

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

Route::get( 'register', [RegisterController::class, 'create'] )->middleware( 'guest' );
Route::post( 'register', [RegisterController::class, 'store'] )->middleware( 'guest' );

//Similar approach like up but without using the group middleware
Route::get( 'login', [SessionController::class, 'create'] )->middleware( 'guest' );
Route::post( 'login', [SessionController::class, 'store'] )->middleware( 'guest' );

Route::post( 'logout', [SessionController::class, 'destroy'] )->middleware( 'auth' );

//This is single action controller
Route::post( 'newsletter', NewsletterController::class );

//Admin routes
//As here's 6 routes using the same middleware, it's ideal to use group
Route::middleware( 'admin' )->group( function () {
    Route::get( 'admin/posts', [AdminPostController::class, 'index'] );
    Route::post( 'admin/posts', [AdminPostController::class, 'store'] );
    Route::get( 'admin/posts/create', [AdminPostController::class, 'create'] );
    Route::get( 'admin/posts/{post:id}/edit', [AdminPostController::class, 'edit'] );
    Route::patch( 'admin/posts/{post:id}', [AdminPostController::class, 'update'] );
    Route::delete( 'admin/posts/{post:id}', [AdminPostController::class, 'destroy'] );
} );

//We can use these shortand as well and this will give the exact same result

//Route::resource('admin/posts', AdminPostController::class)->except('show');

//Since we used gate, we can simply use middleware(can:admin) instead of middleware(admin)
