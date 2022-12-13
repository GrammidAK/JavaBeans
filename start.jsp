<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Стартовая страница</title>
    </head>
    
    <body>
        <h2>Группа 4318</h2>
        <h3>
            Вариант 4 (12 = 001100)<br>
            Нужно создать web-приложение в NetBeans IDE, которое должно состоять
            из трёх JSP-страниц – стартовой, главной и финишной, а также при необходимости
            использовать для обмена данными между страницами Bean-компоненту.<br>
            На «Главной странице» инициировать вычисление функции из задания первой
            лабораторной работы. Параметры просить здесь же, ответ на финишной.<br>
            Задание. В последовательности чисел найти сумму «чётных и положительных» и «нечётных и
            отрицательных» чисел.<br>
            5) Программный код вычисляемой функции разместить: 0 - на «Главной странице»;<br>
            6) Заголовки страниц должны иметь следующий вид: 0 – «Стартовая страница»,
            «Главная страница» и «Финишная страница»;<br>
            7) Формат «Стартовой страницы»: 1 – содержит текст задания на лабораторную работу,
            группа студента и кнопку для перехода на «Главную страницу»;<br>
            8) Организовать вывод результатов работы функции на «Финишной странице»: 
            1 – результаты должны быть каким-то образом размещены в видимой таблице,
            в таблице допускается произвольное число столбцов и строк;<br>
            9) При повторном переходе на «Главную страницу», например при нажатии кнопки
            «Возврат» на «Финишной странице», на «Главной странице» должно отображаться:
            0 – изменение триггера, размещённого на «Главной странице».<br>
        </h3>

        <form name="go to main form" action="main.jsp">
            <input type="submit" value="Перейти на главную страницу" name="button1" />
        </form>
    </body>
</html>
