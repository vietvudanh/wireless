<?php
 
class Answer extends Eloquent {
 
    protected $table = 'answers';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function variable(){
        return $this->belongsTo('Variable');
    }
}