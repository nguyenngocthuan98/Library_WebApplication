<?php

namespace App\Repositories\Category;

interface CategoryRepositoryInterface
{
	public function getCategoryBySearchName($filters = [], $paginate);
}
