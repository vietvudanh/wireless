<?php
 
class Attribute extends Eloquent {
 
    protected $table = 'attributes';
    public $timestamps = false;

    /**
     * one-to-many relationship
     *
     */
    public function entity(){
        return $this->belongsTo('Entity');
    }
}