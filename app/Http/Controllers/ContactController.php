<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Models\Contact;
// use App\Models\Student;


use Session;


class ContactController extends Controller
{
    public function home(Request $request)
    {
        $request->validate([

            'name'=>'required',
            'email'=>'required',
            'phone'=>'required',
            'address'=>'required',
            'image' =>'required|image|mimes:jpeg,png,jpg,gif,svg',
        ]);
        
        // dd($request->all());

        $user_id =$request->session()->get('id');
        //dd($user_id);

        $ext =$request->image->extension();
        $unique_name =time().'.'.$ext;
        // dd($unique_name);
      
        $name =$request->name;
        $email =$request->email;
        $phone =$request->phone;
        $address =$request->address;
        $image =$request->image->storeAs('public/images', $unique_name);
        // dd($image);
        $author_id =$user_id;
        

        $contact = new Contact();

        $contact ->name = $name;
        $contact ->email = $email;
        $contact ->phone = $phone;
        $contact ->address = $address;
        $contact ->image =$unique_name;
        $contact ->author_id =$author_id; 

      $save = $contact->save();

      if($save){

        return redirect()->back()->with('success', 'Data inserted successfully');
      } 

      return redirect()->back();

        
    }

    public function contact_list(Request $request,$id=null )
    {
        $user_id = $request->session()->get('id');

        // dd($user_id);

        // $contact =Contact::all();
               
        

        if($user_id){
                
            //$contact =Contact::all();
            $contact =Contact::where(['author_id' => $user_id])->paginate(5);
            
           
            return view('pages.contact_list',['data' => $contact]);
        
        }
        
        return redirect('/dashboard')->with('error', 'something went wrong ,please try later');
    }

    public function delete_contact(Request $request, $id=null)
    {
      
     $contact = Contact::find($id);
    //  dd($contact->user);
     if($contact){

        $contact ->delete();
        $request->session()->flash('success','deleted successfully');

     }

     return redirect()->back();

    }

    public function edit_contact(Request $request, $id=null)
    {
       $session_msg =$request->session()->get('success');
       $contact =false;
       //dd($id);

       if($id){

        $contact = Contact::find($id);
        //dd($contact);

       }

       return view('pages.edit_contact',['data' => $contact, 'success' => $session_msg]);

    }

    public function contact_update(Request $request)
    {
        // dd($request->all());
        $request->validate([
            
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'image' =>'required|image|mimes:jpeg,png,jpg,gif,svg',
            'address' => 'required',
        ]);

        $id =$request->id;
        //dd($id);
        $ext =$request->image->extension();
        $unique_name =time().'.'.$ext;
        $image =$request->image->storeAs('public/images', $unique_name);

        $contact = Contact::find($id);
        //dd($contact);

        if($id){

            $contact->name =$request->input('name');
            $contact->email =$request->input('email');
            $contact->phone =$request->input('phone');
            $contact->image =$unique_name;
            $contact->address =$request->input('address');

            $contact ->save();
            
        }
        
        return redirect('/edit/contact/'.$id)->with('success', 'updated successfully');

    }
}
