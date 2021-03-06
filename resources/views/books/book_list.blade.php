@extends('master')

@section('title_header', trans('books/book.title_header'))

@section('main')

<!-- Book item -->
    <section class="book_section">
        <div class="container list_book">
            <div class="row">
                <div class="col-9">
                @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                    <a href="{{route('books.create')}}"><button type="button" class="btn btn_new"> {{ trans('books/book.add_new') }} </button></a>
                @endif
                </div>
                <div class="col-3">
                    <div class="search-book">
                        <form class="search_widget" action="{{ url('books') }}" method="GET">
                            <input type="hidden" name="action" value="search">
                            <input type="text" name="key" id="input" class="form-control" value="" placeholder="{{ trans('books/book.search') }}">
                            <button type="submit">{{ trans('books/book.search') }}</button>
                        </form>
                    </div>
                </div>
                <!-- list book admin-->
                <table class="table table-striped text_table">
                    <thead>
                        <tr>
                            <th scope="col"> {{ trans('books/book.name') }} </th>
                            <th scope="col"> {{ trans('books/book.image') }} </th>
                            <th scope="col"> {{ trans('books/book.category') }} </th>
                            <th scope="col"> {{ trans('books/book_detail.quantity') }} </th>
                            <th scope="col"> {{ trans('books/book.author') }} </th>
                            <th scope="col"> {{ trans('books/book.publisher') }} </th>
                            @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                                <th class="width_t" scope="col"> {{ trans('books/book.option') }} </th>
                            @endif
                        </tr>
                    </thead>
                    {{-- data below --}}
                    @foreach($listbook as $book)
                    <tbody>
                        <tr>
                            <td scope="row"><a class="book_detail" href="{{ route('books.show',$book->id) }}">{{ $book->name_book }}</a></td>
                            <td scope="row"><a href="{{ route('books.show',$book->id) }}"><image class="image_list" src="{{ $book->image }}" alt="#"></image></a></td>
                            <td scope="row">{{ $book->category->name_category }}</td>
                            <td scope="row">{{ $book->quantity }}</td>
                            <td scope="row">{{ $book->author->name_author }}</td>
                            <td scope="row">{{ $book->publisher->name_publisher }}</td>
                            @if (auth()->check() && Auth::user()->role == \App\Models\User::ADMIN)
                                <td>
                                    <a href="{{ route('books.edit',$book->id) }}"><button class="btn btn_edit edit_user" title="Edit" type="submit" value="Edit"> {{ trans('books/book.edit') }} </button></a>
                                    <form action="{{ route('books.destroy',$book->id) }}" method="POST">
                                    @csrf
                                        @method('DELETE')
                                        <button class="btn btn_delete delete_user" title="Delete" type="submit" value="Delete"> {{ trans('books/book.delete') }} </button>
                                    </form>
                                </td>
                            @endif
                        </tr>
                    </tbody>
                    @endforeach
                </table>
                {{$listbook->links()}}
            </div>
            <!-- list book end -->
    </div>
</section>
    <!-- Book item -->

@endsection
