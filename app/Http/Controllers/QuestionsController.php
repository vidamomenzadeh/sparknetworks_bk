<?php

namespace App\Http\Controllers;
use App\Question;
use App\Category;
use Illuminate\Http\Request;

class QuestionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $questions = Question::all();
        foreach ($questions as $question) {
            $options =  unserialize($question->options);
            $question->options = $options;  

            $has_condition = ($question->has_condition == 0 ? true : false);
            $question->has_condition = $has_condition;   

            $condition =  unserialize($question->condition);
            $question->condition = $condition;     

            $range =  unserialize($question->range);
            $question->range = $range;          
        }        
        
        return $questions;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    
        $question = new Question([
            'title' => $request->input('title'),
            'category_id' => $request->get('category_id'),
            'type' => $request->get('type'),
            'has_condition' => $request->get('has_condition'),
            'condition'=> serialize($request->get('condition')),
            'options' => serialize($request->get('options')),
            'range' => serialize($request->get('range'))
        ]);

        $question->save();        
        return response()->json($question, 200);    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
