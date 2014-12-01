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
     * has-One relationship
     *
     */
    public function chapter(){
        return $this->belongsTo('Chapter');
    }
    public function history(){
        return $this->belongsTo('History');
    }

    /**
     * one-to-many relationship
     *
     */
    public function entities(){
        return $this->belongsToMany('Entity', 'question_entity', 'question_id','entity_id');
    }
}