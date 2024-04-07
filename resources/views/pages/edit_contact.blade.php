@extends('layout.default')
@section('content')


<section>

@if(Session::has('success'))

<div class="alert alert-success">

    {{Session::get('success')}}
</div>
@endif

@if(Session::has('error'))

<div class="alert alert-danger">

    {{Session::get('error')}}
</div>
@endif

<div class="container">
    <h2>Add contact</h2>

    <form  method="POST" action="{{route('contact.update')}}">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" value="{{$data->name}}">
      @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    </div>
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="{{$data->email}}">
      @error('email')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    </div>
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
  <div class="form-group col-md-6">
      <label for="phone">Phone</label>
      <input type="number" class="form-control" id="phone" placeholder="Enter phone" name="phone" value="{{$data->phone}}">
      @error('phone')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    </div>
    <div class="form-group col-md-6">
      <label for="address">Address</label>
      <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" value="{{$data->address}}">
      @error('address')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    </div>
    <input type="hidden" id="name" name="id" value="{{$data->id}}">
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
</div>

</section>

@stop