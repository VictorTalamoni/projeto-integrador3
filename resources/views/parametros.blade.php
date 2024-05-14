@extends('layouts.main')
@section('title', 'Pessoas')
@section('pagina', 'Pessoas')
@section('nav1', 'Página Inicial')
@section('nav2')
/
@stop

@section('content')

@if($busca != '')
<p> teste: {{$busca}}  </p>
@endif
@endsection