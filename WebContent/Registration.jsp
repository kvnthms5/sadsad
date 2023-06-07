<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orkut - Registration</title>
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
            border-color: rgb(240, 196, 64);
            box-shadow: 0 1px 5px rgb(240, 196, 64);
        }

        .submit {
            height: 50px;
            width: 334px;
            position: relative;
            top: 13px;
            background: #e9cb6e;
            background: linear-gradient(90deg, rgb(240, 196, 64) 50%, rgba(233, 203, 110, 1) 100%);
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

        .submit:hover {
            height: 50px;
            width: 334px;
            position: relative;
            top: 13px;
            background: #e9cb6e;
            background: linear-gradient(90deg, rgb(235, 197, 83) 100%, rgba(233, 203, 110, 1) 100%);
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

        #tandc {
            text-decoration: none;
            color: white;
        }

        #tandc:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
	<img src="https://github.com/kvnthms5/test/assets/132783404/86804a52-7250-4517-8259-cf73e4808f49" alt="Orkut logo" width="100px" style="position: absolute; top: 20px; left: 20px;" />
    <div style="position: relative; top: 20px;">
        <div class="center">
            <h1
                style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: 40px; color: white; text-align: center;">
                Create a new account</h1>
            <h3
                style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode'; font-weight: 500; color: #888B91; text-align: center; position: relative; bottom: 8px;">
                It's quick and easy.</h3>
        </div>

        <div class="center" style="position: relative; left: 160px; bottom: 20px;">
            <form action="Registration2.jsp" style="font-family: Arial, Helvetica, sans-serif;">
                <input class="box input" type="text" name="firstname" placeholder="First Name" required /> <br />
                <input class="box input" type="text" name="lastname" placeholder="Last Name" style="position: relative; top: 10px;" required /> <br />
                <input class="box input" type="text" name="userid" placeholder="User ID" style="position: relative; top: 20px;" required /><br />
                <input class="box input" type="text" name="emailid" placeholder="Email ID" style="position: relative; top: 30px;" required /> <br />
                <input class="box input" type="text" name="password" placeholder="Password" style="position: relative; top: 40px;" required /> <br />
                <div style="position: relative; top: 50px; left: 18px;">
                    <input type="checkbox" required />
                    <label for="checkbox" style="color: white;"> I agree to these <a href="#" id="tandc">Terms and Conditions</a>.</label> <br />
                </div>
                <button type="submit" class="submit" style="text-align: center; position: relative; top: 60px;"><span style="position: relative; right: 9px;">Sign Up</span></button>
            </form>
        </div>
    </div>

</body>

</html>