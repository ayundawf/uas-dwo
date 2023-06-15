<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/adventure_works?user=root&password=" catalogUri="/WEB-INF/queries/dwadventure.xml">

select {[Measures].[Total_Sales],[Measures].[Quantity]} ON COLUMNS,
  {([dim_territory],[dim_time].[All Times],[dim_customer],[dim_product].[All Produk])} ON ROWS
from [Jual]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query WHSAKILA using Mondrian OLAP</c:set>
