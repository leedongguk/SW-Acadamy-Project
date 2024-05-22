<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Background Navigation Bar</title>
    <link rel="stylesheet" href="css/myPage.css">
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    
    <style>
    #sideNav {
    position: fixed;
    top: 0;
    left: 0;
    width: 280px;
    height: 100%;
    overflow-x: hidden;
    padding-top: 20px;
    z-index: 1;
    background-color: #bf9685;
    color: #EFD9D1;
    text-decoration-line
}

.navbar-nav {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.nav-item {
    margin-bottom: 15px;
    width: 100%;
    display: flex;
    justify-content: center;
}

.nav-link {
    text-align: center;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}


.ranking {
  background-color: #f8f8f8;
}
.ranking-content {
  padding: 100px 0;
}
.ranking-content h2 {
  font-size: 30px;
  font-weight: 600;
  margin-bottom: 50px;
}
.items {
  display: flex;
  justify-content: space-between
}
.item {
  width: calc(50% - 20px);
  max-width: 390px;
  height: auto;
  border-radius: 30px;
  margin-bottom: 40px; 
  background-color: #fff;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.08);
  overflow: hidden;
}
.up-image {
  width: 390px;
  height: 285px;
}
.up-image img {
/*  width: 100%;*/
  height: 100%;
}
.down-desc {
  padding: 25px;
  padding-top: 50px;
}
.down-desc h3 {
  font-size: 22px;
  margin: 15px 0;
  /*letter-spacing: -1px;*/
}
.down-desc p {
  font-size: 16px;
}
.btn-explore {
  color: #c25a3a;
  font-weight: 500;
}
.btn-explore img {
  transition: 0.3s;
}
.btn-explore:hover img {
  /*transform: translateX(15px);*/
  margin-left: 15px;
}
.badge {
  color: #fff;
  padding: 2px 10px;
  font-size: 16px;
}
.badge.must {
  background-color: #e60012;
}
.badge.good {
  background-color: #00a0e9;
}

.ranking-content {
  padding: 100px 20px; /* 좌우 여백 추가 */
}
</style>
    
</head>
<body id="page-top">
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">ms-h</span>
        <span class="d-none d-lg-block">
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/img/profile.jpg" alt="..." />
            </span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/reviews/new">후기 작성</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">나의 후기</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">채팅방 만들기</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">나의 채팅방</a></li>
        </ul>
    </div>
</nav>

<section class="ranking" id="ranking">
    <div class="inner" style="margin-left:300px;">
        <div class="ranking-content">
            <h2>The World’s 25 Best Cities of 2024</h2>
            <div class="items">
                <div class="item">
                    <div class="up-image">
                        <img src="">
                    </div>
                    <div class="down-desc">
                        <span class="badge must">Must go</span>
                        <h3>London, England</h3>
                        <p>
                            London’s main sights might date back millennia, but the capital’s shops, bars, hotels, and restaurants emerge and evolve on an almost weekly basis.
                        </p>
                        <a class="btn-explore" href="#none">Explore <img src="img/icon-arrow.png"></a>
                    </div>
                </div>
                <div class="item">
                    <div class="up-image">
                        <img src="">
                    </div>
                    <div class="down-desc">
                        <span class="badge good">Good to go</span>
                        <h3>New York City, United States</h3>
                        <p>
                            New York’s performing arts scene—both on Broadway and off—is beloved by visitors and locals alike, so it’s no surprise that the Big Apple took the number one spot.
                        </p>
                        <a class="btn-explore" href="#none">Explore <img src="img/icon-arrow.png"></a>
                    </div>
                </div>
                <div class="item">
                    <div class="up-image">
                        <img src="">
                    </div>
                    <div class="down-desc">
                        <span class="badge good">Good to go</span>
                        <h3>London, England</h3>
                        <p>
                            Paris, France The Notre Dame fire was a devastating reminder of how well-loved Paris is by travelers worldwide, and as the capital gears up for the 2024 Olympics
                        </p>
                        <a class="btn-explore" href="#none">Explore <img src="img/icon-arrow.png"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>