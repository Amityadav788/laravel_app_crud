<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Models\Contact;

use Session;


class ContactController extends Controller
{
    public function home(Request $request)
    {
        //dd($request->all());
        $request->validate([

            'name'=>'required',
            'email'=>'required',
            'phone'=>'required',
            'address'=>'required',
        ]);

        $user_id =$request->session()->get('id');
        //dd($user_id);
      
        $name =$request->name;
        $email =$request->email;
        $phone =$request->phone;
        $address =$request->address;
        $author_id =$user_id;
        

        $contact = new Contact();

        $contact ->name = $name;
        $contact ->email = $email;
        $contact ->phone = $phone;
        $contact ->address = $address;
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
        
        //dd($user_id);

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
        //dd($request->all());
        $request->validate([
            
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'address' => 'required',
        ]);

        $id =$request->id;
        //dd($id);

        $contact = Contact::find($id);
        //dd($contact);

        if($id){

            $contact->name =$request->input('name');
            $contact->email =$request->input('email');
            $contact->phone =$request->input('phone');
            $contact->address =$request->input('address');

            $contact ->save();
            
        }
        
        return redirect('/edit/contact/'.$id)->with('success', 'updated successfully');

    }
}
