<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>CD List</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <link rel="icon" href="./img/favicon.png" type="image/gif" />
    </head>
    <body>
        <div class="BD">
            <h1>CD LIST</h1>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <table style="color:greenyellow">
                <tr>
                    <th>Description</th>
                    <th class="right">Price</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="product" items='${products}'>
                    <tr>
                        <td><c:out value='${product.description}'/></td>
                        <td class="right">${product.priceCurrencyFormat}</td>
                        <td><form action="cart" method="post" class="nosee">
                                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                                <input type="submit" value="Add To Cart" class="btn">
                            </form></td>
                    </tr>
                </c:forEach>
            </table>
            <br><!-- comment -->
            <br>
            <button class="btn">
                <a href="https://homepagegroup4.herokuapp.com/" style="text-decoration: none; color: white; font-size: 15px; margin-top: 2rem;">RETURN TO HOMEPAGE</a>
            </button>
        </div> 
    </body>
</html>