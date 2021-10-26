<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cart</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <link rel="icon" href="./img/favicon.png" type="image/gif" />
    </head>
    <body>
        <div class="BD">
            <h1>YOUR CART</h1>
            <table style="color:greenyellow">
                <tr>
                    <th>Quantity</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Amount</th>
                    <th></th>
                </tr>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:forEach var="item" items="${cart.items}">
                    <tr>
                        <td>
                            <form action="" method="post" class="nosee">
                                <input type="hidden" name="productCode" 
                                       value="<c:out value='${item.product.code}'/>">
                                <input type=text name="quantity" 
                                       value="<c:out value='${item.quantity}'/>" id="quantity">
                                <input type="submit" value="Update" class="btn">
                            </form>
                        </td>
                        <td><c:out value='${item.product.description}'/>
                        <td>${item.product.priceCurrencyFormat}</td>
                        <td>${item.totalCurrencyFormat}</td>

                        <td>
                            <form action="" method="post">
                                <input type="hidden" name="productCode" 
                                       value="<c:out value='${item.product.code}'/>">
                                <input type="hidden" name="quantity" 
                                       value="0">
                                <input type="submit" value="Remove Item" class="btn">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <p><b>To change the quantity</b>, enter the new quantity 
                and click on the Update button.</p>

            <form action="" method="post" >
                <input type="hidden" name="action" value="shop">
                <input type="submit" value="Continue Shopping" class="_btn">
            </form>
            <br>
            <form action="" method="post">
                <input type="hidden" name="action" value="checkout">
                <input type="submit" value="Checkout" class="_btn">
            </form>
        </div>
    </body>
</html>