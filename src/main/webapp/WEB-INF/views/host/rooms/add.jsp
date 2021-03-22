<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/naman/resources/css/host/rooms/add.css">

<section>
    <!-- <form method="POST" action="" enctype="multipart/form-data" id="companyJoin"> -->
    <form method="POST" action="/naman/host/rooms/addok.action" enctype="multipart/form-data" id="addRooms">

        <h1>객실 정보를 입력해주세요.</h1>

        <div class="subbox" style="width: 750px; margin-left: 20px;">
        	<label for="roomCategory">객실 종류</label>
            <input type="text" class="form-control" id="roomCategory" name="roomCategory" placeholder="객실 이름" required>
        </div>

		<div class="box" style="padding: 0px 20px;">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="person">수용 인원</label> 
				<input type="number" min="1" max="10" step="1" class="form-control" id="person" name="person" placeholder="수용 인원" required>
			</div>
			<div class="withFloat subbox" style="width: 350px;">
				<label for="amount">1박당 요금</label> <input type="text" class="form-control" id="amount" name="amount"
					placeholder="(단위: 원)" required>
			</div>
		</div>


		<div class="box" id="selBed" style="padding: 0px 20px;">
			<div class="withFloat subbox" id="bedbox" style="width: 350px;">
				<label for="bedCategory">침대 종류</label> 					
				<select class="form-control" id="bedCategory" name="bedCategory">
					<option value="1">싱글베드</option>
					<option value="2">더블베드</option>
					<option value="3">세미싱글베드</option>
					<option value="4">퀸베드</option>
					<option value="5">킹베드</option>
					<option value="6">요이불</option>
				</select>
			</div>

		</div>
		
			<div class="withFloat subbox" id="addBox" style="width: 770px;">
				<button type="button" class="btn btn-default btn-sm" id="addBed">
					<span class="glyphicon glyphicon-plus"> 침구 추가하기</span>
				</button>
			</div>

        <div class="withFloat subbox" id="" style="width: 770px; text-align: right; margin-bottom: 0px;">
        	<button type="submit" class="btn btn-primary btn" id="btnAdd">등록하기</button>
        </div>

      </form>

</section>

<script>

    let temp = "";

    temp += "<div class='withFloat subbox bed' id='' style='width: 350px; margin-bottom: 0px;' >";
    temp += "<label for='bedCategory'></label>";
    temp += "<select class='form-control' id='bedCategory' name='bedCategory'>";
    temp += "<option value='1'>싱글베드</option>";
    temp += "<option value='2'>더블베드</option>";    
    temp += "<option value='3'>세미싱글베드</option>";
    temp += "<option value='4'>퀸베드</option>";
    temp += "<option value='5'>킹베드</option>";
    temp += "<option value='6'>요이불</option>";    
    temp += "</select>";
    temp += "</div>";

    
    $("#addBed").click(function() {
        $("#selBed").append(temp);
        // $("#addBed").
    });

</script>
