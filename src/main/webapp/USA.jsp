<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="crawling.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="../../../../../Downloads/runtheW/assets/img/favicon.png" type="image/png">

    <!--=============== REMIXICONS (nav ๊น๋นก ๋์) ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/each_style.css">
    <link rel="stylesheet" href="assets/css/map.css">
    <link rel="stylesheet" type="text/css" href="assets/css/Weather.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"/>
    <title>USA</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/nyp.jpg" alt="USA" class="each_home__img us">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>USA</b></h1>
                <a href="https://www.gousa.or.kr/" target="_blank" class="button" title=" ๋ฏธ๊ตญ ๊ด๊ด์ฒญ์ผ๋ก ์ด๋ํฉ๋๋ค.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== ์๊ตญ์?๋ณด ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/US191/country/prepare#hentrance");
        arrT = botT.activateBot();
    %>
    <section>
        <ul class="entry_info">
            <li>
                <div class="condition">์๊ตญ๊ฐ๋ฅ์ฌ๋ถ</div>
                <div class="result"><%= arrT[0]%> </div>
            </li>
            <li>
                <div class="condition">๋ฐฑ์?ํ์์ฌ๋ถ</div>
                <div class="result"><%= arrT[1]%> </div>
            </li>
            <li>
                <div class="condition">์ฌํ์ง๊ฒฉ๋ฆฌ์ฌ๋ถ</div>
                <div class="result"><%= arrT[2]%> </div>
            </li>
            <li>
                <div class="condition">ํ๊ตญ ๊ท๊ตญ์</div>
                <div class="result2"><span>[๋ฐฑ์? ์?์ข์] </span><%= arrT[3]%><br>
                    <span>[๋ฐฑ์? ๋ฏธ์?์ข์] </span> <%= arrT[4]%></div>
            </li>
        </ul>
    </section>

    <!--==================== ๋๋ผ ์๊ฐ ====================-->
    <section>
        <div class="about__container container grid country_info">
            <div class="about__data">
                <h2 class="section__title about__title"><b>๋ฏธ๊ตญ</b></h2>
                <p class="about__description">"๋ฏธ๊ตญ๋ ๋๋์, ์๋งํ ์ด์, ๋ฐ์ ํฌ์ฑ์ด ์ฐ, ์์๋ฆผ, ๊ณ?๊ธ์ค๋ฌ์ด ํด๋ณ, ์ฌ๋ง์ ์ด๊ธฐ, ๋ถ๊ทน์ ์ถ์,
                    ๊ทธ๋ฆฌ๊ณ? ๊ทธ ์ฌ์ด์ ๋ชจ๋? ๊ฒ์ด ์์ด์. ์ธ๊ณ ๊ฐ๊ตญ ๋ฌธํ์ ๊ต์ฐจ์?์ด์ ๊ต์งํฉ์ด๋ฉฐ, ํ๋์ ๋๋ฅ์ผ๋ก ์์ถ๋ ์ง๊ตฌ์ ๊ฐ์ฃ?.
                    ๊ฝค ํฐ ๋๋ฅ์ด๋ผ์ ํ ๋ฒ์ ๋ค ๋๋ฌ๋ณด๋?ค๋ฉด ๋งค์ฐ ํ๋ค ๊ฑฐ์์. <br>
                    ๊ฐ๊ฐ ๊ณ?์?ํ ํ๊ฒฝ, ๋ฌธํ, ์ฌ๋๋ค๋ก ์ด๋ฃจ์ด์?ธ ์์ด์ ๋งค์ฐ ๋ค์ํ ์ฌํ ๊ฒฝํ์ ์?์ฌํ๋๋ฐ์.
                    ๋ง์ด์?๋ฏธ์ ๋ก์ค์ค์?ค๋?์ค ๊ฐ์ด ๋งค์ฐ ์ธ๋?จ๋ ํํฐ ์ฅ์, ๋ด์๊ณผ ๊ฐ์ ๋ฒํํ ๋๋์,์ํ๋์์ค์ฝ์ ๊ฐ์ ์ฌ์?๋ก์ด ๋์,
                    ๋ผ์ค๋ฒ?์ด๊ฑฐ์ค์ ๊ฐ์ ๋ํนํ๊ณ? ๊ธฐ๋ฐํ ์ฅ์ ๋ฑ์ด ์์ด์. ํ๊ธฐ์ฐจ๊ณ? ๋ค์ํ ๋๋ฅ์ ํํํด ๋ณด์ธ์."
                    </p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/santa.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/chicago.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== ๋ฐ๋ก๊ฐ๊ธฐ ๋ฒํผ ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฌํ ์?๋ณด"
                    onClick="location.href='#f_info'"><span>์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฝ๋ก๋ ์ํฉ"
                    onClick="location.href='#f_covid'"><span>์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋?์จ"
                    onClick="location.href='#f_weather'"><span>๋?์จ <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="ํ์จ"
                    onClick="location.href='#f_ex'"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ง์ง"><span>๋ง์ง <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ด์ค"><span>๋ด์ค <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ฆฌ๋ทฐ"><span>๋ฆฌ๋ทฐ <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== ์ฌํ ์?๋ณด ====================-->
    <section class="about section" id="f_info">
        <div class="about__container container gird">
            <h2 class="section__title about__title">์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>์์๋ก ์ด์ฉ๊ตฌ์?์ฉ๊ตฌ</li>
                    <li>
                        <b>์ฌํ ์ถ์ฒ๊ธฐ๊ฐ</b> :  ์ง์ญ๋ง๋ค ๋ค๋ฆ
                        <br>๋ฏธ๊ตญ์ด ์๋ ๋์ ๊ตญ๊ฐ๋ผ ๋ค์ํ ๊ธฐํ๊ฐ ๋ค์ํ๊ฒ ์กด์ฌํ๋ฏ๋ก ์ฌํ์๊ธฐ๋ ์ง์ญ์ ๋ฐ๋ผ ์ถ์ฒ ์์ฆ์ ๋ฌ๋ผ์ง๋ค.
                        ๋๋ถ ๋ด์์ ๊ฒจ์ธ์ ์ํ 20๋ ์ด์ ๋ด๋?ค๊ฐ๊ณ? ๋๋ ๋ง์ด ์ค๋ ๋ฐ๋ฉด, ์๋ถ LA์ ๊ฒจ์ธ์ ์์ 5~10๋ ๋ด์ธ๋ก ๋์ด ์์จ๋ค.
                        ๊ทธ๋์ ๋ฏธ๊ตญ๋ด ๋ด๊ฐ ๊ฐ๊ณ?์ ํ๋ ์ง์ญ์ ๋?์จ๋ฅผ ์ฒดํฌํด๋ณด๊ณ? ์ค๋น๋ฅผ ํ๋ฉด ์ข๋ค.

                    </li>
                </ul>
            </div>
            <div class="info_img" style="width: 40%; float: right;">
                <div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d65136545.9243897!2d-141.08977859420528!3d30.376373698916638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2skr!4v1654752005747!5m2!1sen!2skr"
                            width="295" height="400" style="border:0;"
                            allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </section>

    <!--==================== ์ฝ๋ก๋ ์ํฉ ====================-->
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F09c7w0&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>

    <section class="about section" >
        <div class="about__container container gird gap" id="f_covid">
            <div class="about__data covid_parent" >
                <h2 class="section__title about__title">์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></h2>
                <ul class="covid">
                    <li>
                        <strong>์?๊ท ํ์ง์(1์ผ ํ๊ท?)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[0]%>" class="dt3Iuf zC7z7b FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[4]%>
                        </li>
                    </ul>
                </ul>
                <ul class="covid">
                    <li>
                        <strong>์ธ๊ตฌ ์ค ์?์ข ์๋ฃ์ ๋น์จ(%)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[2]%>" class="dt3Iuf krHqHb FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[5]%>
                        </li>
                    </ul>
                </ul>
                <span class="source">์ถ์ฒ: OWID, ์กด์ค ํํจ์ค ๋ํ๊ต</span>
                <ul class="covid" style="margin-bottom: 10vh;">
                    <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%EB%AF%B8%EA%B5%AD%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">์ต์? ์ฝ๋ก๋ ๊ด๋?จ ๋ด์ค ํ์ธํ๊ธฐ</a></h4>
                </ul>
            </div>
        </div>


    </section>

    <!--==================== ๋?์จ ์?๋ณด ====================-->
    <section class="about section" >
        <div class="about__container container gird gap" id="f_weather">
            <h2 class="section__title about__title">๋?์จ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>
                        <b>์ฌํ ์ถ์ฒ๊ธฐ๊ฐ(๋ด์ ๊ธฐ์ค)</b> :  10์~11์
                        <br>๋ฏธ๊ตญ์ด ์๋ ๋์ ๊ตญ๊ฐ๋ผ ๋ค์ํ ๊ธฐํ๊ฐ ๋ค์ํ๊ฒ ์กด์ฌํ๋ฏ๋ก ์ฌํ์๊ธฐ๋ ์ง์ญ์ ๋ฐ๋ผ ์ถ์ฒ ์์ฆ์ ๋ฌ๋ผ์ง๋ค.<br>
                        ๋ด์์ ๊ธฐ์ค์ผ๋ก ํ์๋ฉด, 10์-11์ ์ด๊น์ง๊ฐ ๋ง๊ณ? ์พ์?ํ๋ฉฐ ํ๊ฒฝ์ด ์๋ฆ๋ค์ ์ฌํํ๊ธฐ ์ต์?์ ์๊ธฐ๋ผ ํ? ์ ์๋ค.<br>
                    </li>
                    <li>
                        <b>์ถ์ฒ ์ท์ฐจ๋ฆผ</b> : ์ฌ๊ณ์?์ด ์๋ ๋ด์์ ์ท์ฐจ๋ฆผ์ ํ๊ตญ๊ณผ ๊ฑฐ์ ๋น์ทํ๋ค.
                        ๋ค๋ง ๋์ ๊ฑด๋ฌผ ์ฌ์ด๋ก ๋ฐ๋์ด ๋ง์ด ๋ถ๊ณ? ๋ด ๊ฐ์์๋ ์ผ๊ต์ฐจ๊ฐ ํฐ ๋งํผ ๊ฐ๋ฒผ์ด ๊ฐ๋๊ฑด์ด๋ ๋จธํ๋ฌ๋ฅผ ์ค๋นํ๋ ๊ฒ์ด ์ข๋ค.
                        ํ ๋ฌ์ 10์ผ ์?๋ ๋น๊ฐ ์ฌ ๊ฐ๋ฅ์ฑ์ด ์์ผ๋ฏ๋ก ์์ ์ฐ์ฐ๋ ์ฑ๊ฒจ ์ค๋ฉด ์ข๊ณ? ๊ฒจ์ธ์๋ ๋ชจ์๋ ํซ ํฉ ๋ฑ์ ๋ฐฉํ ์ฉํ์ ์ค๋นํ๊ธฐ๋ฅผ ๊ถ์ฅํ๋ค.
                    </li>
                </ul>
                <canvas class="line_chart" id="line-chart_us" ></canvas>
            </div>
            <div class="info_img" style="width: 40%; float: right;">
                <!-- ๋?์จ api container์ ๋ฐ์์ด -->
                <div class="container">
                    <div class = "card">
                        <h2><i>&#x2708 </i> <span id="location"></span></h2>
                        <h5 id="weather"></h5>
                        <h4><span id="temp"></span><sup>o</sup>C</h4>
                        <img src ="" id ="icon">
                        <!--<button onclick="window.location.reload();" class="refresh"><i>&#x2708</i></button>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--==================== ํ์จ ====================-->
    <%!  String sale="";%>
    <%  Exchange_Rate bot1 = new Exchange_Rate("https://finance.naver.com/marketindex/exchangeList.naver");
        sale = bot1.activateBot(1);
    %>
    <section class="about section" >
        <div class="about__container container gird gap" id="f_ex">
            <h2 class="section__title about__title"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></h2>
            <table class="tg">
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="์?๋ฝ์ฐํฉ EUR" width="1" height="1">๋ฏธ๊ตญ USD</th>
                <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="๋ํ๋ฏผ๊ตญ KRW" width="1" height="1">๋ํ๋ฏผ๊ตญ KRW</th>

                <tr>
                    <td class="tg-0pky" colspan="4">1 USD</td>
                    <!-- ํ์จ ์?๋ณด ์๋?ฅ -->
                    <td class="tg-0pky" colspan="4"><%= sale%>  ์</td>
                </tr>
            </table>
        </div>
    </section>
    <section class="gap"></section>

    <!--==================== ๋ง์ง ====================-->
    <%!  String [] arrR= new String[21];%>
    <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?find_desc=Restaurants&find_loc=%08new+york");
        arrR = botR.activateBot();
    %>
    <section class="place section" id="place">
        <div class="about__container container gird gap" id="uk_rest">
            <h2 class="section__title about__title">๋ง์ง <i class="fa-solid fa-utensils"></i></h2>

            <div class="place__container container grid">
                <!------๋ง์ง1------>
                <div class="place__card">
                    <img src="<%= arrR[10]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 style="margin-top: 7em; color:white;"><%= arrR[0]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[11]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;" ><%= arrR[1]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[12]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[2]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[13]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[3]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[14]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title" style="margin-top: 7em;"><%= arrR[4]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[15]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[5]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[16]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[6]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[17]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[7]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[18]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[8]%></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</main>

<!--=============== FOOTER ===============-->
<jsp:include page="footer.jsp"></jsp:include>

<!--=============== SCROLL UP ===============-->
<a href="#" class="scrollup" id="scroll-up">
    <i class="ri-arrow-up-line scrollup__icon"></i>
</a>
<!--=============== SCROLL REVEAL ===========-->
<script src="assets/js/scrollreveal.min.js"></script>
<!--=============== SWIPER JS ===============-->
<script src="assets/js/swiper-bundle.min.js"></script>

<!--=============== MAIN JS ===============-->
<script src="assets/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="assets/js/chart/us_chart.js"></script>
<script src="assets/js/fr_map.js"></script>
<script src="assets/js/fr_weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>
