<section class="about section-margin mt-5">
    <div class="container">
        <div class="d-grid grid-md-3 grid-sm-2">
            @forelse ($Content['news'] as $new)
                <div class="blog-item">
                    <div class="">
                        <div class="box-img p-relative">
                            <img class="cover-bg-img"src="{{asset($new->image)}}" alt="{{$new->getTranslatedAttribute('title')}}" />
                        </div>
                        <div class="content pt-20">
                            <div class="blog-meta p-relative mb-15 text-uppercase">
                                <span class="d-inline-block">{{$new->created_at->diffForHumans()}}</span>
                            </div>
                            <h4 class="title-block">
                                <a href="{{route('routes.news',$new->getTranslatedAttribute('slug'))}}">{{$new->getTranslatedAttribute('title')}}</a>
                            </h4>
                            <p class="mt-15">{!!substr(strip_tags($new->getTranslatedAttribute('text')),0,100)!!}
                            </p>
                            <a href="{{route('routes.news',$new->getTranslatedAttribute('slug'))}}" class="text-link mt-20 d-flex align-item-center">
                                <span class="text text-uppercase d-flex align-item-center">{{__('news1')}}</span>
                                <span class="icon d-flex align-item-center justify-content-center">
                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 512.002 512.002" style="enable-background: new 0 0 512.002 512.002"
                                        xml:space="preserve">
                                        <g>
                                            <g>
                                                <path
                                                    d="M388.425,241.951L151.609,5.79c-7.759-7.733-20.321-7.72-28.067,0.04c-7.74,7.759-7.72,20.328,0.04,28.067l222.72,222.105
                                            L123.574,478.106c-7.759,7.74-7.779,20.301-0.04,28.061c3.883,3.89,8.97,5.835,14.057,5.835c5.074,0,10.141-1.932,14.017-5.795
                                            l236.817-236.155c3.737-3.718,5.834-8.778,5.834-14.05S392.156,245.676,388.425,241.951z" />
                                            </g>
                                        </g>
                                    </svg>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            @empty
            @endforelse
        </div>
    </div>
</section>
