<?php
 
class Chapter extends Eloquent {
 
    protected $table = 'chapters';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function questions(){
        return $this->hasMany('Question');
    }

    /**
     * one-to-many relationship
     *
     */
    public function grade(){
        return $this->belongsTo('Grade');
    }
}