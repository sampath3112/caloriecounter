<!DOCTYPE html>
<html lang="en">

<head>
  <title>BreakFast</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

  <link rel="stylesheet" href="style.css" />

  <script>
    var im = 1;
    var fruits = [
      [
        "Apples- 52cal/100gms",
        "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/05/13/35552.jpeg",
        52,
      ],
      [
        "Grapes- 67cal/100gms",
        "https://i0.wp.com/www.pingminghealth.com/wp-content/uploads/2009/07/grapes.jpg?fit=800%2C600&ssl=1",
        67,
      ],
      [
        "bananas- 89cal/100gms",
        "https://kj1bcdn.b-cdn.net/media/37645/banana.png",
        89,
      ],
    ];
    var im1 = 1;
    var tiffins = [
      [
        "Idly- 39cal/piece",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSmHg_ovxFI-h7lJXkv4wc04CQfT3EubifXQ&usqp=CAU",
        39,
      ],
      [
        "Dosa- 133cal/piece",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhmvWCctnTtaG2N7njrj7KH99K1bS-fLE3ew&usqp=CAU",
        133,
      ],
      [
        "Upma- 192cal/100gms",
        "https://i.ytimg.com/vi/YJCtIZudD4s/maxresdefault.jpg",
        192,
      ],
    ];

    var im2 = 1;
    var toasts = [
      [
        "bread omelette- 200cal/piece",
        "https://img.favpng.com/24/23/15/toast-hot-dog-breakfast-bread-omelette-png-favpng-i6idaTytAXTGPTpT5BYbZZKT3.jpg",
        200,
      ],
      [
        "Sand which- 266cal/piece",
        "https://www.vegrecipesofindia.com/wp-content/uploads/2017/07/cream-cheese-sandwich-recipe-1-500x500.jpg",
        266,
      ],
      [
        "Bread Toast- 75cal/piece",
        "https://lh3.googleusercontent.com/proxy/8vVKyZeX3H8XoUCFB8veU49BScx3E2pws43f6XQFijGhMAM5zzF2-XDj9zEgrpYGdOKYHLy-lm_ExKAUYHdMoW5xJRDk0I01Oal5v0mxSCZZxl6y-w",
        75,
      ],
    ];

    function functionNext() {
      if (im == 3) {
        im = 0;
      }
      var x = document.getElementById("p");
      x.src = fruits[im][1];
      document.getElementById("Fruits-title").innerHTML = fruits[im][0];
      im++;
    }

    function functionNext1() {
      if (im1 == 3) {
        im1 = 0;
      }
      var x = document.getElementById("p1");
      x.src = tiffins[im1][1];
      document.getElementById("Drinks-title").innerHTML = tiffins[im1][0];
      im1++;
    }

    function functionNext2() {
      if (im2 == 3) {
        im2 = 0;
      }
      var x = document.getElementById("p2");
      x.src = toasts[im2][1];
      document.getElementById("Toasts-title").innerHTML = toasts[im2][0];
      im2++;
    }
    var x = 0;

    function functionImg(e) {
      e = e || window.event;
      e = e.target || e.srcElement;
      if (e.nodeName === "IMG")
        if (e.id == "p") {
          let index = fruits[im - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + fruits[im - 1][0].slice(0, index)
            )
          );
          x = x + y * fruits[im - 1][2];
        }
      if (e.id == "p1") {
        let index = tiffins[im1 - 1][0].search("-");
        var y = parseInt(
          prompt(
            "enter the quantity of " + tiffins[im1 - 1][0].slice(0, index)
          )
        );
        x = x + y * tiffins[im1 - 1][2];
      }
      if (e.id == "p2") {
        let index = toasts[im2 - 1][0].search("-");
        var y = parseInt(
          prompt(
            "enter the quantity of " + toasts[im2 - 1][0].slice(0, index)
          )
        );
        x = x + y * toasts[im2 - 1][2];
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
          <a class="nav-link py-3" aria-current="page" href="#">BreakFast</a>
        </li>
      </ul>
    </div>
    <div class="container">
      <h1>BreakFast</h1>
      <h4>Click Images to add calories</h4>
    </div>

    <div class="row" style="margin-top: 30px">
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p1"
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSmHg_ovxFI-h7lJXkv4wc04CQfT3EubifXQ&usqp=CAU"
            alt="next image" width="300px" height="300px" onclick="functionImg()" />
          <div class="card-body">
            <h5 class="card-title" style="text-align: center">Tiffins</h5>
            <div id="Drinks-title" style="text-align: center">
              Idly- 39cal/piece
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
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p" src="https://idsb.tmgrup.com.tr/ly/uploads/images/2020/05/13/35552.jpeg"
            alt="next image" width="300px" height="300px" onclick="functionImg()" />
          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Fruits</h5>
              <div id="Fruits-title" style="text-align: center">
                Apples- 52cal/100gms
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
      </div>

      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p2"
            src="https://img.favpng.com/24/23/15/toast-hot-dog-breakfast-bread-omelette-png-favpng-i6idaTytAXTGPTpT5BYbZZKT3.jpg"
            alt="next image" width="300px" height="300px" onclick="functionImg()" />

          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Toasts</h5>
              <div id="Toasts-title" style="text-align: center">
                bread omelette- 200cal/piece
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