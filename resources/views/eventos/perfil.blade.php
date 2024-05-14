@extends('layouts.main')
@section('title', $pessoas->cpf)
@section('pagina', 'Perfil')
@section('nav1', 'Página inicial')
@section('nav2')
/
@stop
@section('styledobody')
bg-success;
background-color: rgb(169, 250, 191);
@stop

@section('content')

<div class="container-md p-5">
    <div class="row">
        <div class=" rounded col-lg-4 height:100% bg-success text-white text-center py-4">
            <div class="header-left">
                <img src="/img/pessoas/{{$pessoas->imagem}}" width="60%" alt="{{$pessoas->cpf}}" class="img-thumbnail rounded-circle mb-2">
                <h1 class="display-6"> {{$pessoas->nome}} </h1>
            </div>
        </div>
        <div class="col-lg-8 rounded text-dark text-center py-4 px-5 " style="background-color: rgb(242, 253, 245);">
            <div class="header-right"> 
                <p> {{$pessoas->nome}} </p>
                <hr>
                <p> Número de telefone: {{$pessoas->telefone}} </p>
                <p> Número de referência: {{$pessoas->telefone_referencia}} </p>
                <p> Nome titular de referência: {{$pessoas->titular_numero_referencia}} </p>
                <hr>
                <p style="vertical-align: bottom">Posicionamento do Mapa</p>
                @if (!empty($pessoas->endereco))
                    <iframe width='75%' height='400px' src='https://maps.google.com/maps?q={{$pessoas->endereco}}&output=embed'></iframe>
                @else
                    <p>Nenhum resultado encontrado.</p>
                @endif
            </div>
        </div>
    </div>
</div>

@endsection
