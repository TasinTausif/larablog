<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model {
    use HasFactory;

    //This will get rid off the fillable/guarded issues
    protected $guarded = [];

    public function post() {
        return $this->belongsTo( Post::class ); //didn't mentioned the forgein key, cause Laravel will by default take the method name and then find it's relevant id
    }

    public function author() {
        return $this->belongsTo( User::class, 'user_id' ); //here mentioned the forgein key name explicitly, cause Laravel will think forgein id as authod_id, since it's a not according to our table name, mentioning the name aside
    }
}
