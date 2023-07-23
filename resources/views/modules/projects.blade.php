    <section class="work-section dsn-load-animate not-filter p-relative dsn-filter section-padding">
        <div class="container">
            <div class=" d-grid grid-md-2 dsn-item-filter dsn-isotope" data-dsn-item=".work-item">

                @forelse ($Content['projects'] as $project)
                    <div class="work-item">
                        <div class="img-next-box before-z-index z-index-0 p-relative over-hidden">
                            <img class="cover-bg-img" src="{{asset($project->image)}}" alt="{{$project->getTranslatedAttribute('title')}}">
                        </div>
                        <div class="box-content background-section p-30">
                            <div class="metas d-inline-block mb-15">
                                <span>{{$project->getTranslatedAttribute('type')}}</span>
                                <span>{{ $project->stage == 1 ? __('project1') : __('project2') }}</span>
                            </div>
                            <h4 class="title-block sec-title">
                                <a  href="{{route('routes.project',$project->getTranslatedAttribute('slug'))}}">{{$project->getTranslatedAttribute('title')}}</a>
                            </h4>
                        </div>
                    </div>
                @empty
                @endforelse
            </div>
        </div>

    </section>
