<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>SleepTracker</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
      integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/styles.css" />
    <style>
      .container {
        border: black groove 1px;
        width: 100%;
        padding: 10px;
        margin: 0px;
        background-image: linear-gradient(30deg, #2b908f, #90ed7d);
        background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-food-western-food-steak-tomato-image_25128.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }
    </style>
  </head>

  <body style="color: coral;background-color: rgb(236, 236, 214);">
   
    <center style="text-align: center;">
      <div class="row">
        <div class="col-sm-6 offset-3">
          <div class="container m-5" style="box-shadow: 10px 10px 5px  grey;">
            <h1 >Login</h1>
      
            <div class="row">
              <div class="col-sm-6 offset-3">
                <div class="">
                  <div class="">
                    <!-- Makes POST request to /login route -->
                    <form action="/Project/loginDB" method="POST">
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input
                          type="email"
                          class="form-control"
                          name="email"
                          required
                        />
                      </div>
                      <div class="form-group">
                        <label for="password">Password</label>
                        <input
                          type="password"
                          class="form-control"
                          name="password"
                          required
                        />
                      </div>
                      <button type="submit" class="btn" style="background-color: coral;">Login</button>
                      <p>
      
                        <% String msg=(String)request.getAttribute("msg");
                      if(msg!=null)
                        {%>
                        <p><%=msg%></p>
                        <%}%>
      
                      </p>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </center>
  
  </body>
</html>
