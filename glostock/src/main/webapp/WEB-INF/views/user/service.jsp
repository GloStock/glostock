<%@ page import="yahoofinance.Stock" %>
<%@ page import="yahoofinance.YahooFinance" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Stock TSLA = YahooFinance.get("TSLA");
    Stock AAPL = YahooFinance.get("AAPL");
    Stock MSFT = YahooFinance.get("MSFT");
    Stock AMZN = YahooFinance.get("AMZN");
    Stock FB = YahooFinance.get("FB");
    Stock ADS = YahooFinance.get("ADS.DE");

    ArrayList<Stock> stockFollowList = new ArrayList<>();
    stockFollowList.add(TSLA);
    stockFollowList.add(AAPL);
    stockFollowList.add(MSFT);
    stockFollowList.add(AMZN);
    stockFollowList.add(FB);
    stockFollowList.add(ADS);
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Feed | Glo Stock</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta name="theme-color" content="#7952b3">


    <style>
        .blog-post {
            -webkit-box-shadow: 0 10px 6px -6px #777;
            -moz-box-shadow: 0 10px 6px -6px #777;
            box-shadow: 0 5px 15px -6px #777;
            border: #E5E5E5 1px solid;
            padding: 25px;
            border-radius: 20px;
            background-color: white;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        body {
            background: linear-gradient(to bottom right, #54E6DE, pink);
        }

        .main-banner {
            background-image: url("/resources/img/main-feed-img.jpg");
            background-position: center;
        }

        .card {
            margin-bottom: 5px;
            flex-direction: row !important;
        }

        .card-header {
            margin: auto !important;
            background-color: white !important;
            border: 0 !important;
            width: 40% !important;
            text-align: center;
        }

        .card-body {
            text-align: center;
        }

    </style>


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/feed.css" rel="stylesheet">
</head>
<body>

<%@ include file="../include/header.jsp" %>
<header>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/feed">Feed</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/follow">My Following</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/crypto">Cryptocurrency</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/portfolio">My Portfolio</a>
                        </li>
                    </ul>
                    &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-sm btn-outline-secondary" href="#">My Account</a>
                </div>
            </div>
        </nav>
    </div>
</header>




<main class="container">

    <div class="row g-5">
        <div class="col-md-8">
            <h3 class="pb-4 mb-4 fst-italic border-bottom">
                <b>Glo 툴즈</b>
            </h3>

         

       
       
 <div class="accordion" id="accordionExample">
 
 
  <div class="accordion-item">
    <h4 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        <h5><img src="/resources/img/calculator.svg" style="width:20px; height:20px;"> <b>공모주청약 계산기(비례배정)</b></h5>
      </button>
    </h4>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      
      <h6>
      <b>☞</b>아래의 계산기로 예상 배정주 확인이 가능합니다 (비례배정만 지원) <br><br>
      <b>☞</b>공모가 대비 입금금액,증거금,경쟁률에 따라 차이가 배정주식 수에 차이가 발생하며, <br>
      증권사의 배정정책에 따라 계산이 상이할 수 있습니다. <br><br>
      <p><a href="http://www.38.co.kr/html/fund/?o=k"><b>☞</b>공모주 청약일정 확인하기</a></p>
      
      </h6>
      
      <form> 
      	<table> 
      	
      	<tr>
      	<td><b>입금금액(원):</b> </td>
      	<td><input type="text" id='deposit' name='deposit' onkeyup='ipo()'> </td>   
      	</tr>
      	
      	<tr>
      	<td><b>증거금비율(%):</b></td>
      	<td><input type="text" id='initialmargin' name='initialmargin' onkeyup='ipo()'> </td>   
      	</tr>
      	
      	<tr>
      	<td><b>공모가(원):</b></td>
      	<td> <input type="text" id='ipoprice' name='ipoprice' onkeyup='ipo()'> </td>   
      	</tr>
      	
      	<tr>
      	<td><b>경쟁률:</b></td>
      	<td><input type="text" id='comprate' name='comprate' onkeyup='ipo()'>&nbsp; :1 </td>   
      	</tr>
      	
      	     <input type="text" id='result' name='result'> 
     </table>
     <br>
     <input type="text" id='result' name='result'> 
     <br><br>
     <input type="submit" id="ipo" onclick="ipo()" value="계산"> &nbsp;  
     <button type="reset">다시입력</button> 
    
      </form> 


      
  <br><br>    
  	
  	
  
  
  
      </div>
    </div>
  </div>
  
  <script type="javascript">
  function ipo()
  {
   if(document.getElementById("ipoprice").value && document.getElementById("comprate").value){
    document.getElementById('result').value =parseInt(document.getElementById('ipoprice').value) + parseInt(document.getElementById('comprate').value);
   }
  }
  
  
  </script>
  
  
  
  
 
  
  
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
    <h5><img src="/resources/img/calculator.svg" style="width:20px; height:20px;"> <b>공모주청약 계산기(비례배정)</b></h5>
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>
       
       
       
       
       
       
       
       
       
       
       
       
       
       

        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <%--        <div class="p-4 mb-3 bg-light rounded">--%>
                <%--          <h4 class="fst-italic">My Tab</h4>--%>
                <%--          <p class="mb-0">Customize this section to tell your visitors a little bit about your publication, writers, content, or something else entirely. Totally up to you.</p>--%>
                <%--        </div>--%>

                <div class="p-4">
                    <h4>My Following</h4>
                    <ol class="list-unstyled mb-0">
                            <%
                  for (Stock s : stockFollowList) {
                    String currency = "";
                    if (s.getCurrency().equals("USD")) {
                      currency = "$";
                    } else if (s.getCurrency().equals("EUR")) {
                      currency = "€";
                    } else if (s.getCurrency().equals("GBP")) {
                      currency = "£";
                    }
              %>
                        <li>
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title"><a href="/company/show?ticker=AAPL"><%=currency%><%=s.getSymbol()%></a></h5>
                                    <p class="card-text"><%=s.getName()%></p>
                                </div>
                                <div class="card-body">
                                    <div class="card-top">
                                        <%
                                            if(s.getQuote().getPrice().compareTo(s.getQuote().getPreviousClose()) > 0) {
                                        %>
                                        <p class="card-text" style="font-size:17px; color:red;"><b><%=currency%><%=s.getQuote().getPrice().subtract(s.getQuote().getPreviousClose())%> (<%=s.getQuote().getChangeInPercent()%>%)</b></p>
                                        <%
                                        } else if (s.getQuote().getPrice().compareTo(s.getQuote().getPreviousClose()) < 0) {
                                        %>
                                        <p class="card-text" style="font-size:17px; color:blue;"><b>-<%=currency%><%=s.getQuote().getPrice().subtract(s.getQuote().getPreviousClose()).abs()%> (<%=s.getQuote().getChangeInPercent()%>%)</b></p>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="card-bottom">
                                        <p class="card-text"><b><%=currency%><%=s.getQuote().getPrice()%></b></p>
                                    </div>
                                </div>
                            </div>
                        </li>
                            <%
                }
              %>
                        <p>출처: <a href="https://finance.yahoo.com/">Yahoo Finance</a></p>

                        <div class="p-4">
                            <h4 class="fst-italic">My Service</h4>
                            <ol class="list-unstyled">
                                <li><a href="#">세금계산기</a></li>
                                <li><a href="#">공모주 배당계산</a></li>
                                <li><a href="#">포트폴리오 상담</a></li>
                            </ol>
                        </div>
                </div>
            </div>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
