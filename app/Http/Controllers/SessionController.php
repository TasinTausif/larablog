<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class SessionController extends Controller {
    public function create() {

        return view( 'sessions.create' ); //Naming convention should be plural of controller_name.method_name
    }

    public function store() {

        $attributes = request()->validate( [
            'email'    => 'required|email',
            'password' => 'required',
        ] );

        if ( !Auth::attempt( $attributes ) ) {
            throw ValidationException::withMessages( [
                'email' => 'Your credentianls could not verified!',
            ] );
        }

        session()->regenerate();
        return redirect( '/' )->with( 'key', "Wlcome back! " );

    }

    public function destroy() {
        auth()->logout();

        return redirect( '/' )
            ->with( 'key', 'GoodBye!' );

    }

}
