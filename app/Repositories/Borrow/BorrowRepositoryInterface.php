<?php

namespace App\Repositories\Borrow;

interface BorrowRepositoryInterface
{
	public function getBorrowBySearchName($filters = [], $paginate);
}
