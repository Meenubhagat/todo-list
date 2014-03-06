<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<form class="form-horizontal" action="save" method="post">  
    <fieldset>  
      <legend>Spring data Bootstrap MyUser example</legend><br>
  <div class="form-group">
  <label for="inputtaskname" class="col-sm-2 control-label">User Name</label>
    	<div class="col-xs-4">
     	 <input type="text" class="form-control" id="user_name" name="user_name" value="${myuser.name}">
   		 </div>
  </div>
  	<div class="form-group">
    <label for="inputtaskdesc" class="col-sm-2 control-label">User Address</label>
    	<div class="col-xs-4">
      	<textarea class="form-control" rows="3" id="user_Address" name="user_Address">${myuser.address}</textarea>
    	</div>
  	</div>
 		 <div class="form-group">
   		 <label for="inputstatus" class="col-sm-2 control-label">User Status</label>
    		<div class="col-xs-4">
      		<div class="radio">
  		<label>
   		<input type="radio" value="Single" checked id="user_status" name="user_status" 
   			<c:if test="${myuser.status.equals(\"Single\")}">
   			checked
   	 		</c:if>>Single
  		</label>
			</div>
	<div class="radio">
 	 <label>
    	<input type="radio" value="Married" checked id="user_status" name="user_status" 
    	 <c:if test="${myuser.status.equals(\"Married\")}">
   		checked
   	 </c:if>>Married
   	 
  	</label>
	</div>
   	 </div>
  </div>
  <div class="form-group">
    <label for="inputPriority" class="col-sm-2 control-label">User Qualification</label>
    	<div class="col-xs-4">
     	<select class="form-control" id="user_qualification" name="user_qualification">
  			<option <c:if test="${myuser.qualification.equals(\"Matriculation\")}">
   		selected
   	 </c:if>>Matriculation</option>
   	 
  			<option <c:if test="${myuser.qualification.equals(\"Senior Secondary\")}">
   		selected
   	 </c:if>>Senior Secondary</option>
   	 
  			<option <c:if test="${myuser.qualification.equals(\"Graduation\")}">
   		selected
   	 </c:if>>Graduation</option>
   	 
  			 <option <c:if test="${myuser.qualification.equals(\"Post Graduation\")}">
   		selected
   	 </c:if>>Post Graduation</option>
		</select>
   		 </div>
  </div><br>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date of Birth</label>
    	<input type="date" id="date_of_birth" name="date_of_birth"></input>
   </div>
  
   
  <div class="col-xs-4">
  	<center><button type="submit" class="btn btn-success btn-lg">Save</button>
  		<button type="button" class="btn btn-danger btn-lg">Cancel</button></center>
  </div>
         </fieldset>
         
</form>
</body>
</html>