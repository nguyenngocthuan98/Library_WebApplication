@extends('master')

@section('title_header', trans('categories/category.title_header'))

@section('main')

<section class="group_section">
    <div class="container list_category">
        <div class="row">
            <div class="col-9">
                {{-- @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                    <a href="{{ url('categories/create') }}"><button class="btn btn_new">{{ trans('categories/category.btn_add') }}</button></a>
                @endif --}}
            </div>
            <div class="col-3">
                <div class="search-author">
                    <form class="search_widget" action="{{ url('categories') }}" method="GET">
                        <input type="hidden" name="action" value="search">
                        <input type="text" name="key" id="input" class="form-control" value="" placeholder="{{ trans('categories/category.search') }}">
                        <button type="submit">{{ trans('categories/category.search') }}</button>
                    </form>
                </div>
            </div>
        </div>
        <table class="table table-striped text_table group_table">
            <thead>
                <tr>
                    <th scope="col">{{ trans('categories/category.id') }}</th>
                    <th scope="col">{{ trans('categories/category.name') }}</th>
                    @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                        <th class="opt_auth" scope="col">{{ trans('categories/category.option') }}</th>
                    @endif
                </tr>
            </thead>
            @foreach ($category as $data_category)
            <tbody>
                <tr>
                    <td scope="row">{{ $data_category->id }}</td>
                    <td scope="row"><a class="text_book" href="{{ route('categories.show',$data_category->id) }}">{{ $data_category->name_category }}</a></td>
                    @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                        <td>
                            {{-- <a href="{{ url('categories/'.$data_category->id.'/edit')}}"><button class="btn btn_edit" title="Edit" type="submit" value="Edit">{{ trans('categories/category.edit') }}</button></a> --}}
                            <form class="set_form" action="{{ url("categories/$data_category->id") }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('delete') }}
                                <button class="btn btn_delete" type="submit" title="Delete">{{ trans('categories/category.delete') }}</button>
                            </form>
                        </td>
                    @endif
                </tr>
            </tbody>
            @endforeach
        </table>
        {{ $category->links() }}
    </div>
</section>

@endsection
