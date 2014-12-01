<?php
 
class History extends Eloquent {
 
    protected $table = 'histories';
    public $timestamps = false;
 
    /**
     * has-one relationship
     *
     */
    public function variable(){
        return $this->belongsTo('Variable');
    }
    public function user(){
        return $this->belongsTo('User');
    }
    public function question(){
        return $this->belongsTo('Question');
    }
}