<?php

namespace App\Http\Controllers;

use App\Models\User;

class RegisterController extends Controller {
    public function create() {
        return view( 'register.create' );
    }

    public function store() {
        $attributes = request()->validate( [
            'name'     => 'required|max:255',
            'username' => 'required|min:5|max:255|unique:users,username', //Unique will validate that, only the unique values are taken
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|min:7|max:255',
        ] );

        //dd( 'Success validation succeed' );

        $user = User::create( $attributes );

        auth()->login( $user );

        //Here a flash session will generate a message with a key. Here the key name is key, and that key needs to be called in the redirected file.

        //session()->flash( 'key', 'You have been registered successfully.' );

        return redirect( '/' )->with( 'key', 'You have been registered successfully.' ); //Here with function is doing exactly the same thing as session()->flash
    }
}
