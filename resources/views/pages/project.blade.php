@extends('master')
@section('content')
    @php
        if (!empty($Project->gallery)) {
            $Gallery = json_decode($Project->gallery);
        }else{
            $Gallery = [];
        }
        
    @endphp
    <header class="header-project p-relative h-100-v over-hidden dsn-header-animation v-dark-head">
        <div data-dsn-ajax="img" class="p-absolute dsn-hero-parallax-img transform-3d w-100 h-100 bg-container over-hidden"
            data-overlay="7">
            <img class="cover-bg-img " src="{{ asset($Project->image) }}" alt="{{__('name')}}">
        </div>
        <div
            class="container d-flex align-items-center justify-content-center text-center h-100 p-relative dsn-z-index-2 pb-80">
            <div class="content p-relative dsn-hero-parallax-fill">
                <div class="intro-project w-100">
                    <div class="intro-title">
                        <div class="metas d-inline-block mb-25">
                            <span>{{ $Project->getTranslatedAttribute('type') }}</span>
                            <span>{{ $Project->stage == 1 ? __('project1') : __('project2') }}</span>
                        </div>
                        <div class="hero-title dsn-load-animate ">
                            <div class="d-inline-block">
                                <h1 class="title" data-dsn-ajax="title">{{ $Project->getTranslatedAttribute('title') }}
                                </h1>
                                <h5 class="title title-fill ">{{ $Project->getTranslatedAttribute('title') }}</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="wrapper">
        <div class="about-project border-bottom section-padding">
            <div class="container">
                <div class="d-grid grid-1-half grid-md-1">
                    <div class="box-text">
                        <div class="mb-30 p-relative">
                            <h5 class="sub-heading mb-15 pb-15">{{__('name')}}</h5>
                            <h2 class="section-title text-uppercase">{{ $Project->getTranslatedAttribute('title') }}</h2>
                        </div>
                        <p class="sm-title-block">{{ $Project->getTranslatedAttribute('spot') }}</p>
                    </div>
                    <div class="list-info-project border-left pl-30 h-100">
                        <ul>
                            <li>
                                <h5 class="sm-title-block mb-5">{{__('project3')}}</h5>
                                <span>{{ $Project->getTranslatedAttribute('type') }}</span>
                            </li>
                            <li>
                                <h5 class="sm-title-block mb-5">{{__('project4')}}</h5>
                                <span>{{ $Project->stage == 1 ? __('project1') : __('project2') }}</span>
                            </li>
                            @if($Project->video != "")
                            <li>
                                <span>
                                     <h5 class="sm-title-block mb-5">Tanıtım Filmi</h5>
                                     <div id="video" >
                                        <video width="100%" height="auto" controls="controls">
                                            <source src="{{asset($Project->video)}}" type="video/mp4">
                                            <source src="{{asset($Project->video)}}" type="video/ogg">
                                            <source src="{{asset($Project->video)}}" type="video/webm">
                                            Tarıyıcınız video dosyası desteklemiyor.
                                        </video>
                                    </div>
                                </span>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        @if (count($Gallery) > 3)
            <div class="section-margin has-popup over-hidden p-relative">
                <div class="dsn-container">
                    <div class="d-grid grid-md-3  over-hidden">
                        @for ($i = 0; $i < 3; $i++)
                            <a href="{{ asset($Gallery[$i]) }}" class="p-relative over-hidden d-flex">
                                <img src="{{ asset($Gallery[$i]) }}" alt="{{__('name')}}" class="cover-bg-img">
                            </a>
                        @endfor
                    </div>
                </div>
            </div>
        @endif
        <div class="description-project section-padding has-popup over-hidden p-relative v-light">
            <div class="dsn-container">
                <div class="d-grid grid-md-2  over-hidden">
                    <div class="">
                        <div class="mb-70 p-relative">
                            <h5 class="sub-heading mb-15 pb-15">{{__('name')}} </h5>
                            <h2 class="section-title text-uppercase">
                                <strong>{{ $Project->getTranslatedAttribute('title') }}</strong>
                            </h2>
                        </div>
                        <h4 class="title-block mb-30">{{__('project5')}}</h4>
                        <div class="sm-title-block max-w570">
                            {!! $Project->getTranslatedAttribute('text') !!}
                        </div>
                    </div>
                    @if (count($Gallery) >= 6)
                        @for ($i = 3; $i < 6; $i++)
                            <a href="{{ asset($Gallery[$i]) }}" class="p-relative over-hidden h-v-60 d-flex">
                                <img src="{{ asset($Gallery[$i]) }}" alt="{{__('name')}}" class="cover-bg-img">
                            </a>
                        @endfor
                    @endif

                </div>
            </div>
        </div>
        @isset($Gallery[6])
            <div class="container-fluid">
                <div class="img-box-small dsn-parallax-full parallax-responsive" data-dsn-grid="move-up">
                    <img src="{{ asset($Gallery[6]) }}" alt="{{__('name')}}">
                    <div class="cap">
                        <span>{{ $Project->getTranslatedAttribute('title') }}</span>
                    </div>
                </div>
            </div>
        @endisset
        @if (count($Gallery) >= 10)
            <div class="section-margin has-popup over-hidden p-relative">
                <div class="dsn-container">
                    <div class="d-grid grid-md-2  over-hidden">
                        @for ($i = 7; $i < count($Gallery); $i++)
                            <a href="{{ asset($Gallery[$i]) }}" class="p-relative over-hidden h-v-60 d-flex">
                                <img src="{{ asset($Gallery[$i]) }}" alt="{{__('name')}}" class="cover-bg-img">
                            </a>
                        @endfor
                    </div>
                </div>
            </div>
        @endif
        @if (!empty($Next))
            <div class="next-project section-padding p-relative  background-section">
                <div data-dsn-ajax="img" class="p-absolute dsn-hero-parallax-img transform-3d bg-container over-hidden "
                    data-overlay="5">
                    <img class="cover-bg-img " src="{{ asset($Next->image) }}"
                        alt="{{ $Next->getTranslatedAttribute('title') }}">
                </div>
                <div class="dsn-container dsn-z-index-2 p-relative h-100">
                    <div class=" p-relative h-100 d-flex flex-column">
                        <div class="intro-project w-100 h">
                            <div class="intro-title text-center">
                                <div class="metas d-inline-block mb-25 ml-auto mr-auto ">
                                    <span>{{ $Next->getTranslatedAttribute('type') }}</span><span>{{ $Project->stage == 1 ? __('project1') : __('project2') }}</span>
                                </div>
                                <div class="hero-title">
                                    <a href="{{ route('routes.project', $Next->getTranslatedAttribute('slug')) }}"
                                        class="d-inline-block effect-ajax">
                                        <h3 class="title" data-dsn-ajax="title">
                                            {{ $Next->getTranslatedAttribute('title') }} </h3>
                                        <h5 class="title title-fill " data-dsn-ajax="title">
                                            {{ $Next->getTranslatedAttribute('title') }}</h5>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

    </div>
@endsection
@section('lang')
    @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
        <li>
            <a rel="alternate" hreflang="{{ $localeCode }}"
                href="{{ LaravelLocalization::getURLFromRouteNameTranslated($localeCode, 'routes.project', ['slug'=>$Project->getTranslatedAttribute('slug',$localeCode)]) }}">
                <span class="dsn-title-menu">{{ $properties['native'] }}</span>
                <span class="dsn-meta-menu">{{ $localeCode }}</span>
            </a>
        </li>
    @endforeach
@endsection