<!DOCTYPE html>
<html lang="en">

<head>
  <title>Snacks</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <link rel="stylesheet" href="style.css" />
  <script>
    var im = 1;
    var Juice = [
      [
        "Mango Juice- 165cal/100ml",
        "https://www.dabur.com/realfruitpower/images/img-Benefits-of-mango-juice.jpg",
        165,
      ],
      [
        "Pineapple Juice- 60cal/100ml",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRha2nBWaXOXE2EKjwNz3o1KyRe17NGbnQCEA&usqp=CAU",
        60,
      ],
      [
        "Orange Juice- 47cal/100ml",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn8bjDe1H7xBXaKyQ4GT2dcmnWxt_7c4_wdg&usqp=CAU",
        47,
      ],
    ];
    var im1 = 1;
    var fastFood = [
      [
        "Fries- 312cal/100g",
        "https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries--500x375.jpg",
        312,
      ],
      [
        "Veg Pizza- 215cal/1Medium",
        "https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe.jpg",
        312,
      ],
    ];

    var im2 = 1;
    var chat = [
      [
        "Panipuri- 329cal/6 pieces",
        "https://previews.123rf.com/images/beats1/beats11809/beats1180900356/107699636-pani-puri-indian-street-food-golgappe-chat-item-india.jpg",
        329,
      ],
      [
        "Bhel Puri- 289cal/100g",
        "https://envato-shoebox-0.imgix.net/8666/9c44-8477-42ad-b36e-b388efc23515/DSC_6697.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=1600&s=a5def021da23c0540f733361b34d3938",
        289,
      ],
    ];

    function functionNext() {
      if (im == 2) {
        im = 0;
      }
      var x = document.getElementById("p");
      x.src = Juice[im][1];
      document.getElementById("Juice-title").innerHTML = Juice[im][0];
      im++;
    }

    function functionNext1() {
      if (im1 == 2) {
        im1 = 0;
      }
      var x = document.getElementById("p1");
      x.src = fastFood[im1][1];
      document.getElementById("fastFood-title").innerHTML = fastFood[im1][0];
      im1++;
    }

    function functionNext2() {
      if (im2 == 2) {
        im2 = 0;
      }
      var x = document.getElementById("p2");
      x.src = chat[im2][1];
      document.getElementById("Chat-title").innerHTML = chat[im2][0];
      im2++;
    }
    var x = 0;

    function functionImg(e) {
      e = e || window.event;
      e = e.target || e.srcElement;
      if (e.nodeName === "IMG") {
        if (e.id == "p") {
          let index = Juice[im - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + Juice[im - 1][0].slice(0, index)
            )
          );
          console.log(x);
          x = x + y * Juice[im - 1][2];
          console.log(x);
        }
        if (e.id == "p1") {
          let index = fastFood[im1 - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + fastFood[im1 - 1][0].slice(0, index)
            )
          );
          console.log(x);
          x = x + y * fastFood[im1 - 1][2];
          console.log(x);
        }
        if (e.id == "p2") {
          let index = chat[im2 - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + chat[im2 - 1][0].slice(0, index)
            )
          );
          console.log(x);
          x = x + y * chat[im2 - 1][2];
          console.log(x);
        }
        document.getElementById("tc").value = x;
      }
    }
  </script>
</head>

<body>
  <div class="container">
    <div class="container m-0 p-0">
      <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
          <a class="nav-link fa fa-home fa-2x py-3" href="/Project/home"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link py-3" aria-current="page" href="#">Snacks</a>
        </li>
      </ul>
    </div>
    <div class="container">
      <h1>Snacks</h1>
      <h4>Click Images to count Calories</h4>
    </div>

    <div class="row" style="margin-top: 30px">
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p"
            src="https://www.dabur.com/realfruitpower/images/img-Benefits-of-mango-juice.jpg" alt="next image"
            width="300px" height="300px" onclick="functionImg()" />
          <div class="card-body">
            <h5 class="card-title" style="text-align: center">Juice</h5>
            <div id="Juice-title" style="text-align: center">
              Mango Juice- 165cal/100ml
            </div>
          </div>
          <div class="card-body">
            <center>
              <button type="button" onclick="functionNext()" class="btn btn-outline-secondary m-3 px-5"
                style="font-size: 100%">
                Next
              </button>
            </center>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p1"
            src="https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries--500x375.jpg"
            alt="next image" width="300px" height="300px" onclick="functionImg()" />
          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Fast Food</h5>
              <div id="fastFood-title" style="text-align: center">
                Fries- 312cal/100g
              </div>
            </div>
            <div class="card-body">
              <center>
                <button type="button" onclick="functionNext1()" class="btn btn-outline-secondary m-3 px-5"
                  style="font-size: 100%">
                  Next
                </button>
              </center>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p2"
            src="https://previews.123rf.com/images/beats1/beats11809/beats1180900356/107699636-pani-puri-indian-street-food-golgappe-chat-item-india.jpg"
            alt="next image" width="300px" height="300px" onclick="functionImg()" />

          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Chat</h5>
              <div id="Chat-title" style="text-align: center">
                Panipuri- 329cal/6 pieces
              </div>
            </div>
            <div class="card-body">
              <center>
                <button type="button" onclick="functionNext2()" class="btn btn-outline-secondary m-3 px-5"
                  style="font-size: 100%">
                  Next
                </button>
              </center>
            </div>
          </div>
        </div>
      </div>
    </div>

    <center>
      <div>
        <label id="toc">Total calories</label><input id="tc" type="text" value="0" readonly />
      </div>
    </center>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
    integrity="sha384SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
    integrity="sha384j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</body>

</html>