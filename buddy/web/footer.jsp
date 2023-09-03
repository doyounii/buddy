<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<footer class="ft" id="ft">
    <div class="ft_wrap">
        <nav class="ft_link">
            <ul class="fnb">
                <%--            <li class="ft_logo"></li>--%>
                <li><a href="">제휴문의</a></li>
                <li><a href="">개인정보처리방침</a></li>
                <li><a href="">이용약관</a></li>
                <li><a href="">이메일무단수집거부</a></li>
            </ul>
            <ul class="snb">
                <li class="item1"><a href="">소셜1</a></li>
                <li class="item2"><a href="">소셜2</a></li>
                <li class="item3"><a href="">소셜3</a></li>
                <li class="item4"><a href="">소셜4</a></li>
                <li class="item5"><a href="">소셜5</a></li>
            </ul>
        </nav>
        <script>
            function loc() {
                var url = document.getElementById("sel").value;
                //location.href = url;  //현재 창에
                if (url != "") {
                    var win = window.open(url); //새창에
                }
            }
        </script>
    </div>
    <div class="ft_wrap2">
        <p class="copyright">
            <span>(주)Buddy</span>
            <span>서울시 금천구 가산로9길 54</span>
            <span>대표자 이소윤</span>
            <span>사업자등록번호 119-81-19350</span>
            <span>통신판매신고번호 제18-439호</span>
            <span class="end">부가통신사업신고 016712</span>
        </p>
        <p class="copyright">
            <span>버디 (Buddy) 1577-0902</span>
            <span>버디스 (Buddies) 1577-0218</span>
            <span>플러즈 (Pluz) 1577-6226</span>
            <span>브러즈 (Bruzz) 1577-1533</span>
        </p>
        <p class="cp">COPYRIGHT 1981-2023 Buddy EDUCATION INC. ALL RIGHTS RESERVED.</p>
    </div>
</footer>