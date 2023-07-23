<section class="contact-up section-padding background-section">
    <div class="container mb-50 p-relative">
        <h5 class="sub-heading mb-15 pb-15">{{__('contact1')}}</h5>
        <h2 class="section-title text-uppercase">{{__('contact2')}}</h2>
        <p class="sm-title-block pb-50 border-bottom mt-20">{{__('contact3')}}</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="d-grid grid-md-3 grid-sm-2 mt-50 pb-50 border-bottom">
                    <div class="item">
                        <h4 class="subtitle p-relative line-shap  line-shap-after mb-15 text-uppercase">
                            <span class="p-10 background-main "> {{__('contact4')}}</span>
                        </h4>
                        <p class="sm-title-block">{{ $Contact->address }}</p>
                        @empty(!$Contact->address2)
                            <p class="sm-title-block">{{ $Contact->address2 }}</p>
                        @endempty
                    </div>
                    <div class="item">
                        <h4 class="subtitle p-relative line-shap  line-shap-after mb-15 text-uppercase">
                            <span class="p-10 background-main "> {{__('contact5')}}</span>
                        </h4>
                        <a href="tel:{{ $Contact->phone }}" class="mt-15 theme-color">
                            <i class="fas fa-phone"></i>
                            <span class="ml-5">{{ $Contact->phone }}</span>
                        </a>
                        @empty(!$Contact->phone2)
                            <a href="tel:{{ $Contact->phone2 }}" class="mt-15 theme-color">
                                <i class="fas fa-phone"></i>
                                <span class="ml-5">{{ $Contact->phone2 }}</span>
                            </a>
                        @endempty
                    </div>
                    <div class="item">
                        <h4 class="subtitle p-relative line-shap  line-shap-after mb-15 text-uppercase">
                            <span class="p-10 background-main "> {{__('contact6')}}</span>
                        </h4>
                        <a href="mailto:{{ $Contact->email }}" class="mt-15 theme-color">
                            <i class="fas fa-envelope"></i>
                            <span class="ml-5">{{ $Contact->email }}</span>
                        </a>
                        @empty(!$Contact->email2)
                            <a href="mailto:{{ $Contact->email2 }}" class="mt-15 theme-color">
                                <i class="fas fa-envelope"></i>
                                <span class="ml-5">{{ $Contact->email2 }}</span>
                            </a>
                        @endempty
                    </div>
                </div>
                @if (session('status'))
                    <div class="alert mt-3 alert-{{ session('status') }} alert-dismissible fade show" role="alert">
                        <strong> {{ session('message') }}</strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif
                <form class="form w-100 mt-50" method="post" action="{{ route('routes.contact') }}"
                    data-toggle="validator">
                    @csrf
                    <div class="input__wrap controls row">
                        <div class="col-md-6 form-group">
                            <div class="entry-box">
                                <input type="text" name="name" placeholder="{{__('contact7')}}" required="required"
                                    data-error="{{__('error1')}}">
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="entry-box">
                                <input id="form_email" type="email" name="email" placeholder="{{__('contact8')}}"
                                    required="required" data-error="{{__('error2')}}">
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="col-md-12 form-group">
                            <div class="entry-box">
                                <textarea id="form_message" class="form-control" name="message" placeholder="{{__('contact9')}}" required="required"
                                    data-error="{{__('error1')}}"></textarea>
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="image-zoom w-auto d-inline-block move-circle inner-btn v-dark-head"
                                data-dsn="parallax">
                                <button type="submit" class="btn p-3 dsn-btn v-dark text-uppercase">{{__('contact10')}}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
                @empty(!$Contact->map)
                    <div class="map-custom">
                        <iframe width="100%" height="100%" src="{{ $Contact->map }}" style="border:0;"
                            allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                @endempty
            </div>
        </div>
    </div>
</section>
