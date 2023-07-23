<section class="about section-margin">
    <div class="container mb-70 p-relative">
        <h5 class="sub-heading mb-15 pb-15">{{__('index2')}}</h5>
        <h2 class="section-title text-uppercase">{{__('index3')}}</h2>
    </div>
    <div class="container">
        <div class="row grid-md-2">
            <div class="col-md-8 box">
                {!! $Content['about']->getTranslatedAttribute('about') !!}
            </div>

            <div class="box-img-content col-md-4 d-flex flex-column ">
                <div class="box-img order-3">
                    <img src="{{ asset($Content['about']->image) }}" alt="">
                </div>
            </div>

            <div class="mt-50 col-12">

                <div class="box">
                    <div class="box-item">
                        <h5
                            class="sm-title-block text-uppercase p-relative line-shap  line-shap-after d-inline-block mb-15">
                            <span class="p-10 background-section dsn-load-animate">{{__('about1')}}</span>
                        </h5>
                        {!! $Content['about']->getTranslatedAttribute('mission') !!}
                    </div>

                </div>
                <div class="box mt-30">
                    <div class="box-item">
                        <h5
                            class="sm-title-block text-uppercase p-relative line-shap  line-shap-after d-inline-block mb-15">
                            <span class="p-10 background-section dsn-load-animate">{{__('about2')}}</span>
                        </h5>
                        {!! $Content['about']->getTranslatedAttribute('vision') !!}
                    </div>

                </div>

            </div>

        </div>
    </div>
</section>

<section class="awards section-margin">
    <div class="container mb-70 p-relative">
        <h5 class="sub-heading mb-15 pb-15">{{__('name')}}</h5>

        <h2 class="section-title text-uppercase">{{__('about3')}}</h2>
    </div>

    <div class="container">
        <div class="d-grid grid-lg-2">
            <div class="box-info">
                @forelse ($Content['history'] as $year)
                    <div class="info-item d-flex mb-30">
                        <div class="years">
                            <h4 class="sm-title-block before-line-sm">{{$year->year}}</h4>
                        </div>
                        <div class="text">
                            <h6>{{$year->getTranslatedAttribute('title')}}</h6>
                            <p class="mb-15">{{$year->getTranslatedAttribute('text')}}</p>
                        </div>
                    </div>
                @empty
                @endforelse
            </div>

            <div class="box-img d-flex h-100">
                @empty(!$Content['about']->history1)
                    <div class="img-item img-item-1">
                        <img class="cover-bg-img" src="{{asset($Content['about']->history1)}}" alt="">
                    </div>
                @endempty
                @empty(!$Content['about']->history2)
                    <div class="img-item">
                        <img class="cover-bg-img" src="{{asset($Content['about']->history2)}}" alt="">
                    </div>
                @endempty
                @empty(!$Content['about']->history3)
                    <div class="img-item img-item-1">
                        <img class="cover-bg-img" src="{{asset($Content['about']->history3)}}" alt="">
                    </div>
                @endempty
            </div>
        </div>
    </div>
</section>
