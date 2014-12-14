<?php

class ImageController extends \BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        
        $images = Image::all();
        
        return Response::json(array(
                'error' => false,
                'images' => $images            
                ),
            200
        );
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
        return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
    }


    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        if(Request::isMethod('post')){
            $file = Input::file('image');
            $destinationPath = public_path().'/images/';
            $filename = $file->getClientOriginalName();
            Input::file('image')->move($destinationPath, $filename);
            
            $image = new Image;
            $image->img = URL::to('/') . '/images/'. $filename;
            $image->chapter_id = Input::get('chapter_id');
            $image->save();
            
            return Response::json(array(
                    'error' => false,
                    'image' => $image
                ),
                200
            );
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
        return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
        return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        //
        return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
        return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
    }


}
