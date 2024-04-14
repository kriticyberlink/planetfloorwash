<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceContactModel extends Model
{
    use HasFactory;
    
    protected $table = "contact_us_services_rel";
    protected $fillable = ['contact_us_id', 'service_name'];
}
