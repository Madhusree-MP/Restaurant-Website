// const buyNow = document.querySelector(".primary-button");
// buyNow.addEventListener('click',function(){
//     window.location.href="login.html";
// });
const singupBtn = document.querySelector(".signupBtn");
const loginBtn = document.querySelector(".loginBtn");
const moveBtn = document.querySelector(".moveBtn");
const singup = document.querySelector(".singup");
const login = document.querySelector(".login");

document.querySelector(".primary-button").addEventListener("click",function(){
    document.querySelector(".modalForm").classList.add("active");
    
    
});

document.querySelector(".close-btn").addEventListener("click",function(){
    document.querySelector(".modalForm").classList.remove("active");
});

loginBtn.addEventListener("click",()=>{
    moveBtn.classList.add("rightBtn");
    login.classList.add("loginForm");
    singup.classList.remove("singupForm");
    moveBtn.innerHTML = "Login";
})

singupBtn.addEventListener("click",()=>{
    moveBtn.classList.remove("rightBtn");
    login.classList.remove("loginForm");
    singup.classList.add("singupForm");
    moveBtn.innerHTML = "Singup";
})

// function login(loginForm){
//     if(loginForm.username.value && loginForm.password.value){
//         var username = document.getElementById("username").value;
        
//         document.write(username);
        
//     }
//     else
//     alert("Please Enter your Username & Password");
// }

const bottonScrollToTop = document.querySelector("#scroll-to-top");
bottonScrollToTop.addEventListener('click', function(){
    window.scrollTo(0,0);
});

const bottonScrollTop = document.querySelector(".primary-button");
bottonScrollTop.addEventListener('click', function(){
    window.scrollTo(0,0);
});

function subs(){
    var mail =  document.querySelector("#subscribe-email").value;
    var regx = /^([a-z 0-9\.-]+)@([a-z0-9]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
    
    if(regx.test(mail)){
        document.querySelector("#subscribe-text").innerHTML = "Subscribed Successfully";
        document.querySelector("#subscribe-text").style.visibilty = "visible";
        document.querySelector("#subscribe-text").style.color = "green";
    }
    else{
        document.querySelector("#subscribe-text").innerHTML = "Invalid";
        document.querySelector("#subscribe-text").style.visibilty = "visible";
        document.querySelector("#subscribe-text").style.color = "red";
    }
}

