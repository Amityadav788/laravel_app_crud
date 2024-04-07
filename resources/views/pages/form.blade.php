@extends('layout.default')
@section('content')

<section>
   
    <h2>Registration form</h2>

    @if(Session::has('success'))

    <div class="alert alert-success">

        {{Session::get('success')}}
    </div>
@endif
    <p></p>
   
    <div class="container">
    <form method="POST" action="{{ route('user.save') }}">
    <div class="mb-3">
    <label for="f_name" class="form-label">first name</label>
    <input type="text" class="form-control" id="f_name" value="{{old('f_name')}}" name="f_name">
    @error('f_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    <div id="f_name" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="l_name" class="form-label">Last name</label>
    <input type="text" class="form-control" id="l_name" value="{{old('l_name')}}" name="l_name">
    @error('l_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    <div id="l_name" class="form-text"></div>
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
  <div class="mb-3">
    <label for="email" class="form-label">Email:</label>
    <input type="email" class="form-control" id="email" value="{{old('email')}}" name="email">
    @error('email')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    <div id="email" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" value="{{old('password')}}" name="password">
    @error('password')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="mb-3">
    <label for="phone" class="form-label">Phone</label>
    <input type="number" class="form-control" id="phone" value="{{old('phone')}}" name="phone">
    @error('phone')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    <div id="number" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" id="address" value="{{old('address')}}" name="address">
    @error('address')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    <div id="address" class="form-text"></div>
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

    </div>
</section>

@stop
