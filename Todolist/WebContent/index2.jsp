<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  
  <%
     int[]arr={1,2,3,4,5};
    
    for(int i :arr)
    {
    	if(i%2==0)
    	{
    %>
 		<a href="index.jsp">index</a>
    	<% 
    	}
    }
     %>
  
   
</body>
</html>