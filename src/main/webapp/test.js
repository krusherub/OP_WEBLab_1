let xhr = new XMLHttpRequest(); // инициализируем переменную новым объектом XMLHttpRequest
xhr.open("POST", "File.txt"); // определяем параметры для запроса
xhr.send(); // отправляем запрос на сервер

xhr.onreadystatechange = function() {
    // проверяем состояние запроса и числовой код состояния HTTP ответа
    if (this.readyState == 4 && this.status == 200) {

        str = this.responseText;
        const words = str.split('\n');
        changeInfo(words[0],words[1])
        alert(str)
        //const data = JSON.parse(this.responseText); // анализируем строку в формате JSON и инициализируем переменную значением, полученным в ходе анализа
        //document.getElementById("demo").innerHTML = "Телефон пользователя: " + data.phone; // находим элемент по id и изменяем его содержимое значением ключа объекта, содержащегося в переменной
    }else if(this.status!=200 || this.readyState != 4){
        alert("eror")
    }
};