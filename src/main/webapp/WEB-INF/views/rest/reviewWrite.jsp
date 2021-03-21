<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <section class="reviewcontainer">

        <div class="reviewheader">
            <strong>${param.title} </strong><small>에대한 솔직한 리뷰를 써주세요</small>

        </div>

        <div class="reviewWrap">
            <ul>
                <li><i id="good" class="far fa-laugh-beam emojiunsel selected"><span>맛있다</span></i></li>
                <li><i id="normal" class="far fa-meh emojiunsel"><span>보통</span></i></li>
                <li><i id="bad" class="far fa-frown emojiunsel"><span>별로</span></i></li>
            </ul>
            
       
		<form method="POST" action="/namna/rest/reviewwriteok.action" enctype="multipart/form-data">
		<input type="hidden" name="score" id="score" value="">
        <textarea class="reviewWrite" name="content" placeholder="주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!" ></textarea>
        </div>
        <p style="margin-left: 600px; color: #CCC;">
            <span id="contentlength">0</span><span>/</span><span>1000</span>
        </p>
        <ul class="uploadPhotoWrap">

            <li>
            <label for="photoupload">
                <div id="uploadBtn">
                    <i class="fas fa-plus"></i>
                </div>
             </label>
                <input type="file" id="photoupload" name="attach" style="display: none;" >
               
            </li>
        </ul>

        <div class="writingPage">
            <button class="writingCancle">취소</button>
            <input type="submit" class="writingSubmit" value="리뷰올리기">
        </div>
		</form>



    </section>