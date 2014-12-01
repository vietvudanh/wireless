<?php
 
class Variable extends Eloquent {
 
    protected $table = 'vars';
    public $timestamps = false;

    /**
     * one-to-many relationship
     *
     */
    public function answers(){
        return $this->hasMany('Answer', 'var_id');
    }

    /**
     * one-to-many relationship
     *
     */
    public function question(){
        return $this->belongsTo('Question');
    }
    public function chapter(){
        return $this->belongsTo('History');
    }
}