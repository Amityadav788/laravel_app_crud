@extends('layout.default')
@section('content')

<section>
    <h2>Students Details</h2>
    @if(Session::has('success'))

<div class="alert alert-success">

    {{Session::get('success')}}
</div>
@endif

    <p></p>

<form method="POST" action="{{route('student.update')}}">

<div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="name" value="{{ $data->name }}" placeholder="Enter name">
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" name="email" value="{{ $data->email }}" placeholder="Enter email">
    @error('email')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" name="password" value="{{ $data->password }}" placeholder="Enter password">
    @error('password')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="number" class="form-control" id="phone" name="phone" value="{{ $data->phone }}" placeholder="Enter Phone">
    @error('phone')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="f_name">Father name</label>
    <input type="text" class="form-control" id="f_name" name="f_name" value="{{ $data->f_name }}" placeholder="Enter name">
    @error('f_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
   <div class="form-group">
    <label for="m_name">Mother name</label>
    <input type="text" class="form-control" id="m_name" name="m_name" value="{{ $data->m_name }}" placeholder="Enter name">
    @error('m_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="b_group">Blood group</label>
    <input type="text" class="form-control" id="b_group" name="b_group" value="{{ $data->b_group }}" placeholder="Enter Blood group">
    @error('b_group')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>


</section>

@stop