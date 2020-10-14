<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<tr>
	<td colspan="4">
		<div class="card" style="padding: 20px; ">
	      <div class="col-md-12" style="padding: 10px; border-bottom:solid 1px #ddd">
	        <h4>${vo.getTitle()}</h4>
	      </div>
	      <div class="x_content"  style="padding: 10px;">
			<textarea rows="10" style="width: 100%; border:solid 1px #ddd; border-radius:6px; padding: 10px;" readonly>${vo.getContent()}</textarea>
	      </div>
	    </div>
	</td>
</tr>