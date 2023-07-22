@extends('master')
@section('content')
    <header class="header-page over-hidden p-relative header-padding-top header-padding-bottom dsn-header-animation">
        <div class="bg-circle-dotted"></div>
        <div class="container">
            <div class="content-hero p-relative d-flex flex-column h-100 dsn-hero-parallax-fill">
                <p class="subtitle p-relative line-shap  line-shap-after">
                    <span class="pl-10 pr-10 background-section dsn-load-animate">Şemsoylu İnşaat</span>
                </p>
                <div class="hero-title mt-30 dsn-load-animate text-transform-upper ">
                    <div class="d-inline-block">
                        <h1 class="title" data-dsn-ajax="title">
                            {{ $Page->getTranslatedAttribute('title') }}
                        </h1>
                        <h5 class="title title-fill ">
                            {{ $Page->getTranslatedAttribute('title') }}
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="wrapper">
        @switch($Page->slug)
            @case('hakkimizda')
                @include('modules.about')
            @break

            @case('projeler')
                @include('modules.projects')
            @break

            @case('haberler')
                @include('modules.news')
            @break

            @case('iletisim')
                @include('modules.contact')
            @break

            @default
                @include('modules.default')
            @break
        @endswitch
    </div>
@endsection
