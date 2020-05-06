<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Follow extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'follows';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_user',
        'id_author',
    ];

    /**
     * Disable timestamps
     */
    public $timestamps = true;

    /**
     * Relationships
     */
    public function user(){
        return $this->belongsto(User::class, 'id_user');
    }

    public function author(){
        return $this->belongsto(Author::class, 'id_author');
    }
}
