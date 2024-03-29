<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String sid = null;
    sid = (String) session.getAttribute("id");

    String path8 = request.getContextPath();
%>

<div class="hd_wrap">
    <nav class="tnb">
        <ul class="menu">
            <% if (sid != null) { %>
            <li><a href="<%=path8 %>/member/logout.jsp">로그아웃</a></li>
            <li><a href="<%=path8 %>/member/mypage.jsp">마이페이지</a></li>
            <li><a href="/contact/map.jsp">오시는길</a></li>
            <% if (sid.equals("admin")) { %>
            <li><a href="<%=path8 %>/member/admin/adminMain.jsp">관리자페이지</a></li>
            <% } %>
            <% } else { %>
            <li><a href="<%=path8 %>/member/login.jsp">로그인</a></li>
            <li><a href="<%=path8 %>/member/term.jsp">회원가입</a></li>
            <li><a href="<%=path8 %>/contact/map.jsp">오시는길</a></li>
            <li id="searchLink"><a href="<%=path8 %>/search/search.jsp">검색창</a></li>
            <% } %>
        </ul>
    </nav>
</div>
<div class="hd_wrap">
    <a href="/" class="logo">
        <img src="<%=path8 %>/images/buddy_logo33.png" alt="윜 로고">
    </a>
    <nav class="gnb">
        <ul class="menu">
            <li class="item1">
                <a href="/company/company.jsp" class="dp1">Buddy 소개</a>
                <ul class="sub">
                    <li><a href="/company/company.jsp">Buddy</a></li>
                    <li><a href="/company/company.jsp?#scroll">Buddy 이야기</a></li>
                    <li><a href="/company/contribution.jsp">사회공헌</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="/board/boardList.jsp" class="dp1">Buddy 교육</a>
                <ul class="sub">
                    <li><a href="/board/boardList.jsp">교육 게시판</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="/faq/faqList.jsp" class="dp1">고객만족센터</a>
                <ul class="sub">
                    <li><a href="/faq/faqList.jsp">자주하는질문</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="/community/cmList.jsp" class="dp1">커뮤니티</a>
                <ul class="sub">
                    <li><a href="/community/cmList.jsp">Buddy 라운지</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>