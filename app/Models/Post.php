<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model {
    use HasFactory;

//This code will allow not to use load or with method used in route
    //protected $with = ['category', 'author'];

    protected $fillable = ['title', 'slug', 'excerpt', 'body', 'category_id'];
    //protected $guarded = ['id'];

    public function getRouteKeyName() {
        return 'slug';
    }

    //Creating Eloquent relationship
    public function category() {
        return $this->belongsTo( Category::class ); //Since their relationship is belongsto
    }

    public function author() {
        return $this->belongsTo( User::class, 'user_id' );
    }

    //Query scope to search in homepage
    public function scopeFilter( $query, array $filters ) {

        $query->when( $filters['search'] ?? false, fn( $query, $search ) =>
            $query
                ->where( 'title', 'like', '%' . $search . '%' )
                ->orwhere( 'body', 'like', '%' . $search . '%' ) );
    }

}
