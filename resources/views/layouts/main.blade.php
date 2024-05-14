<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title')</title>

        <link rel="stylesheet" href="/css/css/bootstrap.min.css">
        <script src="/js/js/bootstrap.min.js"></script>

    </head>
    <body style="@yield('styledobody')">
    <nav class="navbar bg-body-tertiary">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1 " style="color: green;">@yield('pagina')</span>
    <a class="navbar-brand" href="@yield('nav2')" style= "color: green;">@yield('nav1')</a>
  </div>
</nav>
    @yield('content')
    </body>
</html>
