<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Финишная страница</title>
    </head>

    <jsp:useBean id="mybean" scope="session" class="Classes.Bean" />
    <%
        String sumEvenPositiveNumbers;
        String sumOddNegativeNumbers;

        if (mybean.isArrayWithInvalidNumbers()) {
            sumEvenPositiveNumbers = "Неверные агрументы!";
            sumOddNegativeNumbers = "Неверные агрументы!";
        }
        else {
            sumEvenPositiveNumbers = String.valueOf(mybean.getSumEvenPositiveNumbers());
            sumOddNegativeNumbers = String.valueOf(mybean.getSumOddNegativeNumbers());
        }
    %>

    <table border="1" align="center">
        <tr><td align="center" width=200px>Сумма четных и положительных чисел:</td>
            <td align="center" width=200px>Сумма нечетных и отрицательных чисел:</td>
            <td align="center" width=200px>Итоговая сумма</td>
        <tr><td align="center"><%= sumEvenPositiveNumbers %></td>
            <td align="center"><%= sumOddNegativeNumbers %></td>
            <td align="center"><%= String.valueOf(mybean.Summ(mybean.getSumOddNegativeNumbers(), mybean.getSumEvenPositiveNumbers())) %></td>
    </table>
    <p></p>
    <form name="back to main" action="main.jsp" align="center">
        <button>Вернуться на главную страницу</button>
    </form>
    <form name="back to start" action="start.jsp" align="center">
        <button>Вернуться на стартовую страницу</button>
    </form>

</html>
