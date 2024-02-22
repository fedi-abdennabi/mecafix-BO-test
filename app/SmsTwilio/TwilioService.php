<?php

namespace App\SmsTwilio;

use Twilio\Rest\Client;

class TwilioService
{
    protected $twilio;

    public function __construct()
    {
        $sid = getenv('TWILIO_SID');
        $token = getenv('TWILIO_AUTH_TOKEN');

        $this->twilio = new Client($sid, $token);
    }

    public function sendMessage($to, $message)
    {
        $from = getenv('TWILIO_PHONE_NUMBER');

        $this->twilio->messages->create(
            $to,
            [
                'from' => $from,
                'body' => $message
            ]
        );
    }
}
