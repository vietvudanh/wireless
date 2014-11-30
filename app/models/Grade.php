<?php
 
class Grade extends Eloquent {
 
    protected $table = 'grades';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function chapters(){
        return $this->hasMany('Chapter');
    }
}