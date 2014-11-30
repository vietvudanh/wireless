<?php
 
class Question extends Eloquent {
 
    protected $table = 'questions';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function variables(){
        return $this->hasMany('Variable');
    }

    /**
     * one-to-many relationship
     *
     */
    public function chapter(){
        return $this->belongsTo('Chapter');
    }

    /**
     * has-One relationship
     *
     */
    public function entity(){
        return $this->hasOne('Entity');
    }
}