<?php

namespace App\Repositories\Borrow;

use App\Models\Borrow;
use App\Repositories\BaseRepository;

class BorrowRepository extends BaseRepository implements BorrowRepositoryInterface
{
	public function getModel()
	{
		return Borrow::class;
	}

	public function getBorrowBySearchName($filters = [], $paginate)
	{
        return Borrow::where('name_category', 'like', '%'.$filters.'%')
    		->orderBy('id','DESC')->paginate($paginate);
	}
}
