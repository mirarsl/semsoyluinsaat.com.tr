@extends('master')
@section('content')
    <main class="main-root">
        <div id="dsn-scrollbar">
            <header class="header-page over-hidden p-relative h-100-v dsn-header-animation">
                <div class="bg-container dsn-hero-parallax-img p-absolute top-0 w-100 h-100" data-dsn-ajax="img"
                    data-overlay="0">
                    <img class="cover-bg-img" src="{{ asset($Page->image) }}" alt="{{__('name')}}">
                </div>
                <div
                    class="dsn-container dsn-left-container h-100 d-flex flex-column justify-content-end dsn-z-index-2 p-relative">
                    <div class="content-hero  p-relative ">
                        <div class="d-grid justify-content-center grid-lg-3 d-grid-no-space">
                            <div class="item-info background-section pl-30 pr-30 pt-50 pb-50 max-w570">
                                <p class="subtitle p-relative line-shap  line-shap-after">
                                    <span class="pl-10 pr-10 background-main dsn-load-animate">{{__('index1')}}</span>
                                </p>
                                <h1 class="title-block mt-15 dsn-load-animate text-uppercase">{{__('name')}}</h1>
                            </div>
                            <div class="item-info background-section pl-30 pr-30 pt-50 pb-50 max-w570">
                                <div class="sm-title-block">{!! substr($About->getTranslatedAttribute('history'), 0, 215) !!}..</div>
                            </div>

                        </div>
                    </div>
                </div>
            </header>

            <section class="about-block section-padding over-hidden background-section">
                <div class="container">
                    <div class="d-grid grid-lg-2">
                        <div class="box-text">
                            <div class="mb-30 p-relative">
                                <h5 class="sub-heading mb-15 pb-15">{{__('index2')}}</h5>
                                <h2 class="section-title text-uppercase">{{__('index3')}}</h2>
                            </div>
                            {!! substr($About->getTranslatedAttribute('about'), 0, 500) !!}..
                        </div>
                        <div class="img-box d-grid grid-sm-2">
                            @if (!empty($About->image))
                                <div class="box-img">
                                    <div class="inner">
                                        <img src="{{ asset($About->image) }}" alt="{{__('name')}}" />
                                    </div>
                                </div>
                            @endif
                            @if (!empty($About->image2))
                                <div class="box-img d-flex flex-column justify-content-end">
                                    <div class="inner">
                                        <img src="{{ asset($About->image2) }}" alt="{{__('name')}}" />
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </section>
            @empty(!$Services)
                <div class="wrapper">
                    <section class="services section-margin">
                        <div class="container mb-70 p-relative text-center">
                            <h5 class="sub-heading mb-15 pl-20 pb-15 ml-auto mr-auto text-center">{{__('index4')}}</h5>
                            <h2 class="section-title text-uppercase">{{__('index5')}}</h2>
                        </div>
                        <div class="container">
                            <div class="d-grid grid-md-3 grid-sm-2">
                                @forelse ($Services as $service)
                                    <div class="services-item text-center">
                                        <div class="icon-img mb-25">
                                            <img src="{{ asset($service->icon) }}"
                                                alt="{{ $service->getTranslatedAttribute('title') }}">
                                        </div>
                                        <div class="contant">
                                            <h4 class="title-block mb-15">{{ $service->getTranslatedAttribute('title') }}</h4>
                                            {!! $service->getTranslatedAttribute('text') !!}
                                        </div>
                                    </div>
                                @empty
                                @endforelse
                            </div>
                        </div>
                    </section>
                @endempty
                @empty(!$Projects)
                    <section class="our-work dsn-swiper over-hidden"
                        data-dsn-option='{"slidesPerView":"auto","centeredSlides":false , "spaceBetween":60  }'>
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <div class="col-lg-4 order-lg-2">
                                    <div class="box-info mt-md-section">
                                        <div class=" p-relative sm-mb-title">
                                            <h5 class="sub-heading mb-15 pb-15">{{__('index6')}}</h5>
                                            <h2 class="section-title text-uppercase mb-30">{!!__('index7')!!}</h2>
                                            <p>{{__('index8')}}</p>
                                        </div>
                                        <div class="dsn-pagination">
                                            <div class="swiper-prev slider-button-prev">
                                                <svg class="border-svg" xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 104 104">
                                                    <defs>
                                                        <circle id="a" cx="52" cy="52" r="52" />
                                                        <mask x="0" y="0">
                                                            <path d="M0 0h104v104H0z" />
                                                            <use fill="#fff" xlink:href="#a" />
                                                        </mask>
                                                    </defs>
                                                    <use fill-opacity="0" stroke="#666" stroke-dasharray="4 6 4 6"
                                                        stroke-width="2" mask="url(#b)" xlink:href="#a" />
                                                </svg>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28.214" height="23.057"
                                                    viewBox="0 0 28.214 23.057">
                                                    <g fill="none" stroke="#3d3d3d" stroke-linecap="square"
                                                        stroke-width="1.5">
                                                        <path d="M23.528 11.685h-20M16.685 19.528l8-8-8-8" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="swiper-next slider-button-next">
                                                <svg class="border-svg" xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 104 104">
                                                    <defs>
                                                        <circle id="d" cx="52" cy="52" r="52" />
                                                        <mask x="0" y="0">
                                                            <path d="M0 0h104v104H0z" />
                                                            <use fill="#fff" xlink:href="#a" />
                                                        </mask>
                                                    </defs>
                                                    <use fill-opacity="0" stroke="#666" stroke-dasharray="4 6 4 6"
                                                        stroke-width="2" mask="url(#b)" xlink:href="#a" />
                                                </svg>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28.214 23.057">
                                                    <g fill="none" stroke="#3d3d3d" stroke-linecap="square"
                                                        stroke-width="1.5">
                                                        <path d="M23.528 11.685h-20M16.685 19.528l8-8-8-8" />
                                                    </g>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="our-work-slider section-padding sm-dsn-container ">
                                        <div class="mask-bg"></div>
                                        <div class="swiper-container" dir="rtl">
                                            <div class="swiper-wrapper">
                                                @forelse ($Projects as $project)
                                                    <div class="swiper-slide work-item">
                                                        <div class="box-img">
                                                            <img class="cover-bg-img" src="{{ asset($project->image) }}"
                                                                alt="{{ $project->getTranslatedAttribute('title') }}">
                                                        </div>
                                                        <div class="text-holder">
                                                            <a class="link effect-ajax"
                                                                href="{{ route('routes.project', $project->getTranslatedAttribute('slug')) }}"></a>
                                                            <div class="text-wrapper">
                                                                <div class="metas d-inline-block mb-10">
                                                                    <span>{{ $project->getTranslatedAttribute('type') }}</span>
                                                                    <span>{{ $project->stage == 1 ? __('project1') : __('project2') }}</span>
                                                                </div>
                                                                <h4 class="title-block text-uppercase sec-title">
                                                                    {{ $project->getTranslatedAttribute('title') }}</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @empty
                                                @endforelse
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                @endempty
                <div class="box-seat overflow-hidden">
                    @empty(!$Counter)
                        <div class="dsn-v-text">
                            <div class="box-desc pt-section" data-dsn-animate="section">
                                <div class="container">
                                    <div class="fill-right-container">
                                        <div class="row m-0">
                                            <div class="col-lg-6">
                                                <div class="left-box pr-60">
                                                    <div class="mb-30 p-relative">
                                                        <h5 class="sub-heading mb-15 pb-15">
                                                            {{__('name')}}
                                                        </h5>
                                                        <h2 class="section-title text-uppercase">
                                                            {!!__('index9')!!}
                                                        </h2>
                                                    </div>
                                                    <p class="max-w570">
                                                        {{ $Counter->first()->getTranslatedAttribute('text') }}</p>
                                                    <div class="exper mt-30">
                                                        <span class="has-animate-number">{{ $Counter->first()->count }}</span>
                                                        <h5 class="sm-title-block">
                                                            {{ $Counter->first()->getTranslatedAttribute('title') }}
                                                        </h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 pr-0 pl-0">
                                                <div class="right-box background-section section-padding pl-60 pr-60">

                                                    <div class="mb-30 p-relative">
                                                        <h5 class="sub-heading mb-15 pb-15">{{__('index10')}}</h5>
                                                        <h2 class="section-title text-uppercase">{!!__('index11')!!}</h2>
                                                    </div>
                                                    @for ($i = 1; $i < count($Counter); $i++)
                                                        <div class="fact-item d-flex">
                                                            <div class="number d-flex align-items-center mr-15">
                                                                <span
                                                                    class="title has-animate-number">{{ $Counter[$i]->count }}</span>
                                                                <span class="sm-title-block">+</span>
                                                            </div>
                                                            <div class="text">
                                                                <h4 class="title-block mb-15">
                                                                    {{ $Counter[$i]->getTranslatedAttribute('title') }}</h4>
                                                                <p>{{ $Counter[$i]->getTranslatedAttribute('text') }}</p>
                                                            </div>
                                                        </div>
                                                    @endfor
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endempty
                    @empty(!$News)
                        <div class="our-blog p-relative">
                            <div class="container mb-70 p-relative">
                                <h5 class="sub-heading mb-15 pb-15">{{__('index12')}}</h5>
                                <h2 class="section-title text-uppercase">{{__('index13')}}</h2>
                            </div>
                            @forelse ($News as $new)
                                <div class="blog-item-list p-relative section-padding">
                                    <div class="background-hover p-absolute" data-overlay="8">
                                        <img class="cover-bg-img" src="{{ asset($new->image) }}"
                                            alt="{{ $new->getTranslatedAttribute('title') }}">
                                    </div>
                                    <div class="container blog-item-inner d-flex p-relative">
                                        <div class="left-box">
                                            <a href="{{ route('routes.news', $new->getTranslatedAttribute('slug')) }}">
                                                <h4 class="title-block text-uppercase">
                                                    {{ $new->getTranslatedAttribute('title') }}</h4>
                                            </a>
                                            <div class="link d-flex mt-15">
                                                <span>{{ $new->created_at->diffForHumans() }}</span>
                                            </div>
                                        </div>
                                        <div class="right-box">
                                            <p class="max-w570">
                                                {!! substr(strip_tags($new->getTranslatedAttribute('text')), 0, 250) !!}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            @empty
                            @endforelse
                        </div>
                    @endempty

                    <section class="next-page section-padding background-section">
                        <div class="container">
                            <div class="d-grid grid-sm-2">
                                @if (!empty($About->image3))
                                    <div class="box-img">
                                        <div class="box-img-inner">
                                            <img src="{{ asset($About->image3) }}" alt="{{__('name')}}">
                                        </div>
                                    </div>
                                @endif

                                <div class="box-content d-flex flex-column justify-content-center ">
                                    <div class="box-content-inner">
                                        <h2 class="heading-h2 text-uppercase mb-30">{{__('index14')}}</h2>
                                        <p>{{__('index15')}}</p>
                                        <a href="{{route('routes.page',__('link5'))}}" class="main-btn effect-ajax mt-30">
                                            <span class="text">{{__('menu5')}}</span>
                                            <span class="line-btn line-btn-top-left"></span>
                                            <span class="line-btn line-btn-top-right"></span>
                                            <span class="line-btn line-btn-bottom-left"></span>
                                            <span class="line-btn line-btn-bottom-right"></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            @endsection
