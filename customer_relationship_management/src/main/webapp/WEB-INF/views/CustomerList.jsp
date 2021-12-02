<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Directory</title>
</head>

<body>

	<div class="container">

		<center>
		        <b>
		           <font size ="5">
		                     <h1 style="background-color:MediumSeaGreen;">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		              </font>   
		          </b>    
		</center>
		<hr>

			<!-- Add a button -->
			
			<a href="/customer_relationship_management/customers/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Customer </a> 
				
         <!-- Display table user interface -->
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Customers}" var="temp">
					<tr>
						<td><c:out value="${temp.firstName}" /></td>
						<td><c:out value="${temp.lastName}" /></td>
						<td><c:out value="${temp.email}" /></td>
						<td>
						
							<!-- Add "update" button/link --> 
							<a href="/customer_relationship_management/customers/showFormForUpdate?id=${temp.id}"
							class="btn btn-info btn-sm"> Update </a> 
							
							<!-- Add "delete" button/link -->
							<a href="/customer_relationship_management/customers/delete?id=${temp.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



