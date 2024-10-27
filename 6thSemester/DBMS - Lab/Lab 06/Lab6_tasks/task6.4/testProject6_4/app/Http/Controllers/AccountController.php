<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Account;

class AccountController extends Controller
{
    public function index(Request $request)
    {
        // Initialize an empty accounts collection
        $accounts = collect();

        // Handle form submissions
        if ($request->isMethod('post')) {
            if ($request->has('submit')) {
                // Create a new account
                $request->validate([
                    'name' => 'required|string|max:255',
                    'email' => 'required|string|email|max:255|unique:accounts',
                    'phone' => 'required|string|max:255',
                ]);

                Account::create($request->only('name', 'email', 'phone'));

                return redirect('/accounts')->with('success', 'Account has been added');
            } elseif ($request->has('update')) {
                // Update an existing account
                $id = $request->get('id');
                $request->validate([
                    'name' => 'required|string|max:255',
                    'email' => 'required|string|email|max:255|unique:accounts,email,' . $id,
                    'phone' => 'required|string|max:255',
                ]);

                $account = Account::find($id);
                $account->update($request->only('name', 'email', 'phone'));

                return redirect('/accounts')->with('success', 'Account has been updated');
            } elseif ($request->has('delete')) {
                // Delete an account
                $id = $request->get('id');
                $account = Account::find($id);
                $account->delete();

                return redirect('/accounts')->with('success', 'Account has been deleted');
            } elseif ($request->has('show_all')) {
                // Show all accounts
                $accounts = Account::all();
            }
        }

        return view('accounts', compact('accounts'));
    }
}
