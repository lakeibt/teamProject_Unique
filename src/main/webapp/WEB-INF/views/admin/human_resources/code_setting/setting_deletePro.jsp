<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<c:if test="${deleteCnt == 1 }">
	<script>
		alert("삭제되었습니다");
		window.history.back();
	</script>
</c:if>
<c:if test="${deleteCnt == 2 }">
	<script>
		alert("다음 항목에 해당하는 대상이 존재하므로 삭제 할 수 없습니다");
		window.history.back();
	</script>
</c:if>
<c:if test="${deleteCnt != 1 && deleteCnt != 2 }">
	<script>
		alert("삭제에 실패하였습니다");
		window.history.back();
	</script>
</c:if>
</html>