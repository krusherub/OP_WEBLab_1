<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>The second brigade</title>

</head>
<body >

<h2 class = "text-4xl font-semibold border-b-4 border-black pb-2 mx-0"> Start page </h2>
<div class = "grid grid-cols-3 gap-5 my-2 mx-2">
    <form action = "BrazhnikServlet" >
        <button class = "bg-blue-300 text-x1 font-semibold px-4 py-1 rounded hover:bg-blue-800 hover:text-white " type="submit">Brazhnik</button>
    </form>
    <form action = "DevitskiyServlet">
        <button class = "bg-blue-300 text-x1 font-semibold px-4 py-1 rounded hover:bg-blue-800 hover:text-white " type="submit">Devitskiy</button>
    </form>
    <form action = "KryvonosiukServlet">
        <button class = "bg-blue-300 text-x1 font-semibold px-4 py-1 rounded hover:bg-blue-800 hover:text-white " type="submit">Kryvonosiuk</button>
    </form>
</div>

</body>
</html>