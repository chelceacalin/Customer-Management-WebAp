<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html>

    <head>
        <title>Add A customer</title>

        <link type="text/css" ref="stylesheet"  href="${pageContext.request.contextPath}/resources/css/style.css">
        <link type="text/css" ref="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
    
    
    <style>
  body {
  background-color: #ebebeb;
}

#wrapper {
  margin: 0 auto;
  width: 600px;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#header {
  text-align: center;
  margin-bottom: 20px;
}

#container {
  margin-bottom: 20px;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 10px;
}

table {
  width: 100%;
}

td {
  padding: 10px;
}

input[type="text"],
input[type="email"] {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  margin-bottom: 20px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 20px;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}
    
    </style>
    </head>

    <body>

        <div id="wrapper">


            <div id="header">
                <h2> Customer Management Web App</h2>
            </div>


            <div id="container">
                <h3>Save Customer</h3>
            </div>

            <form:form action="saveCustomer" modelAttribute="customer" method="POST">

                <table>

                    <tbody>

                        <tr>
                            <td><label>First Name  </label></td>
                            <td>
                                <form:input path="firstName" />
                            </td>
                        </tr>


                        <tr>

                            <td> <label>Last Name  </label></td>
                            <td>
                                <form:input path="lastName" /> </td>
                        </tr>


                        <tr>
                            <td><label>Email  </label></td>
                            <td>
                                <form:input path="email" />
                            </td>


                            <tr>

                                <td><label>  </label></td>
                                <td><input type="submit" value="Save" class="save"></td>

                            </tr>
                    </tbody>
                </table>


            </form:form>
            	
            	<div style="clear; both;"></div>
            
            <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
            </p>
        </div>


    </body>

    </html>