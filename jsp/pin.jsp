<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>

        <meta charset="UTF-8" />
        
       



        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="demo.css" />
        <link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="stylesheet" type="text/css" href="animate-custom.css" />
    </head>
    <body>
      
            <section>				
                <div id="container_demo" >
                 
                   
 <a class="hiddenanchor" id="topin"></a>
                    <div id="wrapper">





                        <div id="login" class="animate form">

                            <form  action="mysuperscript.php" autocomplete="on"> 
<center>
                                <h1>Login via Pin</h1> 
                                <p> 
                                    <label for="username" class="uname">Quick Access Pin </label><br>
                                   <input class="pin" name="password"   required="required" type="password" data-max=1 oninput="skipIfMax(this)" /> 
   <input class="pin" name="password" required="required" type="password"  data-max=1 oninput="skipIfMax(this)"   /> 
   <input class="pin" name="password" required="required" type="password"  data-max=1 oninput="skipIfMax(this)"  /> 
   <input class="pin" name="password" required="required" type="password" data-max=1 oninput="skipIfMax(this)"  /> 
   <input class="pin" name="password" required="required" type="password"  data-max=1 oninput="skipIfMax(this)"  /> 
   <input class="pin" name="password" required="required" type="password" maxlength = "1"   /> 
                                </p>
                               
						

<table>
<tr>
<th>

			
                                <p class="login button"> 
            <input type="hidden" name="choice" value="Login">
                                    <input class = "loginbutton" type="submit"  value="Login" /> 
 
								</p>
</th>
<th> 
<p> 
								
									<a class= "Quickpin" href="pin.jsp" >Create PIN </a>
								</p>
    
</th>
</table>     
                              
 <p class="change_link">  
									
									<a href="index.jsp" class="to_register">Login via Email</a>
								</p>
 
				</center>		
                            </form>
                        </div>





                    </div>
                </div>  
            </section>


<script>
function skipIfMax(element) {
  max = parseInt(element.dataset.max)
  
  
  if (element.value.length >= max && element.nextElementSibling) {
    element.nextElementSibling.focus();  
  }
}
       </script>
    </body>

</html>
