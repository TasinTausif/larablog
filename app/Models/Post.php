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

    //Query scope to search in homepage
    public function scopeFilter( $query, array $filters ) {

        $query->when( $filters['search'] ?? false, fn( $query, $search ) =>
            $query->where( fn( $query ) =>
                $query
                    ->where( 'title', 'like', '%' . $search . '%' )
                    ->orwhere( 'body', 'like', '%' . $search . '%' )
            )
        );

        /*
        $query->when( $filters['category'] ?? false, fn( $query, $category ) =>
        $query
        ->whereExists( fn( $query ) =>
        $query->from( 'categories' )
        ->whereColumn( 'categories.id', 'posts.category_id' )
        ->where( 'categories.slug', $category )
        )
        );
         */

        $query->when( $filters['category'] ?? false, fn( $query, $category ) =>
            $query->whereHas( 'category', fn( $query ) =>
                $query->where( 'slug', $category )
            )
        );

        $query->when( $filters['author'] ?? false, fn( $query, $author ) =>
            $query->whereHas( 'author', fn( $query ) =>
                $query->where( 'username', $author )
            )
        );
    }

    //Creating Eloquent relationship
    public function category() {
        return $this->belongsTo( Category::class ); //Since their relationship is belongsto
    }

    public function author() {
        return $this->belongsTo( User::class, 'user_id' );
    }

    public function comments() {
        return $this->hasMany( Comment::class );
    }

}
