<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Student Registration</title>
</head>
<body>

	<form:form id="studentEnrollmentForm" method="post"
		class="form-horizontal" action="saveStudentByAdmin"
		modelAttribute="student">

		<div class="form-group">
			<label class="col-xs-2 control-label">Student Full Name</label>
			<div class="group">
				<div class="col-xs-3">
					<form:input type="text" class="form-control" path="firstName"
						placeholder="First name" />
					<!-- errors will display here -->
					<form:errors path="firstName" cssStyle="color : red;" />
				</div>
			</div>
			<div class="col-xs-3">
				<form:input type="text" class="form-control" path="middleName"
					placeholder="Middle name" />
			</div>
			<div class="col-xs-3">
				<form:input type="text" class="form-control" path="lastName"
					placeholder="Last name" />
				<form:errors path="lastName" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-2 control-label">Parents Full Name</label>
			<div class="col-xs-3">
				<form:input type="text" class="form-control" path="parent.firstName"
					placeholder="First name" />
				<form:errors path="parent.firstName" cssStyle="color : red;" />
			</div>
			<div class="col-xs-3">
				<form:input type="text" class="form-control"
					path="parent.middleName" placeholder="Middle name" />
			</div>
			<div class="col-xs-3">
				<form:input type="text" class="form-control" path="parent.lastName"
					placeholder="Last name" />
				<form:errors path="parent.lastName" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-2 control-label">Date-of-birth</label>
			<div class="col-xs-3 ">
				<div class="input-group input-append date" id="studentDOB">
					<form:input type="Text" class="form-control" path="DOB" />
					<span class="input-group-addon add-on"><span
						class="glyphicon glyphicon-calendar"></span></span>
				</div>
			</div>
			<label class="col-xs-3 control-label">Gender</label>
			<div class="col-xs-3">
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-default"> <form:radiobutton
							path="gender" value="male" />Male
					</label> <label class="btn btn-default"> <form:radiobutton
							path="gender" value="female" />Female
					</label>
					<form:errors path="gender" cssStyle="color : red;" />
				</div>
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-2 control-label">Phone</label>
			<div class="col-xs-3">
				<form:input type="text" class="form-control"
					path="parent.phoneNumber" placeholder="Phone number" />
				<form:errors path="parent.phoneNumber" cssStyle="color : red;" />
			</div>
			<label class="col-xs-3 control-label">Email</label>
			<div class="col-xs-3">
				<form:input type="text" class="form-control" path="parent.email"
					placeholder="Email" />
				<form:errors path="parent.email" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-2 control-label">Permanent Address</label>
			<div class="col-xs-3">
				<form:textarea class="form-control" rows="3" path="permanentAddress" />
				<form:errors path="permanentAddress" cssStyle="color : red;" />
			</div>
			<label class="col-xs-3 control-label">Present Address</label>
			<div class="col-xs-3">
				<form:textarea class="form-control" rows="3" path="presentAddress" />
				<form:errors path="presentAddress" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-2 control-label">Class to join</label>
			<div class="col-xs-3">
				<form:select path="className" class="form-control">
					<form:option value="" label="Select class"></form:option>
					<form:options items="${classNames}" />
				</form:select>
				<form:errors path="className" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
			<div class="col-xs-1 ">
				<button type="submit" class="btn btn-primary ">Submit</button>
			</div>
			<div class="col-xs-1 ">
				<button type="reset" class="btn btn-default" id="rstbutton">Refresh</button>
			</div>
		</div>
	</form:form>
</body>
</html>
