<!DOCTYPE html>
<html lang="__('prefix')">

<head>
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    {!! JsonLd::generate() !!}
    <base href="{{ Request::root() }}">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="preload"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;family=Poppins:wght@300;400;500;600;700&amp;display=swap"
        as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;family=Poppins:wght@300;400;500;600;700&amp;display=swap"
            rel="stylesheet">
    </noscript>

    <link rel="shortcut icon" href="{{ asset('assets/img/favicon.svg') }}" type="image/x-icon" />
    <link rel="icon" href="{{ asset('assets/img/favicon.svg') }}" type="image/x-icon" />

    <link href="{{ asset('assets/css/plugins.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    @yield('links')
</head>

<body class=" dsn-effect-scroll dsn-cursor-effect dsn-ajax classic-menu">
    <div class="preloader">
        <div class="dsnload p-absolute">
            <span class="dsnload__row">
                <span class="dsnload__img">
                    <img src="{{ asset('assets/img/logo.svg') }}" alt="">
                </span>
            </span>
            <span class="dsnload__row dsnload__row--sibling">
                <span class="dsnload__img">
                    <img src="{{ asset('assets/img/logo.svg') }}" alt="">
                </span>
            </span>
            <span class="dsnload__row dsnload__row--sibling">
                <span class="dsnload__img">
                    <img src="{{ asset('assets/img/logo.svg') }}" alt="">
                </span>
            </span>
            <span class="dsnload__row dsnload__row--sibling">
                <span class="dsnload__img">
                    <img src="{{ asset('assets/img/logo.svg') }}" alt="">
                </span>
            </span>
        </div>

        <div class="loading-circle">
            <p class="loading-count">
                <span class="percent" id="loadingNumber">0</span>
            </p>
        </div>

        <span class="loading-text text-uppercase mt-30">{{ __('loading') }} ...</span>

    </div>
    <div class="site-header dsn-load-animate dsn-container">
        <div class="extend-container d-flex w-100 align-items-baseline justify-content-between align-items-end">
            <div class="inner-header p-relative">
                <div class="main-logo">
                    <a href="{{ route('routes.homepage') }}" data-dsn="parallax">
                        <img class="light-logo" src="{{ asset('assets/img/logo.svg') }}" alt="{{ __('name') }}" />
                        <img class="dark-logo" src="{{ asset('assets/img/logo.svg') }}" alt="{{ __('name') }}" />
                    </a>
                </div>
            </div>
            <div class="menu-icon d-flex align-items-baseline">
                <div class="text-menu p-relative  font-heading text-transform-upper">
                    <div class="p-absolute text-button">{{ __('menu') }}</div>
                    <div class="p-absolute text-open">{{ __('menuOpen') }}</div>
                    <div class="p-absolute text-close">{{ __('menuClose') }}</div>
                </div>
                <div class="icon-m" data-dsn="parallax" data-dsn-move="10">
                    <span class="menu-icon-line p-relative d-inline-block icon-top"></span>
                    <span class="menu-icon-line p-relative d-inline-block icon-center"></span>
                    <span class="menu-icon-line p-relative d-block icon-bottom"></span>
                </div>
            </div>
            <nav class="accent-menu dsn-container main-navigation p-absolute  w-100  d-flex align-items-baseline ">
                <div class="menu-cover-title">{{ __('menu') }}</div>
                <ul class="extend-container p-relative d-flex flex-column justify-content-center h-100">

                    <li class="dsn-active dsn-drop-down">
                        <a href="{{ route('routes.homepage') }}" class="user-no-selection">

                            <span class="dsn-title-menu">{{ __('menu1') }}</span>
                            <span class="dsn-meta-menu">01</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                    </li>

                    <li class="dsn-drop-down">
                        <a href="{{ __('link2') }}" class="user-no-selection">

                            <span class="dsn-title-menu">{{ __('menu2') }}</span>
                            <span class="dsn-meta-menu">02</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                        <ul>
                            <li class="dsn-back-menu">
                                <img src="{{ asset('assets/img/left-chevron.svg') }}" alt="{{ __('name') }}">
                                <span class="dsn-title-menu">{{ __('menuBack') }}</span>
                            </li>
                            <li>
                                <a href="{{ route('routes.page', __('link2_1')) }}">
                                    <span class="dsn-title-menu">{{ __('menu2_1') }}</span>
                                    <span class="dsn-meta-menu">01</span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('routes.page', __('link2_2')) }}">
                                    <span class="dsn-title-menu">{{ __('menu2_2') }}</span>
                                    <span class="dsn-meta-menu">02</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="{{ route('routes.page', __('link3')) }}">
                            <span class="dsn-title-menu">{{ __('menu3') }}</span>
                            <span class="dsn-meta-menu">03</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                    </li>

                    <li>
                        <a href="{{ route('routes.page', __('link4')) }}">

                            <span class="dsn-title-menu">{{ __('menu4') }}</span>
                            <span class="dsn-meta-menu">04</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('routes.page', __('link5')) }}">
                            <span class="dsn-title-menu">{{ __('menu5') }}</span>
                            <span class="dsn-meta-menu">05</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                    </li>
                    <li class="dsn-drop-down">
                        <a href="javascript:void(0);" class="user-no-selection">

                            <span class="dsn-title-menu">{{ __('lang1') }}</span>
                            <span class="dsn-meta-menu">02</span>
                            <span class="dsn-bg-arrow"></span>
                        </a>
                        <ul>
                            <li class="dsn-back-menu">
                                <img src="{{ asset('assets/img/left-chevron.svg') }}" alt="{{ __('name') }}">
                                <span class="dsn-title-menu">{{ __('menuBack') }}</span>
                            </li>
                            @hasSection ('lang')
                                @yield('lang')
                            @else
                                @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                    <li>
                                        <a rel="alternate" hreflang="{{ $localeCode }}"
                                            href="{{ LaravelLocalization::getLocalizedURL($localeCode) }}">
                                            <span class="dsn-title-menu">{{ $properties['native'] }}</span>
                                            <span class="dsn-meta-menu">{{ $localeCode }}</span>
                                        </a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </li>
                </ul>

            </nav>
        </div>
    </div>

    @yield('content')
    <footer class="footer background-section overflow-hidden">
        <div class="container">
            <div class="fill-right-container v-dark background-main">
                <div class="row">
                    <div class="col-md-2 footer-block-item">
                        <div class="footer-block block-logo">
                            <a href="{{ route('routes.homepage') }}" class="logo-footer m-auto">
                                <img src="{{ asset('assets/img/logo.svg') }}" alt="{{ __('name') }}"
                                    class="logo-dark cover-bg-img">
                                <img src="{{ asset('assets/img/logo.svg') }}" alt="{{ __('name') }}"
                                    class="logo-light cover-bg-img">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 footer-block-item">
                        <div class="footer-block">
                            <p class="subtitle p-relative line-shap  line-shap-after mb-20">
                                <span
                                    class="pl-10 pr-10 background-section heading-color text-uppercase">{{ __('footer1') }}</span>
                            </p>
                            <p>{{ $Contact->address }}</p>
                            @empty(!$Contact->address2)
                                <p class="sm-title-block">{{ $Contact->address2 }}</p>
                            @endempty
                        </div>
                    </div>
                    <div class="col-md-3 footer-block-item">
                        <div class="footer-block col-menu">
                            <p class="subtitle p-relative line-shap  line-shap-after mb-20">
                                <span
                                    class="pl-10 pr-10 background-section heading-color text-uppercase">{{ __('footer2') }}</span>
                            </p>
                            <ul>
                                <li><a href="{{ route('routes.homepage') }}">{{ __('menu1') }}</a></li>
                                <li><a href="{{ route('routes.page', __('link2_1')) }}">{{ __('menu2_1') }}</a></li>
                                <li><a href="{{ route('routes.page', __('link2_2')) }}">{{ __('menu2_2') }}</a></li>
                                <li><a href="{{ route('routes.page', __('link3')) }}">{{ __('menu3') }}</a></li>
                                <li><a href="{{ route('routes.page', __('link4')) }}">{{ __('menu4') }}</a></li>
                                <li><a href="{{ route('routes.page', __('link5')) }}">{{ __('menu5') }}</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 footer-block-item">
                        <div class="footer-block soical-block">
                            <ul class="socials">
                                @empty(!$Social->instagram)
                                    <li>
                                        <a href="{{ $Social->instagram }}" target="_blank">
                                            <i class="fab fa-instagram"></i>
                                            <span>Ig</span>
                                        </a>
                                    </li>
                                @endempty
                                @empty(!$Social->facebook)
                                    <li>
                                        <a href="{{ $Social->facebook }}" target="_blank">
                                            <i class="fab fa-facebook"></i>
                                            <span>Fb</span>
                                        </a>
                                    </li>
                                @endempty
                                @empty(!$Social->youtube)
                                    <li>
                                        <a href="{{ $Social->youtube }}" target="_blank">
                                            <i class="fab fa-youtube"></i>
                                            <span>Yt</span>
                                        </a>
                                    </li>
                                @endempty
                                @empty(!$Social->twitter)
                                    <li>
                                        <a href="{{ $Social->twitter }}" target="_blank">
                                            <i class="fab fa-twitter"></i>
                                            <span>Tw</span>
                                        </a>
                                    </li>
                                @endempty
                                @empty(!$Social->linkedin)
                                    <li>
                                        <a href="{{ $Social->linkedin }}" target="_blank">
                                            <i class="fab fa-linkedin"></i>
                                            <span>In</span>
                                        </a>
                                    </li>
                                @endempty
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-credits  border-top pt-30 mt-30">
                    <div class="block">
                        <p class="copyright">{!! __('footer3', ['year' => date('Y'), 'URL' => 'https://instagram.com/mirarsl']) !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    </div>
    </main>
    <div class="cursor">

        <div class="cursor-helper">
            <span class="cursor-drag">{{ __('cursor1') }}</span>
            <span class="cursor-view">{{ __('cursor2') }}</span>
            <span class="cursor-open"><i class="fas fa-plus"></i></span>
            <span class="cursor-close">{{ __('cursor3') }}</span>
            <span class="cursor-play">{{ __('cursor4') }}</span>
            <span class="cursor-next"><i class="fas fa-chevron-right"></i></span>
            <span class="cursor-prev"><i class="fas fa-chevron-left"></i></span>
        </div>

    </div>
    <div class="scroll-to-top">
        <img src="{{ asset('assets/img/scroll_top.svg') }}" alt="">
        <div class="box-number v-middle">
            <span>0%</span>
        </div>
    </div>
    <script src="{{ asset('assets/js/jquery-3.1.1.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins.min.js') }}"></script>
    <script src="{{ asset('assets/js/dsn-grid.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>
    @yield('scripts')
</body>

</html>
