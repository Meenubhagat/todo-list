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
   <body style="margin:0;background-color:purple;color:#fff;">
   
	<form class="form-horizontal" method="post" action="save">
	 <fieldset>  
      <h1 style="margin:20px;padding:10px;background-color:pink;color:black;">Registration Form</h1><br>
      <div class="container">
	   <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">User Name</label>
	     <div class="col-sm-4">
	      <input type="name" class="form-control" id="inputName" placeholder="Name" name="user_name">
	     </div>
	   </div>
	  
	<div class="form-group">
      <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
       <div class="col-sm-4">
         <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="user_password">
       </div>
    </div>
     
    <div class="form-group">
      <label  class="col-sm-2 control-label">User Full Name</label></div>
       <div class="col-sm-2">
        <input type="firstname" class="form-control" id="user_firstname" placeholder="FirstName" name="user_firstname">
       </div>
        <div class="col-sm-2">
          <input type="middlename" class="form-control" id="user_middlename" placeholder="MiddleName" name="user_middlename">
        </div>
         <div class="col-sm-2">
          <input type="lastname" class="form-control" id="user_lastname" placeholder="LastName" name="user_lastname">
         </div>
     
     
     <div class="form-group">
    	<label for="inputaddress" class="col-sm-2 control-label">User Address</label>
    	  <div class="col-xs-4">
      		 <textarea class="form-control" rows="3" id="user_Address" name="user_address" placeholder="Address"></textarea>
    	  </div>
   	 </div>
  	
  	<div class="form-group">
  	 <label type="country" class="col-sm-2 control-label" >Country</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="country" name="user_country">
  	     <option>Select Country</option>
  	     <option>India</option>
  	     <option>Canada</option>
  	     <option>Australia</option>
   	     <option>Singapore</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
  	    <label type="zipcode" class="col-sm-2 control-label">ZipCode</label>
  	     <div class="col-sm-4">
           <input type="zipcode" class="form-control" id="inputcode" placeholder="zipcode" name="user_zipcode">
         </div>
  	 </div>
  	 
  	  <div class="form-group">
  	    <label type="email" class="col-sm-2 control-label">User Email</label>
  	     <div class="col-sm-4">
           <input type="email" class="form-control" id="email" placeholder="User Email" name="user_email">
         </div>
  	 </div>
  	 
  	  <div class="form-group">
   		<label for="inputstatus" class="col-sm-2 control-label">Gender</label>
    	  <div class="col-xs-4">
      	    <div class="radio">
  	       <label>
   		    <input type="radio" value="Male" checked id="user_Gender" name="user_gender">Male
  	       </label>
		    </div>
	       <div class="radio">
 	        <label>
    	     <input type="radio" value="Female" checked id="user_gender" name="user_gender">Female
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
            		<input type="checkbox" name="language" value="English">English
       				 <input type="checkbox" name="language" value="Hindi">Hindi
      				  <input type="checkbox" name="language" value="Punjabi">Punjabi
        				<input type="checkbox" name="language" value="Other">Other
      				</span>
      
    				</div><!-- /input-group -->
  				</div><!-- /.col-lg-6 -->
  				</div>
        </div>
        
      <div class="form-group">
    	<label for="about" class="col-sm-2 control-label">About</label>
    		<div class="col-xs-4">
      			<textarea class="form-control" rows="3" id="about" name="about"></textarea>
    		</div>
  	  </div>
  	  
  	   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date of Birth</label>
    <div class="col-xs-10">
    	<input type="date" id="date_of_birth" name="date_of_birth"></input>
    	</div>
   </div>
   <div class="form-group">
  	 <label  class="col-sm-2 control-label">Relationship Status</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="relationshipstatus" name="relationshipstatus">
  	     <option>Select Status</option>
  	     <option>Single</option>
  	     <option>Married</option>
  	     <option>Divorce</option>
   	     <option>Other</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
  	 <label class="col-sm-2 control-label">Field of Study</label>
  	   <div class="col-xs-4">
  	    <select class="form-control" id="studyfield" name="studyfield">
  	     <option>Select Field</option>
  	     <option>Computer</option>
  	     <option>Business</option>
  	     <option>Law</option>
   	     <option>English</option>
   	     <option>Other</option>
	    </select>
  	   </div>
  	 </div>
  	 
  	 <div class="form-group">
   		 	<label for="inputstatus" class="col-sm-2 control-label">Plan Applying</label>
    			<div class="col-xs-4">
      				<div class="radio">
  			<label>
   		<input type="radio" value="Free" checked id="user_status" name="user_status">Free
  			</label>
					</div>
	<div class="radio">
 	 <label>
    	<input type="radio" value="Silver" checked id="user_status" name="user_status">Silver
   	 </label>
	</div>
	<div class="radio">
 	 <label>
    	<input type="radio" value="Gold" checked id="user_status" name="user_status">Gold
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
            		<input type="checkbox" name="things" value="phone">Phone
       				 <input type="checkbox" name="things" value="automotive">Automotive
      				  <input type="checkbox" name="things" value="computer">Computer
        				<input type="checkbox" name="things" value="tablet">Tablet
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
  	     <option value="secondary">Secondary</option>
  	     <option value="hs">High Secondary</option>
  	     <option value="graduation">Graduation</option>
   	     <option value="postgraduation">Post Graduation</option>
   	     <option value="phd">Phd.</option>
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