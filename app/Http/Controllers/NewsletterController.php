<?php

namespace App\Http\Controllers;

use App\Services\Newsletter;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class NewsletterController extends Controller {

    //By calling Newsletter, we are calling the interface directly and ServiceContainer will do the rest behind
    public function __invoke( Newsletter $newsletter ) {
        request()->validate( [
            'email' => 'required|email',
        ] );

        //The string in add list member method is found by runnig from id of getListInfo method
        try {
            $newsletter->subscribe( request( 'email' ) );

            //If we do not call automatic resolution or, the object inside the method, we have call like bellow
            //( new Newsletter() )->subscribe( request( 'email' ) );
        } catch ( Exception $e ) {
            throw ValidationException::withMessages( [
                'email' => 'This email could not be added to the list',
            ] );
        }

        return redirect( '/' )->with( 'key', 'You have successfully added your email for our newsletters' );
    }
}
