<?php

namespace App\Repositories\Category;

use App\Models\Category;
use App\Repositories\BaseRepository;

class CategoryRepository extends BaseRepository implements CategoryRepositoryInterface
{
	public function getModel()
	{
		return Category::class;
	}

	public function getCategoryBySearchName($filters = [], $paginate)
	{
        return Category::where('name_category', 'like', '%'.$filters.'%')
    		->orderBy('id','DESC')->paginate($paginate);
	}
}
