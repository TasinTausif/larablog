<?php

namespace App\Services;

use App\Services\Newsletter;
use MailchimpMarketing\ApiClient;

class MailchimpNewsletter implements Newsletter {

    public function __construct( protected ApiClient $client ) {

    }

    public function subscribe( string $email, string $lists = null ) {

        $lists??=config( 'services.mailchimp.lists.subscribers' );

        return $this->client->lists->addListMember( $lists, [
            "email_address" => $email,
            "status"        => "subscribed",
        ] );
    }
}