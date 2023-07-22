@extends('master')
@section('content')
    <header class="header-project p-relative h-60-v over-hidden dsn-header-animation border-bottom">
        <div data-dsn-ajax="img"
            class="p-absolute dsn-hero-parallax-img transform-3d w-50 h-100 right-0 bg-container over-hidden"
            data-overlay="0">
            <img class="cover-bg-img " src="{{asset($News->image)}}" alt="">
        </div>
        <div class="dsn-container d-flex align-items-end w-50 h-100 p-relative dsn-z-index-2 pb-80 dsn-hero-parallax-title">
            <div class="content p-relative ">
                <div class="intro-project w-100" data-dsn-y="200">
                    <div class="intro-title">
                        <h1 class="p-relative line-before line-after" data-dsn-ajax="title">{{$News->getTranslatedAttribute('title')}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="wrapper">
        <section class="about section-margin mt-60">
            <div class="container mb-70 p-relative">
                <h5 class="sub-heading mb-15 pb-15">Şemsoylu İnşaat</h5>
                <h2 class="section-title text-uppercase">{{$News->getTranslatedAttribute('title')}}</h2>
            </div>
            <div class="container">
                <div class="grid-md-2">
                    <div class="box">
                        {!!$News->getTranslatedAttribute('text')!!}
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
