<?php

namespace App\Providers;

use App\Models\User;
use App\Services\MailchimpNewsletter;
use App\Services\Newsletter;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use MailchimpMarketing\ApiClient;

class AppServiceProvider extends ServiceProvider {
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() {

        //app is a helper function here to help binding the new newsletter service
        //Calling the Newsletter here refers that, we are directly calling the interface and whatever api we are using, just need to return that.
        app()->bind( Newsletter::class, function () {

            $client = ( new ApiClient() )->setConfig( [
                'apiKey' => config( 'services.mailchimp.key' ),
                'server' => 'us21',
            ] );

            return new MailchimpNewsletter( $client );
        } );
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        Model::unguard();

        Gate::define( 'admin', function ( User $user ) {
            return $user->username === 'admin';
        } );
    }
}
