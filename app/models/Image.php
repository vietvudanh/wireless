<?php
 
class Image extends Eloquent {
 
    protected $table = 'images';
    
    public function setImgAttribute($value)
    {
        $spl = explode(' ', $value);
        $name = implode('_', $spl);
        $tmp = URL::to('/').'/images/'.$name;
        $this->attributes['img'] = $tmp;
    }
}