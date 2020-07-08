<?php

namespace App\Repositories\Book;

use App\Models\Book;
use App\Repositories\BaseRepository;

class BookRepository extends BaseRepository implements BookRepositoryInterface
{
	public function getModel()
	{
		return Book::class;
	}

    public function getBookBySearchName($filters = [], $paginate)
    {
        return Book::where('name_book', 'like', '%'.$filters.'%')
            ->orderBy('id','DESC')->paginate($paginate);
    }

    public function getByCategoryId($id, $category, $paginate)
    {
        $arr_child = [];

        if (sizeof($category->children) > 0)
        {
            foreach ($category->children as $children) {
                array_push($arr_child, $children->id);
            }
            return Book::whereIn('id_category', $arr_child)->paginate($paginate);
        } else {
            return Book::where('id_category', '=', $id)->paginate($paginate);
        }
    }
}
