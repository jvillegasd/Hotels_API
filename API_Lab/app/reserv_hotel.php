<?php

namespace API_Lab;

use Illuminate\Database\Eloquent\Model;

class reserv_hotel extends Model
{
    protected $fillable = [
        'START DATE', 'END DATE', 'STATE', 'HOTEL ID', 'USER ID'
    ];
}
