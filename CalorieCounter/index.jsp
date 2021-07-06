<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Calorie Counter</title>
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
    <style>
      .container {
        border: black groove 1px;
        width: 100%;
        padding: 0px;
        margin: 0px;
        background-image: linear-gradient(30deg, #2b908f, #90ed7d);
        background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20190221/ourmid/pngtree-food-western-food-steak-tomato-image_25128.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }
    </style>
  </head>

  <body>
    <center style="color: coral">
      <div
        class="jumbotron centered"
        style="padding: 0px; margin: 50px; width: 70%"
      >
        <div
          class="container"
          style="padding-top: 150px; margin: 0px; width: 100%"
        >
          <div>
            <span>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                style="color: coral"
                width="100"
                height="100"
                fill="currentColor"
                class="bi bi-hourglass-split"
                viewBox="0 0 16 16"
              >
                <path
                  d="M2.5 15a.5.5 0 1 1 0-1h1v-1a4.5 4.5 0 0 1 2.557-4.06c.29-.139.443-.377.443-.59v-.7c0-.213-.154-.451-.443-.59A4.5 4.5 0 0 1 3.5 3V2h-1a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-1v1a4.5 4.5 0 0 1-2.557 4.06c-.29.139-.443.377-.443.59v.7c0 .213.154.451.443.59A4.5 4.5 0 0 1 12.5 13v1h1a.5.5 0 0 1 0 1h-11zm2-13v1c0 .537.12 1.045.337 1.5h6.326c.216-.455.337-.963.337-1.5V2h-7zm3 6.35c0 .701-.478 1.236-1.011 1.492A3.5 3.5 0 0 0 4.5 13s.866-1.299 3-1.48V8.35zm1 0v3.17c2.134.181 3 1.48 3 1.48a3.5 3.5 0 0 0-1.989-3.158C8.978 9.586 8.5 9.052 8.5 8.351z"
                />
              </svg>
            </span>
            <h1 class="display-3" style="display: inline; padding-top: 100px">
              Calorie counter
            </h1>
          </div>
          <p class="lead" style="color: white">Make your Calories in Track</p>

          <hr />
          <a
            class="btn btn-lg"
            style="background-color: coral"
            href="/Project/register"
            role="button"
            >Register</a
          >
          <a
            class="btn btn-dark btn-lg"
            type="button"
            href="/Project/login"
            role="button"
            >Login</a
          >
        </div>
      </div>
    </center>
  </body>
</html>
