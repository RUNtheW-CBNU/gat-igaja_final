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
    <title>United Kingdom</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/uk_main.jpg" alt=UK"" class="each_home__img uk">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>United Kingdom</b></h1>
                <a href="https://www.visitbritain.com/gb/" target="_blank" class="button" title="์๊ตญ ๊ด๊ด์ฒญ์ผ๋ก ์ด๋ํฉ๋๋ค.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== ์๊ตญ์?๋ณด ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/GB186216/country/prepare#hentrance");
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
                <h2 class="section__title about__title"><b>์๊ตญ</b></h2>
                <p class="about__description">ํ๋ ํด๊ฐ ์ง์ง ์๋ ๋๋ผ๋ผ ๋ถ๋ฆด ๋งํผ ๋ง๊ฐํ๋ ์๊ตญ!
                    ์๊ตญ์ ๊ฐ๊ฐ ๊ณ?์?์ ์์ฑ๋ฅผ ์๋ํ๋ ์๊ธ๋๋, ์จ์ผ์ค, ์ค์ฝํ๋๋, ๋ถ์์ผ๋๋ 4๊ฐ์ ์ง์ญ์ผ๋ก ์ด๋ฃจ์ด์?ธ ์์ด ์ง๋ฃจํ? ํ์ด ์๋ ๋งค๋?ฅ์?์ธ ์ฌํ์ง์๋๋ค.
                    ์คํคํจ์ง, ์จ์คํธ๋ฏผ์คํฐ ์ฌ์, ์์?์ฑ๊น์ง ๋ค์ํ ๋ณผ๊ฑฐ๋ฆฌ์ ์ฆ๊ธธ ๊ฑฐ๋ฆฌ๊ฐ ๊ธฐ๋ค๋ฆฌ๋ ์๊ตญ์ผ๋ก ๋?๋๋ณด์ธ์.<br>
                    ์๊ตญ์ ์๋์ธ ๋ฐ๋์์๋ ๋น๋ฒค, ๋ฐ๋ ์์ด, ๋นจ๊ฐ ๊ณต์ค์?ํ ๋ถ์ค ๋ฑ ์์ง์?์ธ ๋๋๋งํฌ๋ฅผ ์ฐพ์๋ค๋๋ ์ฌ๋ฏธ๊ฐ ์์ด์.
                    ์ถ๊ตฌ์ ๋์์ด์ ๋นํ์ฆ์ ๋์, ๋ฆฌ๋ฒํ์ ๋ฐฉ๋ฌธํ๊ณ? ์๋ฆ๋ค์ด ์์ฐ๊ฒฝ๊ด์ผ๋ก ์?๋ค์ค์ฝ์์ ์ธ๊ณ๋ฌธํ์?์ฐ์ผ๋ก ์ง์?ํ ์๋?๋ฒ๋ฌ๋ ๊ผญ ๋ค๋ฌ ๋ณด์ธ์.
                    ์์ผ๋๋์ ๋ชจํ ์?๋ฒฝ์ ๋ฐ๋ผ ๊ฑธ์ผ๋ฉฐ ๋์์์ ๊ฒํธ๋ฅธ ๋ฐ๋ค์ ์ฅ์ํ ํด์ ์?๋ฒฝ์ ๋ฐ๋ผ๋ด๋ ์ข์์.</p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/uk1.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/uk2.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== ๋ฐ๋ก๊ฐ๊ธฐ ๋ฒํผ ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฌํ ์?๋ณด"
                    onClick="location.href='#uk_info'"><span>์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฝ๋ก๋ ์ํฉ"
                    onClick="location.href='#uk_covid'"><span>์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋?์จ"
                    onClick="location.href='#uk_weather'"><span>๋?์จ <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="ํ์จ"
                    onClick="location.href='#uk_ex'"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ง์ง"
                    onClick="location.href='#uk_rest'"><span>๋ง์ง <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ด์ค"><span>๋ด์ค <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ฆฌ๋ทฐ"><span>๋ฆฌ๋ทฐ <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== ์ฌํ ์?๋ณด ====================-->
    <section class="about section" id="uk_info">
        <div class="about__container container gird">
            <h2 class="section__title about__title">์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>์์๋ก ์ด์ฉ๊ตฌ์?์ฉ๊ตฌ</li>
                    <li>
                        <b>์ฌํ ์ถ์ฒ๊ธฐ๊ฐ</b> :  4์~5์ / 9~10์
                        <br>๋ด๊ณผ ๊ฐ์์ด ์ฐ๋ฆฌ์๊ฒ ๊ฐ์ฅ ์น์ํ ๋?์จ์ด๋ค. ๋ค๋ง ์ผ๊ต์ฐจ๊ฐ ํฌ๋ ์์ ๊ฒ์ท์ ํญ์ ์ฑ๊ธฐ๋๋ก ํ์. ์ฐํ๊ท? ๊ธฐ์จ์ 11.3๋. ๊ฐ์ฅ ๋์ด ๋ฌ์ 7์๋ก ํ๊ท? 20๋, ๊ฐ์ฅ ์ถ์ด ๋ฌ์ 1์๋ก 5๋ ์?๋ ๋๋ค. ์ฐ์ค ๊ฐ์ฐ๋์ด ๋์ผ๋ฉฐ ๋น๊ฐ ์ค๋ ๋?์๋ ๊ฑด์กฐํ ํธ. ๊ฒจ์ธ์๋ ์จ๋๊ฐ 0๋ ์ดํ๋ก ๋ด๋?ค๊ฐ๊ฑฐ๋ ๋์ด ๋ด๋ฆฌ๋ ๋?์ ๋๋ฌผ๋ค.
                    </li>
                    <li>
                        <b>์ถ์ฒ ์ท์ฐจ๋ฆผ</b> : ์ค์๊ฐ ๋?์จ ์ฒดํฌ๊ฐ ์ค์ํ๋ค. ๋ด์ด๋ ๊ฐ์์๋ ์ฌ๋ฆ์ฒ๋ผ ๋ฅ๋ค๊ฐ๋ ๋ค์๋? ์จ๋๊ฐ 10๋ ์ด์ ๋จ์ด์?ธ ๋๊บผ์ด ์ฌํท์ด ํ์ํ? ๋๋ ์๊ณ?, ์ฌ๋ฆ์๋ ๋น๊ฐ ์ค๋ฉด ์?๋ฒ ์์ํด์?ธ ์์ ์ฌํท์ด ํ์ํ? ์๋. ์ผ๊ต์ฐจ๋ ํฐ ํธ์ด๋ ์ต์?๊ธฐ์จ๊ณผ ์ต๊ณ?๊ธฐ์จ์ ํจ๊ป ํ์ธ ํ์.
                    </li>
                </ul>
            </div>
            <div class="info_img" style="width: 40%; float: right;">
                <div id="map"></div>
            </div>
        </div>
    </section>

    <!--==================== ์ฝ๋ก๋ ์ํฉ ====================-->
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F07ssc&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>
    <section class="about section" >
        <div class="about__container container gird gap" id="uk_covid">
            <div class="about__data covid_parent" >
                <h2 class="section__title about__title">์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></h2>
                <ul class="covid">
                    <li>
                        <strong>์?๊ท ํ์ง์(14์ผ)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[0]%> " class="dt3Iuf zC7z7b FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[4]%>
                        </li>
                    </ul>
                </ul>
                <ul class="covid">
                    <li>
                        <strong>์?๊ท ๋ฐฑ์? ์?์ข์(14์ผ)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[2]%> " class="dt3Iuf krHqHb FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[5]%>
                        </li>
                    </ul>
                </ul>
                <span class="source">์ถ์ฒ: OWID, ์กด์ค ํํจ์ค ๋ํ๊ต</span>
                <ul class="covid" style="margin-bottom: 10vh;">
                    <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%EC%98%81%EA%B5%AD%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">์ต์? ์ฝ๋ก๋ ๊ด๋?จ ๋ด์ค ํ์ธํ๊ธฐ</a></h4>
                </ul>
            </div>
        </div>


    </section>

    <!--==================== ๋?์จ ์?๋ณด ====================-->
    <section class="about section" >
        <div class="about__container container gird gap" id="uk_weather">
            <h2 class="section__title about__title">๋?์จ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>
                        <b>์ฌํ ์ถ์ฒ๊ธฐ๊ฐ</b> :  6์~7์
                        <br>์๊ตญ์ ๋?์จ๋ ๋ณ๋์ค๋ฝ๊ณ? ๋ด, ๊ฐ์์ ํ๊ตญ๋ณด๋ค ์ถฅ๋ค. ๊ฐ์ฅ ๋ง์ ๋?์ด ๋ง์ ์๊ธฐ๋ 6,7์ ๋ง์ ๋?์ด๋ผ๋ ๊ธ์ธ ๋น๊ฐ ๋ด๋ฆฌ๋ ์ผ์ด ํํ๊ธฐ ๋๋ฌธ์ ์ฌํ ์ค ๊ฐ๋ฒผ์ด ์ฐ์ฐ์ ๊ฐ์ง๊ณ? ๋ค๋๊ฑฐ๋ ๋ชจ์๊ฐ ๋ฌ๋ฆฐ ์ท์ ์ค๋นํ๋ ๊ฒ์ด ์ข๋ค.
                    </li>
                    <li>
                        <b>์ถ์ฒ ์ท์ฐจ๋ฆผ</b> : ๋ด, ๊ฐ์์ ํ๊ตญ๋ณด๋ค ์ถฅ๊ณ? ๊ฒจ์ธ์๋ ๊ธฐ์จ์ด ์ํ๋ก ๋จ์ด์ง์ง๋ ์์ง๋ง ๋ฐ๋์ด ๋ง์ด ๋ถ์ด ์ฒด๊ฐ์จ๋๊ฐ ๋ฎ๋ค. ์?๋ฐ์?์ผ๋ก ์ฐ๋ฆฌ๋๋ผ๋ณด๋ค ๋ฐ๋ปํ ์ท์ ์ฑ๊ฒจ๊ฐ๋ ๊ฒ์ด ์ข๋ค.
                    </li>
                </ul>
                <canvas class="line_chart" id="line-chart_uk" ></canvas>
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
        sale = bot1.activateBot(7);
      %>
    <section class="about section" >
        <div class="about__container container gird gap" id="uk_ex">
            <h2 class="section__title about__title"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></h2>
            <table class="tg">
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="์๊ตญ EUR" width="1" height="1">์๊ตญ ERU</th>
                <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="๋ํ๋ฏผ๊ตญ KRW" width="1" height="1">๋ํ๋ฏผ๊ตญ KRW</th>

                <tr>
                    <td class="tg-0pky" colspan="4">1 ํ์ด๋</td>
                    <!-- ํ์จ ์?๋ณด ์๋?ฅ -->
                    <td class="tg-0pky" colspan="4"><%= sale%> ์</td>
                </tr>
            </table>
        </div>
    </section>
    <section class="gap"></section>

    <!--==================== ๋ง์ง ====================-->
    <%!  String [] arrR= new String[21];%>
    <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?cflt=restaurants&find_loc=London");
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
<script src="assets/js/chart/uk_chart.js"></script>
<script src="assets/js/map.js"></script>
<script src="assets/js/Weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>
