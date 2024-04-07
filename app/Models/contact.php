<?php

namespace App\Models;
use App\Models\student;
//to make relation with another model/table;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class contact extends Model
{
    use HasFactory;

    public function user(){
        return $this->hasOne(Student::class, 'id' , 'author_id');
    }
}
