<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Table</title>
<link rel="icon" href="images/icon1.png" type="image/x-icon">
<style></style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function searchFromDatabase() {
    const query = document.getElementById("search").value;

    // Alert to check the search query
   // alert("Search Query: " + query);

 
        $.ajax({
            url: 'SearchController', // Confirm this is the correct endpoint
            method: 'GET',
            data: { search: query },
            dataType: "json",

            // Alert before sending the request
          ////  beforeSend: function () {
                //alert("Sending AJAX Request...");
          //  },

            success: function(response) {
                // Alert to check the full JSON response
               // alert("Success: " + JSON.stringify(response));
                console.log("Full Response:", response);

                $('#th-body').empty(); // Clear the table body before appending new rows

                // Iterate through the response array and append rows to the table
                $.each(response, function(index, user) {
                    // Debugging individual user objects
                //    alert("User Object: " + JSON.stringify(user));
                    
                    const row =
                        '<tr>' +
                            '<td>' + user.user.id + '</td>' +
                            '<td>' + user.user.firstName + '</td>' +
                            '<td>' + user.user.lastName + '</td>' +
                            '<td>' + user.user.dob + '</td>' +
                            '<td>' + user.user.gender + '</td>' +
                            '<td>' + user.user.religion + '</td>' +
                            '<td>' + user.user.country + '</td>' +
                            '<td>' + user.user.phoneNumber + '</td>' +
                            '<td>' + user.user.email + '</td>' +
                            '<td>' + user.user.password + '</td>' +
                            '<td><img src="' + user.user.imagePath + '" alt="Profile" width="50"></td>' +
                            '<td>' + user.physicalDetails.height + '</td>' +
                            '<td>' + user.physicalDetails.weight + '</td>' +
                            '<td>' + user.physicalDetails.eyeColor + '</td>' +
                            '<td>' + user.physicalDetails.skinColor + '</td>' +
                            '<td>' + user.physicalDetails.bloodType + '</td>' +
                            '<td>' + user.physicalDetails.job + '</td>' +
                            '<td>' + user.physicalDetails.education + '</td>' +
                            '<td>' + user.physicalDetails.hobbies + '</td>' +
                            '<td>' + user.physicalDetails.interest + '</td>' +
                            '<td><a class="btn btn-danger" href="AdminController?action=delete&id=' + user.user.id + '">Delete</a></td>' +
                            '<td><a class="btn btn-success" href="AdminController?action=edit&id=' + user.user.id + '">Edit</a></td>' +
                        '</tr>';

                    $('#th-body').append(row); // Add row to table
                });
            },

            error: function(xhr, status, error) {
              //  alert("AJAX Error - Status: " + status + ", Error: " + error);
                //alert("Response Text: " + xhr.responseText); // Show the raw response for debugging
                console.log("XHR Object:", xhr);
                console.log("Error Details:", xhr.responseText);
            }
,

            complete: function () {
                // Alert after the request completes
                //alert("AJAX Request Completed");
            }
        });
   
}
</script>


</head>
<body>
	<%@ include file="navBar.jsp"%>

	<div class="container mt-5">
		<div class="d-flex justify-content-end">
			<div class="input-group" style="max-width: 300px;">
				<input type="text" class="form-control form-control-sm"
					placeholder="Search here..." aria-label="Search" id="search"
					onkeyup="searchFromDatabase()">
			</div>
		</div>
	</div>

	<br>
	<div class="overflow-auto">
		<c:if test="${!empty userList}">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col" class="text-nowrap">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">DOB</th>
						<th>Age</th>
						<th>Gender</th>
						<th>Religion</th>
						<th>Country</th>
						<th>Phone Number</th>
						<th>Email</th>
						<th>Password</th>
						<th>Profile Image</th>

						<th>Height</th>
						<th>Weight</th>
						<th>Eye Color</th>
						<th>Skin Tone</th>
						<th>Blood Type</th>
						<th>Job</th>
						<th>Education</th>
						<th>Hobbies</th>
						<th>Interest</th>

						<th>Action</th>

					</tr>
				</thead>
				<tbody id="th-body">
					<c:forEach items="${userList}" var="userList">
						<tr>

							<td><c:out value="${userList.user.id}" /></td>
							<td><c:out value="${userList.user.firstName}" /></td>
							<td><c:out value="${userList.user.lastName}" /></td>
							<td><c:out value="${userList.user.dob}" /></td>
							<td><c:out value="${userList.user.age}" /></td>
							<td><c:out value="${userList.user.gender}" /></td>
							<td><c:out value="${userList.user.religion}" /></td>
							<td><c:out value="${userList.user.country}" /></td>
							<td><c:out value="${userList.user.phoneNumber}" /></td>
							<td><c:out value="${userList.user.email}" /></td>
							<td><c:out value="${userList.user.password}" /></td>
							<td><img src="${userList.user.imagePath}"
								alt="Profile Image" width="60" height="60"
								style="border-radius: 50%"></td>
							<td><c:out value="${userList.physicalDetails.height}" /></td>
							<td><c:out value="${userList.physicalDetails.weight}" /></td>
							<td><c:out value="${userList.physicalDetails.eyeColor}" /></td>
							<td><c:out value="${userList.physicalDetails.skinColor}" /></td>
							<td><c:out value="${userList.physicalDetails.bloodType}" /></td>
							<td><c:out value="${userList.physicalDetails.job}" /></td>
							<td><c:out value="${userList.physicalDetails.education}" /></td>
							<td><c:out value="${userList.physicalDetails.hobbies}" /></td>
							<td><c:out value="${userList.physicalDetails.interest}" /></td>

							<td><a class="btn btn-danger"
								href="AdminController?action=delete&id=${userList.user.id}">Delete</a></td>
							<td><a class="btn btn-success"
								href="AdminController?action=edit&id=${userList.user.id}">Edit</a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>