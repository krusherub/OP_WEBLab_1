<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>LAB1</title>
</head>
<body onload="focus()">
<!--onload='focus()'-->
<script>
    //uncomment to execute task3
    //isCookiesExists();
    function myFocus() {
        let form = document.forms.foc; // <form name="foc"> element
        let elem = form.elements.two; // <input name="two"> element
        var div = document.getElementById("fifth");
        if(!elem.value){
            div.style.fontWeight = localStorage.getItem("fontWeight");
        }else{
            div.style.fontWeight = elem.value;
            localStorage.setItem("fontWeight",elem.value.toString());
        }
    }
    function isCookiesExists(){
        if(document.cookie){
            if (confirm(document.cookie + "\n" + "Save or not?"))
            {
                alert("Cookies already exist" + "\n" + "You need to refresh the page");
                document.getElementById("form2").style.display = "none";
                //isCookiesExists();
            }
            else
            {
                CookiesDelete();
            }
        }
    }
    function square(x,y) {
        return x*y;
    }
    function findMax() {
        let form = document.forms.my; // <form name="my"> element
        let elem = form.elements.one; // <input name="one"> element

        let arr = elem.value.split(",").map(Number);
        let max = Math.max.apply(Math, arr);
        let min = Math.min.apply(Math, arr);
        alert("Max: " + max + " " + "Min: " + min);
        document.cookie = "Max" + '=' + encodeURIComponent(max);
        document.cookie = "Min" + '=' + encodeURIComponent(min);
        //alert(document.cookie);
    }
    function CookiesDelete() {
        var cookies = document.cookie.split(";");
        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i];
            var eqPos = cookie.indexOf("=");
            var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
            document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT;";
            document.cookie = name + '=; path=/; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
        }
    }
</script>
<div id="main">
    <div id="first">
        <div id="f1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
        </div>
        <div id="f2">some text</div>
    </div>
    <div id="second">
        <article>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s

            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s


        </article>
    </div>

    <div id="third">
        <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
        </div>
    </div>


    <div id="fourth">
        <ul>
            <li><a href="first.html">first</a></li>
            <li><a href="second.jsp">second</a></li>
            <li><a href="third.jsp">third</a></li>
            <li><a href="fourth.html">fourth</a></li>
            <li><a href="fifth.html">fifth</a></li>
        </ul>
        <form name="foc">
            <input name="two" value="" style="margin-left: 4%">
            <button name="change" type="button"onclick="myFocus()">change foc</button>
        </form>

        <form name="my" id="form2">
            <input name="one" value="" style="margin-left: 4%">
            <button name="count" type="button" onclick="findMax()">find max</button>
        </form>

    </div>


    <div id="fifth" tabindex="0">
        <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
        </div>
    </div>
    <div id="sixth">
        <div id="s1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
        <div id="s2">another text</div>
    </div>
</div>
<script>
    // first
    let x = document.getElementById("f2");
    let y = document.getElementById("s2");

    let temp = x.innerText;

    x.innerText = y.innerText;
    y.innerText = temp;
    //second
    var len1 = 4;
    var len2 = 5;

    var newTag = document.createElement("li");
    var existingElement = document.getElementsByTagName("ul");
    existingElement[0].appendChild(newTag);
    newTag.innerText = "Result : " + square(len1,len2);
    //third



</script>
</body>
</html>