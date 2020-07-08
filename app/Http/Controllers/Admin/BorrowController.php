<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Borrow;
use App\Models\User;
use App\Models\Book;
use App\Repositories\Book\BookRepositoryInterface;
use App\Repositories\Borrow\BorrowRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BorrowController extends Controller
{
    protected $bookRepo;
    protected $borrowRepo;

    public function __construct(BookRepositoryInterface $bookRepo,BorrowRepositoryInterface $borrowRepo)
    {
        $this->bookRepo = $bookRepo;
        $this->borrowRepo = $borrowRepo;
    }

    public function index()
    {
        $take = config('setting.paginate');
        $listborrow = Borrow::orderBy('id', 'DESC')->paginate($take);
        return view('admin.borrows.list_borrow', compact('listborrow'));
    }

    public function action($id, $status)
    {
        $borrow['accept'] = $status;
        Borrow::where('id', '=', $id)->update($borrow);
    }

    public function accept($id, $id_book)
    {
        $borrow = $this->borrowRepo->findOrFail($id);
        $book = $this->bookRepo->findOrFail($id_book);
        $status = Borrow::BORROWING;
        $book = [
            'quantity' => $book->quantity - 1
        ];
        $this->bookRepo->update($id_book, $book);
        $this->action($id, $status);

        return redirect()->back();
    }

    public function deny($id)
    {
        $status = Borrow::DECLINED;
        $this->action($id, $status);

        return redirect()->back();
    }

    public function pay($id, $id_book)
    {
        $borrow = $this->borrowRepo->findOrFail($id);
        $book = $this->bookRepo->findOrFail($id_book);
        $status = Borrow::RETURN;
        $book = [
            'quantity' => $book->quantity + 1
        ];
        $this->bookRepo->update($id_book, $book);
        $this->action($id, $status);

        return redirect()->back();
    }

    public function destroy($id)
    {
        try{
            $borrow = Borrow::findOrFail($id);
            $borrow->destroy($id);

            return redirect()->back()->with(['deleteSuccess' => 'success']);
        } catch (ModelNotFoundException $e) {
            throw new Exception($e->getMesseage());
        }
    }
}
