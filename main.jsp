<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Главная страница</title>
    </head>

    <body>
        <jsp:useBean id="mybean" scope="session" class="Classes.Bean" />
        <%
            try {
                String array = request.getParameter("array");
                String[] arrayWithNumbers = array.split(" ");
                ArrayList<Integer> listInt = new ArrayList<>();
                mybean.setArrayWithInvalidNumbers(false);

                for (String elem: arrayWithNumbers) {
                    listInt.add(Integer.parseInt(elem));
                }
                for (Integer number : listInt) {
                    if (isNumberEvenPositive(number)) {
                        mybean.setSumEvenPositiveNumbers(mybean.getSumEvenPositiveNumbers() + number);
                    }
                    if (isNumberOddNegative(number)) {
                        mybean.setSumOddNegativeNumbers(mybean.getSumOddNegativeNumbers() + number);
                    }
                }
            }
            catch (Exception ignored){
                mybean.setSumEvenPositiveNumbers(0);
                mybean.setSumOddNegativeNumbers(0);
                mybean.setArrayWithInvalidNumbers(true);
            }
        %>

        <%!
            private boolean isNumberEvenPositive(int number) {
                return number % 2 == 0 && number > 0;
            }

            private boolean isNumberOddNegative(int number) {
                return number % 2 == -1;
            }
        %>

        <h3 align="center">Введите числа через пробел</h3>
        <form name="Input form" action="main.jsp" align="center">
            <label>
                <input type="text" name="array" />
            </label>
            <button>Готово</button>
        </form>
        <form name="Input form2" action="finish.jsp" align="center">
            <button>Перейти на финальную страницу</button>
        </form>


        <h3 align="center">Триггер: ${mybean.getTrigger() ? 1 : 0}</h3>
        <%
            mybean.changeTrigger();
        %>
    </body>
</html>
