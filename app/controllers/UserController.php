<?php

class UserController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$users = User::all();

		return Response::json(array(
                'error' => false,
                'users' => $users
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
        if(Input::get('username') != null 
            && Input::get('password') != null
            && Input::get('school_name') != null
            && Input::get('class_name') != null
            && Input::get('date_of_birth') != null ){
            $user = new User;

            $user->username = Input::get('username');
            $user->password = md5(Input::get('password'));
            $user->school_name = Input::get('school_name');
            $user->class_name = Input::get('class_name');
            $user->date_of_birth = date('Y-m-d', strtotime(Input::get('date_of_birth')));

            $user->save();

            return Response::json(array(
                    'error' => false,
                    'user' => $user
                ),
                200
            );
        }
        
		return Response::json(array(
                'error' => true,
                'message' => 'some parameters are missing'
            ),
            404
        );
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$user = User::find($id);

		return Response::json(array(
                'error' => false,
                'user' => $user
            ),
            200
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
		return Response::json(array(
                'error' => true,
                'message' => 'service not available'
            ),
            404
        );
	}


}
