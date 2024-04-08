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

<form method="POST" action="{{ route('students.add') }}" enctype="multipart/form-data">
<div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="name" value="{{old('name')}}"  placeholder="Enter name">
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}"  placeholder="Enter email">
    @error('email')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" name="password" value="{{old('password')}}"  placeholder="Enter password">
    @error('password')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="number" class="form-control" id="phone" name="phone" value="{{old('phone')}}"  placeholder="Enter Phone">
    @error('phone')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="f_name">Father name</label>
    <input type="text" class="form-control" id="f_name" name="f_name" value="{{old('f_name')}}"  placeholder="Enter name">
    @error('f_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
   <div class="form-group">
    <label for="m_name">Mother name</label>
    <input type="text" class="form-control" id="m_name" name="m_name" value="{{old('m_name')}}"  placeholder="Enter name">
    @error('m_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="image">Image</label>
    <input type="file" class="form-control" id="image" name="image" value="{{old('image')}}"  placeholder="Upload image">
    @error('image')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label for="b_group">Blood group</label>
    <input type="text" class="form-control" id="b_group" name="b_group" value="{{old('b_group')}}"  placeholder="Enter Blood group">
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