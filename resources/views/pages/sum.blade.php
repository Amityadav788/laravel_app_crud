@extends('layout.default')
@section('content')

<section>
<h2></h2>

@if(Session::has('success'))

    <div class="alert alert-success">

        {{Session::get('success')}}
    </div>
@endif



<form method="POST" action="{{ route('user.addition') }}">
  <div class="form-group col-md-4">
    <label for="number1">Number1</label>
    <input type="number" class="form-control" id="number1" name="number1" value="{{old('number1')}}" placeholder="Enter number">
    @error('number1')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
  <div class="form-group col-md-4">
    <label for="number2">Number2</label>
    <input type="number" class="form-control" id="number2" name="number2" value="{{old('number2')}}" placeholder="Enter number">
    @error('number2')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</section>

@stop