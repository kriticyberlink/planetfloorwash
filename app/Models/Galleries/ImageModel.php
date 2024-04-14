<?php

namespace App\Models\Galleries;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImageModel extends Model
{
    use HasFactory;
    protected $table = "cl_images";
    protected $fillable = ['title', 'image', 'ordering'];
}
