@extends('layout.default')
@section('content')

<section>

@if(Session::has('success'))

<div class="alert alert-success">

    {{Session::get('success')}}
</div>
@endif

<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Address</th>
      <th scope="col">Author Name</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
     @foreach($data as $key => $val)
        <tr>
           <th>{{$val->id}}</th>
           <th>{{$val->name}}</th>
           <th>{{$val->email}}</th>
           <th>{{$val->phone}}</th>
           <th>{{$val->address}}</th>
           <th>{{$val->user->name}}</th>
           <th>
            <a href="/delete/contact/{{$val->id}}" type="button" class="btn btn-danger">Delete</a>
            <a href="/edit/contact/{{$val->id}}" type="button" class="btn btn-info">Edit</a>
           </th>
        </tr>
    @endforeach
  </tbody>
</table>

{{$data->links()}}

</section>

@stop