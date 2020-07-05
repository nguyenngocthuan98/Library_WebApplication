<?php

namespace App\Repositories\Book;

interface BookRepositoryInterface
{
	public function getBookBySearchName($filters = [], $paginate);
}
