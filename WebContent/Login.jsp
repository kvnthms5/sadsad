<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Orkut - Login</title>
  <style>
    body {
        background-color: #121418;
    }

    .box {
        border-radius: 6px
    }

    .center {
        margin: auto;
        width: 50%;
        border-radius: 5px;
        padding: 10px;
    }

    .input {
        height: 50px;
        width: 315px;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        background-color: #222222;
        color: aliceblue;
        border-radius: 4px;
        border-bottom: 0px;
        border-right: 0px;
        font-size: 16px;
        padding-left: 15px;
    }

    .input:focus {
        outline: none;
        border-color: rgb(1, 194, 154);
        box-shadow: 0 1px 5px rgb(1, 194, 154);
    }

    .submit {
        height: 50px;
        width: 334px;
        position: relative;
        top: 13px;
        background: rgb(1, 194, 154);
        background: linear-gradient(90deg, rgba(1, 194, 154, 1) 34%, rgba(233, 203, 110, 1) 100%);
        border-radius: 4px;
        border: 0;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 17px;
        font-weight: 500;
        padding-left: 18px;
        padding-bottom: 6px;
        text-align: left;
        cursor: pointer;
    }
    
    .submit:hover{
        height: 50px;
        width: 334px;
        position: relative;
        top: 13px;
        background: rgb(1, 194, 154);
        background: linear-gradient(90deg, rgba(1, 194, 154, 1) 60%, rgba(233, 203, 110, 1) 100%);
        border-radius: 4px;
        border: 0;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 17px;
        font-weight: 500;
        padding-left: 18px;
        padding-bottom: 6px;
        text-align: left;
        cursor: pointer;
    }

    .signinwith {
        height: 55px;
        width: 334px;
        position: relative;
        top: 13px;
        color: rgb(230, 230, 230);
        border-radius: 4px;
        border: 1px solid rgba(1, 194, 154, 1);
        background-color: transparent;
        background-origin: border-box;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 17px;
        padding-left: 18px;
        padding-bottom: 2px;
        text-align: left;
        cursor: pointer;
    }

    .signinwith:hover {
        outline: none;
        border-color: rgb(1, 194, 154);
        box-shadow: 0 1px 5px rgb(1, 194, 154);        
    }
    
    a {
        color: white; 
        font-family: Arial, Helvetica, sans-serif; 
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    #forgotpassword {
        position: absolute; 
        left: 625px; 
        bottom: 75px;
    }

    #signup {
      position: absolute;
      left: 1220px;
      bottom: 602px;
    }
  </style>
</head>

<body>
  <img src="https://github.com/kvnthms5/test/assets/132783404/86804a52-7250-4517-8259-cf73e4808f49" alt="Orkut logo" width="100px" style="position: absolute; top: 20px; left: 20px;">
  <div style="position: relative; top: 90px;">
    <div class="center">
      <h1
        style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: 40px; color: white; text-align: center;">
        Lo<span style="font-family: sans-serif;">g</span>in to Your Account</h1>
      <h3
        style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode'; font-weight: 500; color: #888B91; text-align: center; position: relative; bottom: 8px;">
        Connect with over a million people from around the world.</h3>
    </div>

    <div class="center" style="position: relative; right: 63px;">
      <form action="test.jsp" style="font-family: Arial, Helvetica, sans-serif;">
        <input class="box input" type="text" name="userid" placeholder="User ID" /><br />
        <div style="position: relative; top: 8px;">
          <input class="box input" type="text" name="password" placeholder="Password" /> <br />
          <button type="submit" class="submit">Login to Your Account<span style="font-size: 20px; position: relative;top: 2px; left: 112px;">➜</span></button>
        </div>
      </form>
    </div>
    
    <div style="position: relative; left: 760px; bottom: 181px; width: 334px;">
      <form action="https://accounts.google.com/">
        <button type="submit" class="signinwith">
          <img src="https://github.com/kvnthms5/test/assets/132783404/95292d75-7ffc-4550-88a6-e9d2419f3fe3" alt="Google logo" height="17px" style="position: relative; top: 2px;">
          <span style="position: relative; left: 15px;">Sign in with Google</span>
        </button>
      </form>      
      <form action="https://www.facebook.com/login/">
        <button type="submit" class="signinwith" style="position: relative; top: 22px;">
          <img src="https://github.com/kvnthms5/test/assets/132783404/862aed45-49e6-4506-9081-f7bc7b1a3dd5" alt="Facebook logo" height="33px" style="position: relative; top: 2px; right: 8px;">
          <span style="position: relative; bottom: 7px;">Sign in with Facebook</span>
        </button>
      </form>
      <form action="https://www.apple.com/in/shop/bag">
        <button type="submit" class="signinwith" style="position: relative; top: 30px;">
          <img src="https://github.com/kvnthms5/test/assets/132783404/d313f8a1-844b-47d8-9540-f925ae9d97c4" alt="Apple logo" height="20px" style="position: relative; top: 2px; left: 1px;">
          <span style="position: relative; left: 15px;">Sign in with Apple Account</span>
        </button>
      </form>
    </div>
  </div>
  
  <hr width="182px" style="transform: rotate(90deg); position: relative; left: 10px; bottom: 161px;">
  <a href="Registration.jsp" id="signup">Create Account</a>

</body>
</html>