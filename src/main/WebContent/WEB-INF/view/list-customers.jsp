<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>CRM Web App</title>

<style>
body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
}

#wrapper {
  margin: 0 auto;
  width: 80%;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

#header {
  text-align: center;
  margin-bottom: 20px;
  background: linear-gradient(45deg, #4CAF50, #008CBA);
  padding: 20px;
  border-radius: 5px;
}

#header h2 {
  color: #fff;
  margin: 0;
}

#container {
  margin-top: 20px;
}

#content {
  margin: 0 auto;
  width: 80%;
}

table {
    border-collapse: collapse;
    width: 100%;
    margin-top: 20px;
}

th, td {
    text-align: left;
    padding: 8px;
}

th {
    background-color: transparent;
    font-size: 28px;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:nth-child(odd) {
    background-color: #dcdcdc;
}

.add-button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  border-radius: 5px;
  cursor: pointer;
  margin-bottom: 20px;
}

.add-button:hover {
  background-color: #3e8e41;
}
</style>
</head>


<body>
	<div id="wrapper">
		<div id="header">
			<h2> CRM Web Application</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
		
		
		
		<input type="button" value="Add Customer" onClick="window.location.href='showFormForAdd' " class="add-button">
		
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Name</th>
					<th>Action</th>
					
					
				</tr>
				
				
						<c:forEach var="tempCustomer" items="${customers}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>					
					
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							|
							
							<a href="${deleteLink}">Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
			</table>
		</div>
	</div>

</body>


</html>