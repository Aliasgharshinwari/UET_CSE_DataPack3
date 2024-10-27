<!DOCTYPE html>
<html>
<head>
    <title>Accounts</title>
</head>
<body>
    @if(session('success'))
        <div>{{ session('success') }}</div>
    @endif

    <h1>Accounts</h1>

    <h2>Add New Account</h2>
    <form method="post" action="{{ route('accounts') }}">
        @csrf
        Name: <input type="text" name="name"><br>
        Email: <input type="email" name="email"><br>
        Phone: <input type="text" name="phone"><br>
        <input type="submit" name="submit" value="Add Account">
    </form>

    <h2>Update Account</h2>
    <form method="post" action="{{ route('accounts') }}">
        @csrf
        ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Email: <input type="email" name="email"><br>
        Phone: <input type="text" name="phone"><br>
        <input type="submit" name="update" value="Update Account">
    </form>

    <h2>Delete Account</h2>
    <form method="post" action="{{ route('accounts') }}">
        @csrf
        ID: <input type="text" name="id"><br>
        <input type="submit" name="delete" value="Delete Account">
    </form>

    <h2>Show All Entries</h2>
    <form method="post" action="{{ route('accounts') }}">
        @csrf
        <input type="submit" name="show_all" value="Show All">
    </form>

    @if($accounts->isNotEmpty())
        <h2>Accounts List</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
            @foreach($accounts as $account)
                <tr>
                    <td>{{ $account->id }}</td>
                    <td>{{ $account->name }}</td>
                    <td>{{ $account->email }}</td>
                    <td>{{ $account->phone }}</td>
                </tr>
            @endforeach
        </table>
    @endif
</body>
</html>
