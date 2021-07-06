<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Landing Page</title>
  <link rel="stylesheet" href="about.css" />
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
    integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />
</head>

<body style="color: rgb(212, 209, 36);background-color: rgb(236, 236, 214);">
  <centre>
    <div class="container col-sm-12 my-4" style="box-shadow: 10px 10px 5px  grey;">
      <div>
        <h2>About Me...</h2>
        <form action="/Project/Entries" method="POST">
          <label style="margin-right:10px;"> Age: </label>
          <input type="number" name="age" value="0" style="margin-right:10px;" />(yrs)<input type="text" value="0"
            style="margin-right:10px;margin-left:10px;" />(m)
          <br />
          <br />

          <label style="margin-right:10px;">Weight:</label>
          <input type="number" name="kg" class="weight" value="0" style="margin-right:10px;" />(kgs)
          <input class="weight" name="grams" type="number" value="0" style="margin-right:10px;margin-left:10px;" />(g)
          <br />
          <br />

          <label style="margin-right:10px;">Height:</label>
          <input class="height" name="ft" type="number" value="0" style="margin-right:10px;" />(ft)
          <input class="height" name="in" type="number" value="0" style="margin-right:10px;margin-left:10px;" />(in)
          <br />
          <br />

          <label style="margin-right:10px;">Gender:</label>
          <input type="radio" name="Gender" required value="Male" />Male
          <input type="radio" name="Gender" required value="Female" />Female
          <br />
          <br />
          <input type="submit" onclick="BMI()" id="sub" value="submit" />
        </form>

        <label class="total" id="bmi" style="margin-left: 1px">BMI</label>
        <span>

          <% String msg=(String)request.getAttribute("msg"); if(msg!=null) {%>
            <span>
              <%=msg%>
                </p>
                <%}%>

            </span>

            <a href="/Project/home" style="font-size:2em;margin-right: 50px;color: coral ;text-decoration: none;"><i
                class="fas fa-home-lg-alt"></i></a>

            <label class="total">Total Calories:0</label>
      </div>
    </div>
  </centre>

</body>

</html>