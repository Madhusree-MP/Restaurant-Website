<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Caveat:400,700&subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/3d2cfa4cea.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Freshy Restaurant</title>
    <link rel="stylesheet" href="index.css" type="text/css">
    <!-- <link rel="stylesheet" href="/index.css" type="text/css" > -->
    
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <header>
        <% 
         String name = (String)session.getAttribute("fname");
         if(name==null){
         %>
        <nav>
            <a href="index.jsp"><img id="logo" src="https://mobirise.com/extensions/organicamp/assets/images/logo1.jpg" alt="logo" /></a>

            <div>
                <a class="menu-item" href="index.jsp" >Home</a>
                <a class="menu-item" href="#steps-section-wrapper">Speciality</a>
                <a class="menu-item" href="#testimonials-section">Review</a>
                <a class="menu-item" href="#reserve-section" >Reservation</a>
                <a class="menu-item" href="#address-section">Contact</a>
                <a type="button" class="primary-button" >Login</a>
                <button onclick ="location.href='buyNow.jsp'" class="primary-button">View Menu</button>
                
                
            </div>
        </nav>
        
        <% }else if(name!=null){ %>
        <nav>
            <img id="logo" src="https://mobirise.com/extensions/organicamp/assets/images/logo1.jpg" alt="logo" />

            <div>
                <a class="menu-item" href="index.jsp" >Home</a>
                <a class="menu-item" href="#steps-section-wrapper">Speciality</a>
                <a class="menu-item" href="#testimonials-section">Review</a>
                <a class="menu-item" href="#reserve-section" >Reservation</a>
                <a class="menu-item" href="#address-section">Contact</a>
                <button onclick ="location.href='buyNow.html'" class="primary-button">View Menu</button>
                <a class="logout-btn" href="logout">Logout</a>
                <a id="session" class="menu-item"><%=session.getAttribute("fname")%></a>
            </div>
        </nav>

       <%}%>
        
        <div class="modalForm">
            <div class="close-btn">&times;</div>
                <div class="actionBtns">
                    <button class="actionBtn signupBtn">Signup</button>
                    <button class="actionBtn loginBtn">Login</button>
                    <button class="moveBtn">Signup</button>
                </div>
                <div class="userForm">
                    <form method="post" action="signup" class="form singup singupForm">
                        <div class="inputGroup">
                            <input type="text" name="fname" placeholder="First name" autocomplete="offf" required>
                        </div>
                        <div class="inputGroup">
                            <input type="text" name="lname" placeholder="Last name" autocomplete="offf" required>
                        </div>
                        <div class="inputGroup">
                            <input type="email" name="email" placeholder="Email address" autocomplete="offf" required>
                        </div>
                        <div class="inputGroup">
                            <input type="password" name="newpwd" placeholder="Create new password" autocomplete="offf" required>
                        </div>
                        <div class="inputGroup">
                            <input type="password" name="cnfpwd" placeholder="Confirm password" autocomplete="offf" required>
                        </div>
                        <input type="submit" class="submitBtn" value="Signup" />
                        
                        
                    </form>
    
                    <form method="post" action="login" class="form login">
                        <div class="inputGroup">
                            <input type="email" name="email" placeholder="Email address" autocomplete="offf" required>
                        </div>
                        <div class="inputGroup">
                            <input type="password" name="pwd" placeholder="Password" autocomplete="offf" required>
                        </div>
                        <input type="submit" class="submitBtn" value="Login" />
                        
                    </form>
                </div>
            </div>
    
        <section id="landing-section">
            <div id="main-text-wrapper">
                
                <h1>Freshy Restaurant</h1>
                <p>Vegetables are important sources of many nutrients, including potassium, dietary fiber, folate (folic acid), vitamin A, and vitamin C. Diets rich in potassium may help to maintain healthy blood pressure.With nutrition, all the vital functions of the body are connected. It is the source of the development of tissues and cells, their constant renewal, the saturation of man with energy.</p>
            </div>
        </section>
    </header>

    
    <main>
        <button id="scroll-to-top">
            <i class="material-icons">arrow_upward</i>
        </button>
        <section id="steps-section-wrapper">
            <p id="fresh-food-heading">Fresh Food</p>
            <h3>Our Special Dishes!</h3>
        <div id="steps-section">
            
            <div id="first-step" class="step-item">
                <img class="speciality-img" src="images/burger.jpg">
                <h3>Chicken Burger</h3>
                <span class="price">Price: $19.99</span>
                <span><button onclick ="location.href='buyNow.jsp'" class="primary-button">View Menu</button></span>
            </div>
            <div id="second-step" class="step-item">
                <img class="speciality-img" src="images/pizza.jpg">
                <h3>Pizza</h3>
                <span class="price">Price: $19.99</span>
                <button onclick ="location.href='buyNow.jsp'" class="primary-button">View Menu</button>
            </div>
            <div id="third-step" class="step-item">
                <img class="speciality-img" src="images/cream.jpg">
                <h3>Ice Cream</h3>
                <span class="price">Price: $6.99</span>
                <button onclick ="location.href='buyNow.jsp'" class="primary-button">View Menu</button>
            </div>
            <div id="fourth-step" class="step-item">
                <img class="speciality-img" src="images/apple.jpg">
                <h3>Apple Juice</h3>
                <span class="price">Price: $6.99</span>
                <button onclick ="location.href='buyNow.jsp'" class="primary-button">View Menu</button>
            </div>
        </div>
        </section>

        <section id="store-section">
            <p id="fresh-food-heading">Fresh Food</p>
            <h3>Our Restaurant!</h3>
            
            <div id="store-items-wrapper">
                <div class="store-item">
                    <div class="icon-wrapper"><i class="fa fa-camera"></i></div>
                    <h3>Fresh Vegetables</h3>
                    <p>Use for cooking several types of vegetable oil.</p>
                </div>
                <div class="store-item">
                    <div class="icon-wrapper"><i class="fa-rocket fa"></i></div>
                    <h3>High Quality</h3>
                    <p>This is the best source of essential fatty acids for the body.</p>
                </div>
                <div class="store-item">
                    <div class="icon-wrapper"><i class="fab fa-twitter"></i></div>
                    <h3>Sale</h3>
                    <p>It is very good, if in the kitchen there will always be several bottles with different oils.</p>
                </div>
                <div class="store-item">
                    <div class="icon-wrapper"><i class="fab fa-weixin"></i></div>
                    <h3>Best Price</h3>
                    <p>Remember that unrefined oils are not suitable for heat treatment.</p>
                </div>
            </div>
        </section>

        <section id="testimonials-section">
            <p id="testimonials-heading">Fresh Food</p>
            <h3>Our Restaurant!</h3>
            <p id="testimonials-desc">According to experts, any habit can be formed in 21 days. The same statement applies to healthy eating.</p>

            <div id="testimonials-wrapper">
                <div class="testimonial-item">
                    <img src="https://mobirise.com/extensions/organicamp/assets/images/face5.jpg" />
                    <p class="testimonial-message">Sales consultants are very polite. Many of the products have tried and are ready to prompt and recommend to customers. The staff shows that they completely share the philosophy of proper nutrition, if you can say so.</p>
                    <h3 class="testimonial-by">MONICA PINK</h3>
                    <p class="job-role">Cook</p>
                </div>
                <div class="testimonial-item">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/3/33/Mark_Kassen%2C_Tony_C%C3%A1rdenas_and_Chris_Evans_%28cropped%29.jpg" />
                    <p class="testimonial-message">The assortment is very wide. From useful organic oils, cereals and teas to specific products for vegetarians, such as sausages and pies without meat.</p>
                    <h3 class="testimonial-by">CHRIS HALPERT</h3>
                    <p class="job-role">Seller</p>
                </div>
                <div class="testimonial-item">
                    <img src="https://mobirise.com/extensions/organicamp/assets/images/face7.jpg" />
                    <p class="testimonial-message">I want to say a huge thank you to the management of the store and all its employees, I'm not a vegetarian, it would seem that the store is not for me, but it's not so, any person who comes here will find something useful.</p>
                    <h3 class="testimonial-by">PETER GOODMAN</h3>
                    <p class="job-role">Manager</p>
                </div>
            </div>
        </section>

        <section id="follow-section">
            <div id="left-section">
                <img src="https://mobirise.com/extensions/organicamp/assets/images/19.jpg" alt="Strawberry" />
            </div>
            <div id="right-section">
                <div id="text-wrapper">
                    <h3>Follow Us</h3>
                    <p>A wide range of products; many unusual and tasty products; courteous staff.</p>
                    <form method="post" action="subscribe">
                        <input id="subscribe-email" name="email" placeholder="Your Email" />
                        <button onclick="subs()" id="subscribe-btn" type="submit">Subscribe</button>
                        <p id="subscribe-text"></p>
                    </form>
                    
                </div>
            </div>
        </section>

        <section id="stats-section">
            <div id="stats-wrapper">
                <div class="stats-item">
                    <h3>7</h3>
                    <p>Year of experiences</p>
                </div>
                <div class="stats-item">
                    <h3>123k</h3>
                    <p>Happy Customers</p>
                </div>
                <div class="stats-item">
                    <h3>72k</h3>
                    <p>100% Satisfaction</p>
                </div>
                <div class="stats-item">
                    <h3>13k</h3>
                    <p>Detox Smoothies</p>
                </div>
            </div>
        </section>

        <section id="reserve-section">
            
            <div id="reservation-wrapper">
                <p id="fresh-food-heading">Fresh Food</p>
                    <h3>Book Your Table!</h3>

                <form method="post" action="reserve">
                    <p>No of people:</p>
                <select name="noOfPeople" id="reservation-box">
                    <option selected disabled>Number Of People</option>
                    <option value="1">1 person</option>
                    <option value="2">2 people</option>
                    <option value="3">3 people</option>
                    <option value="4">4 people</option>
                    <option value="5">5 people</option>
                    <option value="6">6 people</option>
                    <option value="7">7 people</option>
                    <option value="7+">7+ people</option>
                </select>
                <p>Date:</p>
                <input id="reservation-box" type="date" name="date" placeholder="Date">
                <p>Time:</p>
                <input id="reservation-box" type="time" name="time" placeholder="Time"><br>
                <input type="submit" id="table-btn" value="Book a Table">
                </form>    
            </div>
            <div id="reserve-img-wrapper">
                <img src="https://images.unsplash.com/photo-1599458252573-56ae36120de1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMHRhYmxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80" alt="table">
            </div>            
        </section>

        <section id="address-section">
            <div id="address-wrapper">
                <div>
                    <p class="green-heading">Contact Us</p>
                    <h3 class="section-heading">Address Information</h3>
                    <p class="section-description">Overeating is one of the most common causes of overweight and digestive problems.</p>

                    <h4 class="address-heading">Chennai Store</h4>
                    <p class="address-lines">
                        Madhusree Campus Building <br>6th floor Chennai<br>Monday to Friday : 9am to 8pm</p>

                    <h4 class="address-heading">Mumbai Store</h4>
                    <p class="address-lines">
                        Madhusree Campus Building <br>6th floor Mumbai<br>Monday to Friday : 9am to 8pm</p>
                </div>
                <div>
                    <p class="green-heading">Meet Our Team</p>
                    <h3 class="section-heading">Get In Touch</h3>
                    <p class="section-description">The task of proper nutrition - to remove from the diet harmful food and enrich it useful.</p>

                    <form method="post" action="feedback">
                        <div class="form-control">
                            <input id="name" class="input-box" type="text" name="name" placeholder="Name" required />                
                        </div>
                        <div class="form-control">
                            <input id="phone" class="input-box" type="text" name="phone" placeholder="Phone" required />    
                        </div>
                        <div class="form-control">
                            <input id="email" class="input-box" type="email" name="email" placeholder="E-mail" required />
                        </div>
                        
                        <textarea class="input-box" placeholder="Message" name="message" required></textarea>
                        <input type="submit" id="btn-submit" class="primary-button" value="Submit Now">
                    </form>
                </div>
            </div>
        </section>
        <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.0036733182883!2d80.0408836143044!3d12.971616518388899!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a52f4d07355bab5%3A0xbb6063169c4ed4d9!2sChennai%20Institute%20of%20Technology!5e0!3m2!1sen!2sin!4v1658899669966!5m2!1sen!2sin" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        
    </main>

    <footer>© Copyright 2022 Madhusree - All Rights Reserved</footer>

    
    <script src="index.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	if (status == "failed"){
		swal("Sorry","Wrong username or password","error");
	}
	
	</script>
</body>
</html>