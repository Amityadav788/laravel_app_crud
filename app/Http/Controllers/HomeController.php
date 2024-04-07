<?php

namespace App\Http\Controllers;
use App\Models\Student;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function register(){

        return view('pages.students-form');

    }

    public function save(Request $request){

        $f_name = $request->f_name;
        $l_name =$request->l_name;
        $email =$request->email;
        $pass =$request->password;
        $address =$request->address;

        echo $f_name."<br>";
        echo $l_name."<br>";
        echo $email."<br>";
        echo $pass."<br>";
        echo $address."<br>"; 

        $request->validate([

            'f_name' => 'required',
            'l_name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'phone' => 'required',
            'address' => 'required',

        ]);

        $request->session()->flash('success','form submitted successfully');
        //return back();

    }

    public function addition(Request $request){

        $output= $request->all();
        
        
        //dd($request->all());
        $request->validate([
            'number1' => 'required|max:255',
            'number2' => 'required',
            
        ]);

        $num1 = $request->number1;
        $num2 = $request->number2;

        $addition = $num1 + $num2;
     
        $request->session()->flash('success',$addition);
        return back();

    
        }

        /*public function list(){

            $student = Student::all();
            return view('pages.list');
    
        }
        */  
        
       /* public function login()
        {
            return view('pages.login');
        }

        */

    }

