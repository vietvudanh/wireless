<?php
 
class Entity extends Eloquent {
 
    protected $table = 'entities';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function attributes(){
        return $this->hasMany('Attribute');
    }
}