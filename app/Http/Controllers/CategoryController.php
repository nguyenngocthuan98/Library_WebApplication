<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Book;
use App\Repositories\Category\CategoryRepositoryInterface;
use App\Repositories\Book\BookRepositoryInterface;
use App\Http\Requests\CategoryRequest;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    protected $categoryRepo;

    public function __construct(CategoryRepositoryInterface $category, BookRepositoryInterface $book)
    {
        $this->categoryRepo = $category;
        $this->bookRepo = $book;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pagi = config('seting.paginate');
        $filters = request()->only('action', 'key');

        if($filters && $filters['action'] == 'search'){
            // for search
            $category = $this->categoryRepo->getCategoryBySearchName($filters['key'], $pagi);
        }
        else{

            $category = $this->categoryRepo->paginate('id','ASC', $pagi);
        }

        return view('categories.category', ['category' => $category]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('categories.add_category');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        try {
            $category = [
            'name_category' => $request->name_category,
            'email' => $request->email,
            'address' => $request->address,
        ];
        $this->categoryRepo->create($category);

        return redirect()->back()->with(['create_success' => trans('controller/category.create_success') ]);
        } catch (ModelNotFoundException $e) {
            throw new Exception($e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // try {
        //     $category = $this->categoryRepo->findOrFail($id);
        //     $paginate = config('setting.paginate');
        //     $arr_child = [];
        //     $products = $this->productRepo->getByCategoryId($id, $category, $paginate);

        //     return view('categories.detail', ['category' => $category, 'products' => $products]);
        // } catch(ModelNotFoundException $e) {
        //     throw new \Exception($e->getMessage());
        // }

        try {
            $category = $this->categoryRepo->findOrFail($id);
            $paginate = config('seting.paginate');
            $arr_child = [];
            $books = $this->bookRepo->getByCategoryId($id, $category, $paginate);
            // $filters = request()->only('action', 'key');

            // if($filters && $filters['action'] == 'search'){
            //     // for search
            //     $category = $this->categoryRepo->getCategoryBySearchName($filters['key'], $pagi);
            // }
            // else{

            //     $category = $this->categoryRepo->paginate('id','ASC', $pagi);
            // }


            return view('categories.detail_category', ['category' => $category, 'books' => $books]);
        } catch (ModelNotFoundException $e) {
            throw new \Exception($e->getMessage());
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try {
            $category = $this->categoryRepo->FindOrFail($id);

            return view('categories.edit_category',compact('category'));
        } catch (ModelNotFoundException $e) {
            throw new Exception($e->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $category = [
            'name_category' => $request->name_category,
        ];
        $this->categoryRepo->update($id, $category);

        return redirect()->back()->with(['update_success' => trans('controller/category.update_success') ]);
        } catch (ModelNotFoundException $e) {
            throw new Exception($e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category = $this->categoryRepo->delete($id);
            return redirect('categories')->with(['delete_success' => trans('controller/category.delete_success') ]);
        } catch (ModelNotFoundException $e) {
            throw new Exception($e->getMessage());
        }
    }
}
