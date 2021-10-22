<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.ArrayList" %>
    <%@ page import = "com.HotelRegistration.AdminHomeinfo" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="css/home.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%ArrayList<AdminHomeinfo> ahomeInfo = new ArrayList<AdminHomeinfo>(); 
  ahomeInfo = (ArrayList<AdminHomeinfo>)request.getAttribute("availability");
%>
</head>
<body>

<div class="header">
  <h1>Welcome</h1>
  <p>THE RESEDIAN HOTEL</p>
  
  <form action="AdminLogin.jsp" method ="post">
   <div class="button">
          <input type="submit" value="Logout" > </button>
        </div>
     </form>
    
      
</div>
  <form action="AdminHomeServlet" method="post">  


<table>
        <thead>
            <tr>
                <th>Serial Number</th>
                <th>Room Number</th>
                <th>Room Name</th>
                <th>status</th>
                <th>Booking</th>
            </tr>
       </thead>
        <tbody>
             <% for(int i = 0; i < ahomeInfo.size(); i++) {
            	AdminHomeinfo AHinfo = new AdminHomeinfo();
                AHinfo = ahomeInfo.get(i);
                
            %>


            <tr>
                <td><%=AHinfo.getSno()%></td>
                <td><%=AHinfo.getRoom_Number()%></td>
                <td><%=AHinfo.getRoom_Name()%></td>
                <td><%=AHinfo.getStatus() %></td>
                <div class="btn-group">
                <input type="button" name = "submit" value=<%=Hinfo.getRoom_Number()%>>
                </div>
                
               </tr>
            <%
            }
            %> 
            
         </tbody>
    </table>
  </form>
    
</body>
</html>>