<%--
    Oscar Avina
    11/08/2026
    Module 3.2 Assignment
    This page reads the submitted restaurant feedback and displays it in an HTML table.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // gets the five answers using the field names from Avina_Mod3_2.html
    String customerName = request.getParameter("customerName");
    String mealOrdered = request.getParameter("mealOrdered");
    String foodRating = request.getParameter("foodRating");
    String serviceRating = request.getParameter("serviceRating");
    String comments = request.getParameter("comments");
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Restaurant Feedback Results</title>
  </head>
  <body>
    <h1>Restaurant Feedback Results</h1>
    <p>
      This record describes one customer's meal, service, and comments about a
      restaurant visit.
    </p>

    <%-- displays the submitted answers in the table using JSP expressions --%>
    <table>
      <caption>
        Submitted restaurant feedback record
      </caption>
      <tr>
        <th scope="col">Field</th>
        <th scope="col">Description</th>
        <th scope="col">Submitted answer</th>
      </tr>
      <tr>
        <th scope="row">Customer name</th>
        <td>Name of the customer providing feedback</td>
        <td><%= customerName %></td>
      </tr>
      <tr>
        <th scope="row">Meal ordered</th>
        <td>Meal the customer purchased</td>
        <td><%= mealOrdered %></td>
      </tr>
      <tr>
        <th scope="row">Food rating</th>
        <td>Customer's opinion of the food: Good, Average, or Poor</td>
        <td><%= foodRating %></td>
      </tr>
      <tr>
        <th scope="row">Service rating</th>
        <td>Customer's opinion of the service: Good, Average, or Poor</td>
        <td><%= serviceRating %></td>
      </tr>
      <tr>
        <th scope="row">Comments</th>
        <td>Additional details about the customer's visit</td>
        <td><%= comments %></td>
      </tr>
    </table>
  </body>
</html>
