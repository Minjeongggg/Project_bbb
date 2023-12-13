<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/book_list.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
    <style>
        #list_section_title ul li a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 1px;
            height: 2px;
            width: calc(100%);
            background: green;
        }


        /* https://arthur.tistory.com/5 */
        @media (hover) {
            .hover_line:not(.best):hover::after {
                transform: scaleX(1);
                margin-left: 0;
            }

            .hover_line:not(.best)::after {
                transform: scaleX(0);
                margin-left: 50%;
                transform-origin: left;
                transition: transform 500ms ease, margin-left .5s ease;
            }
        }
    </style>
</head>
<body>
    <header id="public_header">
        <ul id="header_ul">
            <div id="wrap_headerMenu">
                <a href=""><li id="logo_li"><img id="header_logo" src="img/로고4.png"></li></a>
                <a href=""><li>도서목록</li></a>
                <a href=""><li>문의 게시판</li></a>
            </div>
            <div id="wrap_headerMy">
                <a href=""><li>로그인</li></a>
                <a href=""><li>장바구니</li></a>
            </div>
        </ul>
    </header>
    
    <!-- <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:5%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:15%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:25%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:35%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:45%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:55%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:65%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:75%; position:absolute;"></a>
    <img src="img/그림1.png" style="width:70px; height:35px; float:left; margin-top:85%; position:absolute;"></a> -->
    <section id="product_list">
        <div id="list_section_title"><!--  -->
            <ul>
                <li><a href="best_book.html" class="hover_line best" href="">베스트셀러</a></li>
                <li><a href="new_book.html" class="hover_line new" href="">신상도서</a></li>
                <li><a href="reservation_book.html" class="hover_line soon" href="">출시예정도서</a></li>
            </ul>
        </div>
        <div id="list_section_top">
            <div id="list_title">
                베스트셀러👑
            </div>
            <div>
                <ul class="book_cat_list">
                    <li><span class="book_category">전체</span></li>
                    <li><span class="book_category">소설/시/에세이</span></li>
                    <li><span class="book_category">외국어/수험서</span></li>
                    <!-- <li style="border:none"></li>
                </ul>
                <ul class="book_cat_list"> -->
                    <li><span class="book_category">사회/경제</span></li>
                    <li><span class="book_category">건강/스포츠</span></li>
                    <li><span class="book_category">가정/육아/요리</span></li>
                    <li><span class="book_category">잡지/만화</span></li>
                </ul>
            </div>
            <div id="book_align_div">
                <span class="book_align">높은 가격순</span>
                <span>|</span>
                <span class="book_align">낮은 가격순</span>
            </div>
        </div>
        <div id="list_section_mid">
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book1.jpg"></a>
                    </div>
                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title fw600">바다가 들리는 편의점</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>
                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book2.jpg"></a>
                    </div>

                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title">포카치아</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>
                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book3.jpg"></a>
                    </div>
                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title">도시와 그 불확실한 벽</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>
                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

 <section id="product_list">
        <div id="list_section_title">
            <ul>
                <li><a href="best_book.html" class="hover_line best" href="">베스트셀러</a></li>
                <li><a href="new_book.html" class="hover_line new" href="">신상도서</a></li>
                <li><a href="reservation_book.html" class="hover_line soon" href="">출시예정도서</a></li>
            </ul>
        </div>
        <div id="list_section_top">
            <div id="list_titile">
                베스트셀러👑
            </div>
            <div>
                <ul class="book_cat_list">
                    <li><span class="booK_category">전체</span></li>
                    <li><span class="booK_category">소설/시/에세이</span></li>
                    <li><span class="booK_category">외국어/수험서</span></li>
                    <!-- <li style="border:none"></li>
                </ul>
                <ul class="book_cat_list"> -->
                    <li><span class="booK_category">사회/경제</span></li>
                    <li><span class="booK_category">건강/스포츠</span></li>
                    <li><span class="booK_category">가정/육아/요리</span></li>
                    <li><span class="booK_category">잡지/만화</span></li>
                </ul>
            </div>
            <div id="book_align_div">
                <span class="book_align">높은 가격순</span>
                <span>|</span>
                <span class="book_align">낮은 가격순</span>
            </div>
        </div>
        <div id="list_section_mid">
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book1.jpg"></a>
                    </div>
                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title">바다가 들리는 편의점</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>
                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book2.jpg"></a>
                    </div>

                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title">포카치아</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>

                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
            <div class="book_list">
                <div class="book_info_div">
                    <div class="book_img_div">
                        <a href="book_detail.html"><img class="book_image" src="./img/book3.jpg"></a>
                    </div>
                    <div class="book_text_div">
                        <a href="book_detail.html">
                            <span class="book_title">도시와 그 불확실한 벽</span>
                            <span class="book_author">마치다 소노코 저자(글) ·모모 황국영 번역</span>
                            <span class="release_date">2023년 03월 24일</span>
                            <span>&nbsp;</span>
                            <span>&nbsp;</span>
                            <span class="book_price">14,400원</span>
                        </a>
                    </div>
                </div>
                <div class="book_order_div">
                    <form class="book_order_form">
                        <button class="cart_btn">장바구니</button>
                        <button class="buy_btn">구매하기</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>