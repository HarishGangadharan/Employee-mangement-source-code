<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Home</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="ff.css">
   </head>
   <body>
      <header>
         <table>
            <tr>
               <th><img class= "image" onclick="document.getElementById('id02').style.display='block'" title="Home" src="images/home.png"/></th>
 <th>
<h2> HOME</h2>

               </th>
               <th>
                  <a class = "out" onclick=document.getElementById('logout').submit();> <img src = images/off.png /></a>
               </th>
            </tr>
         </table>
      </header>
      <form id = "logout" method = "post" action = "AdminController">
         <input type="hidden" name="choice" value="Logout">
      </form>
      <span id="id01" class="modal">
         <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close ">&times;</span>
         <div class="container">
            <>
         </div>
      </span>
      <span id="id02" class="modal">
         <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close ">&times;</span>
         <div class="container">
            <form  action = "EmployeeController" method ="post">
               <input class = "employee" type="submit"   name = "choice" value = "Employee"/>
            </form>
            <form  action = "ClientController" method ="post">
               <input class = "employee" type="submit"   name = "choice" value = "Client"/>
            </form>
            <form  action = "ProjectController" method ="post">
               <input class = "employee" type="submit"   name = "choice" value = "Project"/>
            </form>
         </div>
      </span>
      <section>
         <div class="slideshow-container">
            <div class="mySlides fade">
               <img src="images/1.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
               <img src="images/final.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
               <img src="images/4.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
               <img src="images/3.jpg" style="width:100%">
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
         </div>
         <br>
         <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
            <span class="dot" onclick="currentSlide(4)"></span> 
         </div>
         <script>
            var slideIndex = 1;
            showSlides(slideIndex);
            
            function plusSlides(n) {
              showSlides(slideIndex += n);
            }
            
            function currentSlide(n) {
              showSlides(slideIndex = n);
            }
            
            function showSlides(n) {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("dot");
              if (n > slides.length) {slideIndex = 1}    
              if (n < 1) {slideIndex = slides.length}
              for (i = 0; i < slides.length; i++) {
                  slides[i].style.display = "none";  
              }
              for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
              }
              slides[slideIndex-1].style.display = "block";  
              dots[slideIndex-1].className += " active";
            }
         </script>
      </section>
      <%@ include file="footer.html" %>
   </body>
</html>
