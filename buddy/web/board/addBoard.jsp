<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buddy 교육 작성하기</title>

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
    <style>
        /* 본문 영역 스타일 */
        .wrap { background-color: #ffffff; }
        .contents { clear:both; min-height:100vh;
            background-repeat: no-repeat; background-position:center -250px; }
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page {
    clear: both;
    width: 100vw;
    height: auto;
    position: relative;
}
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap {
    clear: both;
    /* width: 1200px; */
    height: auto;
    margin: 0 auto;
}
        .page_tit {
    font-size: 48px;
    text-align: center;
    padding-top: 1em;
    color: #fff;
    padding-bottom: 2.4rem;
    background-color: #eb9362;
}

        .breadcrumb {
    clear: both;
    /* width: 1200px; */
    margin: 0 auto;
    text-align: right;
    color: #fff;
    padding-top: 28px;
    padding-bottom: 28px;
    background-color: #eb9362;
}
        .breadcrumb a { color:#fff; }
        .frm { clear:both; width:1200px; margin:0 auto; padding-top: 80px; }

        .tb1 { width:800px; margin:50px auto; }
        .tb1 th { width:150px; line-height:32px; padding-top:8px; padding-bottom:8px;
            border-top:1px solid #fff; border-bottom:1px solid #fff;
            background-color:#eb9362; color:#fff; }
        .tb1 td { width:650px; line-height:32px; padding-top:8px; padding-bottom:8px;
            padding-left: 14px; border-top:1px solid #fff; }

        .indata { display:inline-block; width:600px; height: 48px; line-height: 48px;
            padding:14px; font-size:18px; }
        .indata2 { width: 600px; padding: 14px; font-size:18px; }
        .inbtn { display:block;  border-radius:100px;
            min-width:140px; padding-left: 24px; padding-right: 24px; text-align: center;
            line-height: 48px; background-color: #eb9362; color:#fff; font-size: 18px; border-color: #eb9362; }
        .inbtn:first-child { float:left; }
        .inbtn:last-child { float:right; }
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
                <p><a href="">HOME</a> &gt <span>Buddy 교육</span> &gt <span>Buddy 교육 작성하기</span> </p>
            </div>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">Buddy 교육 작성하기</h2>
                    <hr>
                    <form action="/board/addBoardPro.jsp" method="post">
                        <table class="tb1">
                            <tbody>
                            <tr>
                                <th><label for="title">글 제목</label></th>
                                <td>
                                    <input type="text" name="title" id="title" class="indata" required/>
                                    <input type="hidden" name="author" id="author" value="<%=sid %>"/>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="content">글 내용</label></th>
                                <td>
                                    <textarea rows="10" cols="80" maxlength="990" name="content" id="content" class="indata2" required></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="글쓰기" class="inbtn">
                                    <input type="reset" value="취소" class="inbtn">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </section>
        </div>
        <footer class="ft" id="ft">
            <%@ include file="../footer.jsp" %>
        </footer>
    </div>
</body>
</html>
