<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    protected $primaryKey = 'id';

    // Add the fillable property
    protected $fillable = ['name', 'email', 'phone'];
}
