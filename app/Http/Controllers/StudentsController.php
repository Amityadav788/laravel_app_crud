<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use session;

class StudentsController extends Controller
{
   /* public function register()
    {
         return view('pages.students-form');
    }
    */

    public function save(Request $request)
    {
       
        //dd($request->all());
       
        

        $request->validate([
            'name' =>' required',
            'email' => ['required','unique:students','email','max:255'],
            'password' =>'required',
            'phone' =>'required',
            'f_name' =>'required',
            'm_name' =>'required',
            'b_group' =>'required',

        ]);

        $name =$request->name;
        $email =$request->email;
        $password =$request->password;
        $phone =$request->phone;
        $f_name =$request->f_name;
        $m_name =$request->m_name;
        $b_grp =$request->b_group;

       $student = new Student();
       
       $student->name = $name;
       $student->email = $email;
       $student->password = $password;
       $student->phone = $phone;
       $student->f_name = $f_name;
       $student->m_name = $m_name;
       $student->b_group = $b_grp;

       $id = $student->save();

       if($id){

        return redirect()->back()->with('success','Inserted Successfully');
       }

       return redirect()->back()->with('error','Something went wrong. Please try again!');

    }

    public function list(){

        $student = Student::paginate(4);
        return view('pages.list',['data' => $student]);
       

    }

    public function delete(Request $request,$id=null)
    {
        $student = Student::find($id);
        if($student){
            $student->delete();
            $request->session()->flash('success','deleted sucessfully');

        }
        return redirect()->back();
    }

    public function edit(Request $request,$id=null)
    {
        $success_msg = $request->session()->get('success');
        $student = false;

        if($id){

        $student = Student::find($id);
        
        }
        return view('pages.edit',['data' => $student ,'success' => $success_msg]);
        
        
    }

    public function update(Request $request)
    {

       $request->validate([
            
            'name' =>'required',
            'email' =>'required',
            'password' =>'required',
            'phone' =>'required',
            'f_name' =>'required',
            'm_name' =>'required',
            'b_group' =>'required',

       ]);
       $id =$request->id;
       //dd($id);
       $student = Student::find($id);
       //dd($student);

       if($id){

       $student->name =$request->input('name');
       $student->email =$request->input('email');
       $student->phone =$request->input('phone');
       $student->f_name =$request->input('f_name');
       $student->m_name =$request->input('m_name');
       $student->b_group =$request->input('b_group');

       $student->save();
           
       }

       return redirect('/edit/'.$id)->with('success', 'updated successfully');


    }

    public function login()
    {
        return view('pages.login');
    }

    public function user_login(Request $request)
    {
        //dd($request->all());
      
        $request->validate([
            
            'email' => 'required',
            'password' => 'required',
        ]);

        $email =$request->email;
        $password=$request->password;

        $student = Student::where(['email'=>$email, 'password'=>$password])->first();

        if($student){

            $request->session()->put('id' ,$student->id);
            //dd($request);
            $request->session()->flash('success','logged in successfully'); 
            return redirect('/dashboard');


        } 

       return redirect()->back()->with('error','Invalid request');
        
    }

    public function dashboard()
    {
       return view('pages.dashboard');
    }

    public function logout(Request $request)
    {
        $request->session()->flush();
        return redirect('/login');
    }


}
