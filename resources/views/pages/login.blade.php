@extends('layout.default')
@section('content')


<section>
    <h2>LOGIN</h2>


@if(Session::has('error'))

<div class="alert alert-danger">

    {{Session::get('error')}}
</div>
@endif

<form class="container" action="{{route('user.login')}}">
 <div class="form-group"> 
 <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control col-md-3" id="email" name="email" value="{{old('email')}}" placeholder="Enter email">
    @error('email')
  <div class="alert alert-danger">{{ $message }}</div>
  @enderror  
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control col-md-3" id="password" name="password" value="{{old('password')}}" placeholder="Enter password">
    @error('password')
  <div class="alert alert-danger">{{ $message }}</div>
  @enderror
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
 </div>
</form>


</section>

@stop