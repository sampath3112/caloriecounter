<!DOCTYPE html>
<html lang="en">

<head>
  <title>Lunch</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <link rel="stylesheet" href="style.css" />
  <script>
    var im = 1;
    var Rice = [
      [
        "Fried Rice- 228cal/1cup",
        "https://recipesofhome.com/wp-content/uploads/2020/06/veg-fried-rice-recipe.jpg",
        228,
      ],
      [
        "Chicken Biryani- 348cal/1cup",
        "https://s01.sgp1.cdn.digitaloceanspaces.com/article/141523-xnbotazwtd-1589770851.jpg",
        348,
      ],
      [
        "Curd Rice- 376cal/1cup",
        "https://www.sailusfood.com/wp-content/uploads/2016/04/ava-pettina-daddojanam.jpg",
        376,
      ],
    ];
    var im1 = 1;
    var Curry = [
      [
        "Paneer Butter Masala- 635cal/1cup",
        "https://www.vegrecipesofindia.com/wp-content/uploads/2019/07/curry-recipes-1a.jpg",
        635,
      ],
      [
        "Chicken curry- 110cal/1cup",
        "https://101recipes.com/wp-content/uploads/2019/04/Indian-Chicken-Curry-Recipe-2.jpg",
        110,
      ],
    ];

    var im2 = 1;
    var salad = [
      [
        "broccoli salad- 213cal/1cup",
        "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/broccoli-salad-recipe1.jpg",
        213,
      ],
      [
        "Sesame-Lime Cabbage Salad- 60.2cal/piece",
        "https://detoxinista.com/wp-content/uploads/2013/05/cabbage-salad-recipe.jpg",
        60.2,
      ],
    ];

    function functionNext() {
      if (im == 3) {
        im = 0;
      }
      var x = document.getElementById("p");
      x.src = Rice[im][1];
      document.getElementById("Rice-title").innerHTML = Rice[im][0];
      im++;
    }

    function functionNext1() {
      if (im1 == 2) {
        im1 = 0;
      }
      var x = document.getElementById("p1");
      x.src = Curry[im1][1];
      document.getElementById("Curry-title").innerHTML = Curry[im1][0];
      im1++;
    }

    function functionNext2() {
      if (im2 == 2) {
        im2 = 0;
      }
      var x = document.getElementById("p2");
      x.src = salad[im2][1];
      document.getElementById("Salad-title").innerHTML = salad[im2][0];
      im2++;
    }
    var x = 0;

    function functionImg(e) {
      e = e || window.event;
      e = e.target || e.srcElement;
      if (e.nodeName === "IMG") {
        if (e.id == "p") {
          let index = Rice[im - 1][0].search("-");
          var y = parseInt(
            prompt("enter the quantity of " + Rice[im - 1][0].slice(0, index))
          );
          console.log(x);
          x = x + y * Rice[im - 1][2];
          console.log(x);
        }
        if (e.id == "p1") {
          let index = Curry[im1 - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + Curry[im1 - 1][0].slice(0, index)
            )
          );
          console.log(x);
          x = x + y * Curry[im1 - 1][2];
          console.log(x);
        }
        if (e.id == "p2") {
          let index = salad[im2 - 1][0].search("-");
          var y = parseInt(
            prompt(
              "enter the quantity of " + salad[im2 - 1][0].slice(0, index)
            )
          );
          console.log(x);
          x = x + y * salad[im2 - 1][2];
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
          <a class="nav-link py-3" aria-current="page" href="#">Lunch</a>
        </li>
      </ul>
    </div>
    <div class="container">
      <h1>Lunch</h1>
      <h4>Click Images to add calories</h4>
    </div>

    <div class="row" style="margin-top: 30px">
      <div class="col">
        <div class="card m-0.25rem" style="width: 23rem">
          <img class="card-img-top" id="p"
            src="https://recipesofhome.com/wp-content/uploads/2020/06/veg-fried-rice-recipe.jpg" alt="next image"
            width="300px" height="300px" onclick="functionImg()" />
          <div class="card-body">
            <h5 class="card-title" style="text-align: center">Rice</h5>
            <div id="Rice-title" style="text-align: center">
              Fried Rice- 228cal/1cup
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
            src="https://www.vegrecipesofindia.com/wp-content/uploads/2019/07/curry-recipes-1a.jpg" alt="next image"
            width="300px" height="300px" onclick="functionImg()" />
          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Curry</h5>
              <div id="Curry-title" style="text-align: center">
                Paneer Butter Masala- 635cal/1cup
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
            src="https://cdn.loveandlemons.com/wp-content/uploads/2019/05/broccoli-salad-recipe1.jpg" alt="next image"
            width="300px" height="300px" onclick="functionImg()" />

          <div>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">Salads</h5>
              <div id="Salad-title" style="text-align: center">
                broccoli salad- 213cal/1cup
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