<?php
 
class QuestionEntity extends Eloquent {
 
    protected $table = 'question_entity';
    public $timestamps = false;
 
    /**
     * many to many relationship
     *
     */
    public function question(){
        return $this->belongsTo('Question');
    }
    public function entity(){
        return $this->belongsTo('Entity');
    }
}