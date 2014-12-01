<?php
 
class User extends Eloquent {
 
    protected $table = 'users';
    public $timestamps = false;
 
    /**
     * has-many relationship
     *
     */
    public function histories(){
        return $this->hasMany('History');
    }
}