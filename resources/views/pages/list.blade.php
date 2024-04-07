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
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Father name</th>
      <th scope="col">Mother name</th>
      <th scope="col">Blood group</th>
      <th scope="col">Action</th>


    </tr>
  </thead>
  <tbody>
   <?php foreach($data as $key => $val){ ?>
    <tr>
        <th><?php echo $val['id']; ?></th>
        <th><?php echo $val['name']; ?></th>
        <th><?php echo $val['email']; ?></th>
        <th><?php echo $val['phone']; ?></th>
        <th><?php echo $val['f_name']; ?></th>
        <th><?php echo $val['m_name']; ?></th>
        <th><?php echo $val['b_group']; ?></th>
        <th>
            <a href="/delete/<?php echo $val['id']; ?>" type="button" class="btn btn-danger">Delete</a>
            <a href="/edit/<?php echo $val['id']; ?>" type="button" class="btn btn-info">Edit</a>

        </th>
    </tr>
    <?php } ?>
  </tbody>
</table>

{{$data->links()}}



</section>

@stop