<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="/naman/resources/js/jquery-1.12.4.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>오잉</h1>
	<input type="button" id="btn" value="버튼">
	<div id="list">
	</div>

<script>

 $("#btn").click(function(){
	
	  $.ajax({          
          url: 'resmain.action',
          type: 'get',
          dataType: 'json',
          success: function(data){
              
              var myItem = data.response.body.items.item;
            
                  
                  for(var i=0; i<=myItem.length; i++){
                	 var output = '';
                  output += '<h4>'+myItem[i].title+'</h4>';
                  output += '<h4>'+myItem[i].addr1+'</h4>';
                  output += '<h4>'+myItem[i].tel+'</h4>';
                  output += '<h4>'+myItem[i].mapx+'</h4>';
                  output += '<h4>'+myItem[i].mapy+'</h4>';
					
                  document.body.innerHTML += output;
                  }
 	             },
          error: function(XMLHttpRequest, textStatus, errorThrown){
        	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
          }
	  });  
	
}); 

</script>
</body>
</html>