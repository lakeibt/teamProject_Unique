<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<table class="table" style="font-size: 13px; margin-top: -18px;">
		<tr>
			<td style="10%">1</th>
			<td id="detail" style="60%"><a href="#" onclick="content()">2</a></th>
			<td style="20%">3</th>
			<td style="10%">4</th>
		</tr>
</table>
<div id="coninfo2">
						
</div>

<script type="text/javascript">
  
function content  () {
   var yourSelect = document.getElementById("detail");
   console.log(yourSelect);
   var value = yourSelect.options[yourSelect.selectedIndex].value;
   console.log(value);
   var param = "value=" + value;
   
   sendRequest(content_callback,"contestnext2", "get", param);
   console.log(param);
}
function content_callback() {
   var result = document.getElementById("coninfo2");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}
</script>
