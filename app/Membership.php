<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;


class Membership extends Authenticatable
{
    protected $fillable=['verified','type','name','birth_date','passport_number','blood_group','user_email','password','province_id','district_id','municipal_id','ward_no','village','telephone','full_name','address','relation','current_country','company_name','post_box_no','id_number','entrance_date','email','phone','address2'];

    public function donations(){
    return $this->hasOne('App\Model\Donation','user_id');
    }
}