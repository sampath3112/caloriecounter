<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Landing Page</title>
    <script
      src="https://kit.fontawesome.com/886c1a5c67.js"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"
    />

    <style>
      a {
        margin: 25px;
        padding: 25px;
        border-radius: 15px;
        width: 20%;
        color: rgb(15, 15, 15);
        background-color: coral;
        font-size: larger;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
        font-weight: 700;
        display: block;
        text-decoration: none;
      }

      .container {
        border: black groove 1px;
        width: 90%;
        background-image: linear-gradient(30deg, #2b908f, #90ed7d);
        background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-food-western-food-steak-tomato-image_25128.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }

      h1 {
        color: rgb(5, 236, 75);
      }

      #total {
        background-color: coral;
        margin: 30px;
        padding: 30px;
        border-radius: 15px;
        font-size: larger;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
        font-weight: 700;
      }
    </style>
  </head>

  <body style="background-color: rgb(236, 236, 214);">
    <p>

      <%try{ 
      String msg=(String)request.getAttribute("msg");
    if(msg!=null)
      {%>
      <p>welcome <%=msg%>!!</p>
      <%}}
      catch(Exception e)
      {%>
        <p><%=e%></p>
      <%}%>

    </p>
    <center>
      <div class="container col-lg-6 my-4" style="box-shadow: 10px 10px 5px  grey;">
        <h1>Calories</h1>
        <br />

        <a href="/Project/breakfast">BreakFast</a>

        <a href="/Project/lunch">Lunch</a>

        <a href="/Project/snack">Snacks</a>

        <a href="/Project/dinner">Dinner</a>

        <a href="/Project/aboutMe" class="fa fa-user-circle" aria-hidden="true"
          >About Me</a
        >
        <label id="total" style="margin-left: 30px" onclick="func()"
          >Total Calories:0</label
        >
      </div>
    </center>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
