<?php

namespace API_Lab;

use Illuminate\Database\Eloquent\Model;

class api_key extends Model
{
    protected $fillable = [
        'CONTACT NAME', 'EMAIL', 'COMPANY', 'API KEY'
    ];
}
