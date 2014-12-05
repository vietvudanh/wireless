<?php

class QuestionController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
    {
        // request using chapter id
    	if (Input::get('chapter_id') != null){
            $questions = Question::with(array(
                'chapter', 
                'chapter.grade', 
                'entities' => function($e){
                    $e->orderBy(DB::raw('RAND()'))->take(1);
                }, 
                'entities.attributes' => function($ea){
                    $ea->orderBy(DB::raw('RAND()'))->take(1);
                }, 
                'variables' => function($v){
                    $v->orderBy(DB::raw('RAND()'))->take(1);
                }, 
                'variables.answers'
                ))
                ->where('chapter_id', '=', Input::get('chapter_id'))
                ->orderBy(DB::raw('RAND()'))
                ->take(1)
                ->get();

            if(count($questions) == 0){
                return Response::json(array(
                    'error' => false,
                    'message' => 'questions not found',
                    'questions' => $questions),
                    404
                );
            } else
                return Response::json(array(
                    'error' => false,
                    'questions' => $questions),
                    200
                );
    	}
        // request using grade id
        if (Input::get('grade_id') != null){
            $questions = DB::table('questions')
                        ->join('chapters', 'questions.chapter_id', '=', 'chapters.id')
                        ->join('grades', 'chapters.grade_id', '=', 'grades.id')
                        ->get();

            if(count($questions) == 0){
                return Response::json(array(
                    'error' => false,
                    'message' => 'questions not found',
                    'questions' => $questions),
                    404
                );
            } else
                return Response::json(array(
                    'error' => false,
                    'questions' => $questions),
                    200
                );
        }

        // no specify at all
        $questions = Question::all();
    
        $questions->load('chapter');
        foreach($questions as $question) $question->chapter->load('grade');

        $questions->load('entities');
        foreach($questions as $question) $question->entities->load('attributes');

        $questions->load('variables');
        foreach($questions as $question) $question->variables->load('answers');

        return Response::json(array(
            'error' => false,
            'questions' => $questions),
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
		//
		return Response::json(array(
				'error' => true,
				'message' => 'service not available'
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
        $question = Question::find($id)->with('variables', 'entities');

        return Response::json(array(
            'error' => false,
            'question' => $question),
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
