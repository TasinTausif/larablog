<?php

namespace App\Services;

//The reason behind implementation of this interface is, if we want to use Convertkit instead of Mailchimp, we just need to change the return method from AppServiceProvider service provider from returning mailchimp to Convertkit.
interface Newsletter {

    public function subscribe( string $email, string $lists = null );
}