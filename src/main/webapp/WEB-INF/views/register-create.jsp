<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <title>Insert title here</title>
	   <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
		 <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
 </head>
   <body style="margin:0;">
   
	<form class="form-horizontal" method="post" action="/todolist/register/save">
	<input type="hidden" name="registerId" value="${register.id}">
	 <fieldset>  
      <h1 style="margin:20px;padding:10px;background-color:pink;color:black;">Registration Form</h1><br>
      <div class="container">
	   <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">User Name</label>
	     <div class="col-sm-4">
	      <input type="name" class="form-control" id="inputName" placeholder="Name" name="name" value="${register.name}">
	     </div>
	   </div>
	  
	<div class="form-group">
      <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
       <div class="col-sm-4">
         <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password" value="${register.password }">
       </div>
    </div>
     
    <div class="form-group">
      <label  class="col-sm-2 control-label">User Full Name</label>
       <div class="col-sm-2">
        <input type="firstname" class="form-control" id="user_firstname" placeholder="FirstName" name="firstname" value="${register.firstname }">
       </div>
        <div class="col-sm-2">
          <input type="middlename" class="form-control" id="user_middlename" placeholder="MiddleName" name="middlename" value="${register.middlename }">
        </div>
         <div class="col-sm-2">
          <input type="lastname" class="form-control" id="user_lastname" placeholder="LastName" name="lastname" value="${register.lastname }">
         </div>
         </div>
     
     <div class="form-group">
    	<label for="inputaddress" class="col-sm-2 control-label">User Address</label>
    	  <div class="col-xs-4">
      		 <textarea class="form-control" rows="3" id="user_Address" name="address" placeholder="Address"  value="${register.address }"></textarea>
    	  </div>
   	 </div>
  	
  	<div class="form-group">
  	 <label type="country" class="col-sm-2 control-label" >Country</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="country" name="country">
  	     <option>Select Country</option>
  	     <option <c:if test="${register.country.equals(\"India\")} ">selected
  	     </c:if>>India</option>
  	     
  	     <option <c:if test="${register.country.equals(\"Canada\")}">selected
  	     </c:if>>Canada</option>
  	     
  	     <option <c:if test="${register.country.equals(\"Australia\")}">selected
  	     </c:if>>Australia</option>
  	     
   	     <option <c:if test="${register.country.equals(\"Singapore\")}">
   	     </c:if>>Singapore</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
  	    <label type="zipcode" class="col-sm-2 control-label">ZipCode</label>
  	     <div class="col-sm-4">
           <input type="zipcode" class="form-control" id="inputcode" placeholder="zipcode" name="zipcode" value="${register.zipcode}">
         </div>
  	 </div>
  	 
  	  <div class="form-group">
  	    <label type="email" class="col-sm-2 control-label">User Email</label>
  	     <div class="col-sm-4">
           <input type="email" class="form-control" id="email" placeholder="User Email" name="email" value="${register.email}">
         </div>
  	 </div>
  	 
  	  <div class="form-group">
   		<label for="inputstatus" class="col-sm-2 control-label">Gender</label>
    	  <div class="col-xs-4">
      	    <div class="radio">
  	       <label>
   		    <input type="radio" value="Male" checked id="user_Gender" name="gender" 
   		    <c:if test="${register.gender.equals(\"Male\")}">checked
   		    </c:if>>Male
  	       </label>
		    </div>
	       <div class="radio">
 	        <label>
    	     <input type="radio" value="Female" checked id="user_gender" name="gender"
    	     <c:if test="${register.gender.equals(\"Female\")}">checked
    	     </c:if>>Female
    	    </label>
	       </div>
   	 	  </div>
  	  </div>
  		
  		<div class="form-group">
   		 	<label for="inputlanguage" class="col-sm-2 control-label">Language</label>
  		     <div class="row">
               <div class="col-lg-6">
                  <div class="input-group">
                   <span class="input-group">
            		<input type="checkbox" name="language" value="English"
            		<c:if test="${register.language.equals(\"English\")}">checked
            		</c:if>>English
       				 <input type="checkbox" name="language" value="Hindi"
       				 <c:if test="${register.language.equals(\"Hindi\")}">checked
       				 </c:if>>Hindi
      				  <input type="checkbox" name="language" value="Punjabi"
      				  <c:if test="${register.language.equals(\"Punjabi\")}">checked
      				  </c:if>>Punjabi
        				<input type="checkbox" name="language" value="Other" 
        				<c:if test="${register.language.equals(\"Other\")}">checked
        				</c:if>>Other
      				</span>
      
    				</div><!-- /input-group -->
  				</div><!-- /.col-lg-6 -->
  				</div>
        </div>
        
      <div class="form-group">
    	<label for="about" class="col-sm-2 control-label">About</label>
    		<div class="col-xs-4">
      			<textarea class="form-control" rows="3" id="about" name="about">${register.about}</textarea>
    		</div>
  	  </div>
  	  
  	   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date of Birth</label>
    <div class="col-xs-10">
    	<input type="date" id="date_of_birth" name="date" value="${register.date}"></input>
    	
    	</div>
   </div>
   <div class="form-group">
  	 <label  class="col-sm-2 control-label">Relationship Status</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="relationshipstatus" name="relationshipstatus">
  	     <option>Select Status</option>
  	     <option <c:if test="${register.status.equals(\"Single\")}">selected
  	     </c:if>>Single</option>
  	     <option <c:if test="${register.status.equals(\"Married\")}">selected
  	     selected
  	     </c:if>>Married</option>
  	     <option <c:if test="${register.status.equals(\"Divorce\")}">selected
  	     </c:if>>Divorce</option>
   	     <option <c:if test="${register.status.equals(\"Other\")}">selected
   	     </c:if>>Other</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
  	 <label class="col-sm-2 control-label">Field of Study</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="studyfield" name="studyfield">
  	     <option>Select Field</option>
  	     <option <c:if test="${register.field.equals(\"Computer\")}">selected
  	     </c:if>>Computer</option>
  	     <option <c:if test="${register.field.equals(\"Business\")}">selected
  	     </c:if>>Business</option>
  	     <option <c:if test="${register.field.equals(\"Law\")}">selected
  	     </c:if>>Law</option>
   	     <option <c:if test="${register.field.equals(\"English\")}">selected
   	     </c:if>>English</option>
   	     <option <c:if test="${register.field.equals(\"Other\")}">
   	     </c:if>>Other</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
   		 	<label for="inputstatus" class="col-sm-2 control-label">Plan Applying</label>
    			<div class="col-xs-4">
      				<div class="radio">
  			<label>
   		<input type="radio" value="Free" checked id="user_status" name="user_status"
   		<c:if test="${register.plan.equals(\"Free\")}">selected
   		</c:if>>Free
  			</label>
					</div>
	<div class="radio">
 	 <label>
    	<input type="radio" value="Silver" checked id="user_status" name="user_status"
    	<c:if test="${register.plan.equals(\"Silver\")}">selected
    	</c:if>>Silver
   	 </label>
	</div>
	<div class="radio">
 	 <label>
    	<input type="radio" value="Gold" checked id="user_status" name="user_status"
    	<c:if test="${register.plan.equals(\"Gold\")}">selected
    	
    	</c:if>>Gold
   	 </label>
	</div>
   	 		</div>
  		</div>
  		
  		<div class="form-group">
   		 	<label for="inputlanguage" class="col-sm-2 control-label">Do you own these Things????</label>
  		     <div class="row">
               <div class="col-lg-6">
                  <div class="input-group">
                   <span class="input-group">
            		<input type="checkbox" name="things" value="phone"
            		<c:if test="${register.things.equals(\"Phone\")}">checked
            		</c:if>>Phone
       				 <input type="checkbox" name="things" value="automotive"
       				 <c:if test="${register.things.equals(\"Automotive\")}">checked
       				 </c:if>>Automotive
      				  <input type="checkbox" name="things" value="computer"
      				  <c:if test="${register.things.equals(\"Computer\")}">checked
      				  </c:if>>Computer
        				<input type="checkbox" name="things" value="tablet"
        				<c:if test="${regiater.things.equals(\"Tablet\")}">checked
        				</c:if>>Tablet
      				</span>
      
    				</div><!-- /input-group -->
  				</div><!-- /.col-lg-6 -->
  				</div>
        </div>
 
        <div class="form-group">
  	 <label  class="col-sm-2 control-label">Education Level</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="studyfield" name="educationlevel">
  	     <option value="">Select Level</option>
  	     <option value="Secondary" <c:if test="${register.educationlevel.equals(\"Secondary\")}">selected
  	     </c:if>>Secondary</option>
  	     <option value="High Secondary" <c:if test="${register.educationlevel.equals(\"High Secondary\")}">selected
  	     </c:if>>High Secondary</option>
  	     <option value="Graduation" <c:if test="${register.educationlevel.equals(\"Graduation\")}">selected
  	     </c:if>>Graduation</option>
   	     <option value="Post Graduation" <c:if test="${register.educationlevel.equals(\"Post Graduation\")}">selected
   	     </c:if>>Post Graduation</option>
   	     <option value="Phd" <c:if test="${register.educationlevel.equals(\"Phd\")}">selected
   	     </c:if>>Phd.</option>
	    </select>
  	   </div>
  	 </div>
  	 <br>
  	 <div class="col-xs-4">
  		<center><button type="submit" class="btn btn-success btn-lg">Save</button>
  			<button type="button" class="btn btn-danger btn-lg">Cancel</button></center>
  	</div>
  	</div>
     </fieldset>
	</form>		
	
  </body>
</html>