<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/naman/resources/css/host/rooms/register.css">

<section>

    <form method="POST" action="/naman/host/editok.action" enctype="multipart/form-data" id="formEdit">

        <h1>숙소 기본 정보</h1>

        <div class="box">
            <div class="withFloat subbox" style="width: 350px;">
                <label for="name">숙소명</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="숙소명"  value="${dto.name}" required>
            </div>
            <div class="withFloat subbox" style="width: 350px;">
                <label for="hotelCategorySeq">숙소 종류</label>
                <select class="form-control" id="hotelCategorySeq" name="hotelCategorySeq">
                  <option value="1" selected>호텔</option>
                  <option value="2">호스텔</option>
                  <option value="3">게스트하우스</option>
                  <option value="4">프라이빗하우스</option>
                </select>
            </div>
        </div>

        <div class="subbox" style="width: 750px;">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="주소" value="${dto.address}" required>
        </div>

		<!-- 		
		<label for="subbox">지도</label>
        <div class="subbox">
        	<div id="map" style="width:750px;height:250px;"></div>
        </div> 
        -->


        <div class="subbox" style="width: 750px;">
            <label for="tel">전화번호</label>
            <input type="text" class="form-control" id="tel" name="tel" placeholder="전화번호" value="${dto.tel}" required>
        </div>

        <div class="subbox" style="width: 750px;">
            <label for="webAddress">웹사이트 주소</label>
            <input type="text" class="form-control" id="webAddress" name="webAddress" placeholder="웹사이트주소" value="${dto.webAddress}" required>
        </div>

        <div class="box">
            <div class="withFloat subbox" style="width: 350px;">
              <label for="checkin">체크인 시간</label>
              <select class="form-control" id="checkin" name="checkin">
                <option value="01:00">01:00</option>
                <option value="02:00">02:00</option>
                <option value="03:00">03:00</option>
                <option value="04:00">04:00</option>
                <option value="05:00">05:00</option>
                <option value="06:00">06:00</option>
                <option value="07:00">07:00</option>
                <option value="08:00">08:00</option>
                <option value="09:00">09:00</option>
                <option value="10:00">10:00</option>
                <option value="11:00">11:00</option>
                <option value="12:00">12:00</option>
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
                <option value="16:00">16:00</option>
                <option value="17:00">17:00</option>
                <option value="18:00">18:00</option>
                <option value="19:00">19:00</option>
                <option value="20:00">20:00</option>
                <option value="21:00">21:00</option>
                <option value="22:00">22:00</option>
                <option value="23:00">23:00</option>
                <option value="24:00">24:00</option> 
              </select>
            </div>
            <div class="withFloat subbox" style="width: 350px;">
                <label for="checkout">체크아웃 시간</label>
                <select class="form-control" id="checkout" name="checkout">

                <option value="01:00">01:00</option>
                <option value="02:00">02:00</option>
                <option value="03:00">03:00</option>
                <option value="04:00">04:00</option>
                <option value="05:00">05:00</option>
                <option value="06:00">06:00</option>
                <option value="07:00">07:00</option>
                <option value="08:00">08:00</option>
                <option value="09:00">09:00</option>
                <option value="10:00">10:00</option>
                <option value="11:00">11:00</option>
                <option value="12:00">12:00</option>
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
                <option value="16:00">16:00</option>
                <option value="17:00">17:00</option>
                <option value="18:00">18:00</option>
                <option value="19:00">19:00</option>
                <option value="20:00">20:00</option>
                <option value="21:00">21:00</option>
                <option value="22:00">22:00</option>
                <option value="23:00">23:00</option>
                <option value="24:00">24:00</option>
                </select>
            </div>
        </div>

        <div class="subbox" style="width: 750px;">
	        	<div id="picBox">
		            <label for="pic">숙소사진 등록하기</label>
		            <input type="file" class="form-control" name="pic" value="">
	       		</div>
            <button type="button" class="btn btn-default" id="addPic"><span class="glyphicon glyphicon-plus"> 사진 추가하기</span></button>
        </div>


        <button type="submit" class="btn btn-primary btn" id="btnEdit">수정하기</button>
      
      </form>

</section>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac3d2190891ec56a535a6aa733663912"></script>
<script>

		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.499330, 127.033181),
			level: 3
		};

		var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
		
</script>



<script>

	/* 체크인, 체크아웃 */
/* 	var checkin = document.getElementById("checkin");
	
	for (var i = 0; i <= 24; i++) {
		var op = new Option();
	
		if (i < 10) {
			op.value = "0" + i + ":00";
			op.text = "0" + i + ":00";
		} else {
			op.value = i + ":00";
			op.text = i + ":00";
		}
		
		checkin.options.add(op);
		
 		if ("${dto.checkin}" == op.value) {
 			
		} 

	}
	 */
	$(document).ready(function() {
		$("#hotelCategorySeq").val("${dto.hotelCategorySeq}").prop("selected", true);
		$("#checkin").val("${dto.checkin}").prop("selected", true);
		$("#checkout").val("${dto.checkout}").prop("selected", true);
	});
	
	

	/* 사진 추가하기 */
	let temp = "";
	
	temp += "<input type='file' class='form-control' name='pic'>";
	
	$("#addPic").click(function() {
	    $("#picBox").append(temp);

	});

	
	/* 유효성 검사 */
	$("#formReg").submit(function(evt) {
	
		if ($("#name").val().length() > 30) {
			alert("숙소 이름은 30자 이내로 입력해주세요.");
			$("#name").focus();
			evt.preventDefault();
			return false;
		}
		
		if ($("#address").val().length() > 100) {
			alert("주소는 100자 이내로 입력해주세요.");
			$("#address").focus();
			evt.preventDefault();
			return false;
		}
		
		if ($("#tel").val().length() > 14) {
			alert("전화번호는 '-' 포함 14자 이내로 입력해주세요.");
			$("#tel").focus();
			evt.preventDefault();
			return false;
		}
		
		if ($("#webAddress").val().length() > 100) {
			alert("웹사이트 주소는 100자 이내로 입력해주세요.");
			$("#webAddress").focus();
			evt.preventDefault();
			return false;
		}

		if ($(".pic").val().length() > 100) {
			alert("웹사이트 주소는 영문, 숫자를 포함해 100자 이내로 입력해주세요.");
			$("#pic").focus();
			evt.preventDefault();
			return false;
		}
		
			
	});
	
	
	
	
	
	
	
</script>

