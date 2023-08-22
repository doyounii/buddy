<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사소개</title>

    <%@ include file="../head.jsp" %>
    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="../google.css">
    <link rel="stylesheet" href="../fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../hd.css">

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
        /* 본문 영역 스타일 */
        .wrap { background-color: #fffcf2;}
        .contents { clear:both; height:2450px;
            background-image: url("../images/bg_visual_overview.jpg");
            background-repeat: no-repeat; background-position:center -250px; padding-bottom: 500px;}
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadcrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadcrumb a { color:#fff; }
        .row { clear: both; height: 900px; width: 1200px;}
        .container { clear: both; height: 130px;}
        .container:first-child {padding-top: 50px; padding-left: 200px;}
        .container:last-child {padding-bottom: 50px;}
        .container .txt1 p { vertical-align: middle;}
        .txt1 {
            width: 1000px;
            margin: 40px auto;
        }
        .img1 {
            padding: 0 100px;
            width: 1000px;
            height: 650px;
        }
        .img2 {
            padding: 50px 430px;
            width: 400px;
            height: 150px;
        }
        .img1_tit { margin-bottom: 40px; font-weight: bold; font-size: large; text-align: center;
        }
        .container span {
            font-size:48px; text-align: center;  color: #000000; font-weight: 900;
        }
        .container span:nth-child(2) {
            font-size:48px; text-align: center;  color: #ffde34;
        }
        container:last-child {
            clear: both;
        }
        .inner {
            margin: 30px auto;
            width: 1200px;
            box-sizing: border-box;
        }
        .btn-group {
            display: flex;
        }
        .btn-group .button {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 2.333rem;
            min-width: 12.5rem;
            height: 4.166rem;
            font-size: 1.333rem;
            line-height: 1;
            border: 2px solid #cdcdcd;
            -webkit-border-radius: 2.083rem;
            -moz-border-radius: 2.083rem;
            border-radius: 2.083rem;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition: all .15s ease-in .05s;
            -moz-transition: all .15s ease-in .05s;
            -ms-transition: all .15s ease-in .05s;
            -o-transition: all .15s ease-in .05s;
            transition: all .15s ease-in .05s;
        }
        .btn-group.tab-group {
            justify-content: center;
        }
        .tab-group .active {
            border-color: #f5be8b;
            background: #ffffff;
            color: #222;
            margin: 0 0.416rem;
            font-size: 1.5rem;
            font-weight: 700;
        }
        .tab-group .btn_tab {
            margin: 0 0.416rem;
            font-size: 1.5rem;
            font-weight: 700;
            color: #cdcdcd;
            background: #fff;
        }

        .info_list {
            float: left;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }
        .info_wrap {font-size: 15px;
            line-height: 28px;
            letter-spacing: -0.3px;}
        .info_wrap .info_sub_title {
            font-weight: bold;
        }
        .info_wrap .info_sub_text {
            word-break: keep-all;
            word-wrap: break-word;
            overflow-wrap: break-word;
            height: 130px;
        }


        .row0 { clear: both;     min-height: 1435px; width: 1200px;}
        .container0 { clear: both; height: 400px; margin: 50px auto;}
        .container0:first-child {padding-top: 35px;}
        .container0:last-child {padding-bottom: 50px;}
        .container0 .img10 {  float: left; padding-left: 103px; }
        .container0 .txt10 { float: right; width: 379px; padding: 100px; }
        .container0 .txt10 p { vertical-align: middle;}
        .img10_tit { margin-bottom: 20px; font-weight: bold; font-size: large;
        }
        .container0 span {
            font-size:48px; text-align: center;  color: #000000; font-weight: 900; padding-left: 393px;
        }
        #scroll2 {font-size: 48px;
            text-align: center;
            color: #ffde34;
            font-weight: 900;
            /* margin-top: 150px; */
            }
        .info_list0 {
            float: left;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }
        .info_wrap0 {font-size: 15px;
            line-height: 40px;
            letter-spacing: -0.3px;}
        .info_wrap0 .info_sub_title0 {
            font-weight: bold;
        }
        .info_wrap0 .info_sub_text0 {
            word-break: keep-all;
            word-wrap: break-word;
            overflow-wrap: break-word;
        }

    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>
        .btn_group { clear:both; width:800px; margin:20px auto; }
        .btn_group:after { content:""; display:block; width:100%; clear: both; }
        .btn_group p {text-align: center;   line-height:3.6; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp"%>
    </header>
    <div class="contents" id="contents">
        <div class="breadcrumb">
            <p><a href="">HOME</a> &gt <span>회사소개</span> &gt <span>Buddy</span> </p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">Buddy</h2>
                <hr>
                <div class="inner">
                    <div class="btn-group tab-group type3">
                        <a ui-sref="textbook01" ui-sref-opts="{reload: true}" class="button active scroll_move" href="/company/company.jsp">Buddy</a>
                        <a ui-sref="textbook02" ui-sref-opts="{reload: true}" class="button btn_tab" href="#scroll">Buddy 이야기</a>
                        <a ui-sref="textbook03" ui-sref-opts="{reload: true}" class="button btn_tab" href="/company/contribution.jsp">사회공헌</a>
                        <!-- <a href="#" class="button btn_tab">XR</a> -->
                    </div>
                </div>
                <div class="row">
                    <section class="container">
                        <span>Explore Empower Excel Together</span>
                    </section>
                    <section>
                        <div class="img1">
                            <p class="img1_tit">함께 Buddy Learn의 친구들과 함께 배움의 여정을 나누며 더 나은 미래를 위한 준비를 시작해보세요.</p>
                            <img src="/weekcrew/images/img_company.jpg" alt="회사 소개" />
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dd class="info_sub_text">
                                        Buddy Learn은 친구들과 함께 배우며 새로운 지식과 기술을 습득할 수 있는 곳입니다. 우리는 친구들과의 협력과 지지가 학습의 핵심이라고 믿습니다. Buddy Learn은 코딩을 비롯한 다양한 주제에서 함께 공부하며, 친구들과의 유대감을 형성하고 배움의 즐거움을 느낄 수 있는 장소입니다.

                                        우리의 목표는 학습을 보다 친근하고 재미있게 만드는 것입니다. Buddy Learn은 친구들과의 협력 프로젝트와 팀 활동을 통해 실전 경험을 제공하며, 이를 통해 현실 세계의 문제를 해결하고 더 나은 솔루션을 찾는 방법을 배울 수 있도록 돕습니다.</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div id="scroll" class="img2">
                            <span>Buddy 이야기</span>
                        </div>
                    </section>
                    <div class="row0">
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 1️⃣ 협력과 커뮤니티</p>
                                <img src="/weekcrew/images/img_ai.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 함께 협력하며 학습하는 커뮤니티</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅  서로의 지식을 나누고 배우며 친밀한 관계를 형성</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 함께 성장하는 Buddies(버디스)와 Pluz(플러즈)  </dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 2️⃣ 학습의 즐거움</p>
                                <img src="/weekcrew/images/img_bookd.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 학습을 어렵고 지루한 과정이 아닌 즐거운 활동으로 만들기 </dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 재미있는 프로젝트와 흥미를 유발하는 활동을 통한 학습</dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 3️⃣ 포용과 다양성 </p>
                                <img src="/weekcrew/images/img_exam.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 모든 학습자를 환영하며, 다양한 배경과 경험을 존중</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 서로의 차이를 포용하고 함께 성장하는 문화</dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <script>
                $(document).ready(function($) {
                    $(".scroll_move").click(function(event){
                        event.preventDefault();
                        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
                    });
                });
            </script>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer.jsp" %>
    </footer>
</div>
</body>
</html>
