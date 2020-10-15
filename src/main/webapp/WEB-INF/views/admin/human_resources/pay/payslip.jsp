<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여명세표</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
</head>
<script type="text/javascript">
//다운로드 하이퍼링크에 클릭 이벤트 발생시 saveCSV 함수를 호출하도록 이벤트 리스너를 추가
document.addEventListener('DOMContentLoaded', function(){
  document.getElementById('download').addEventListener('click', function(){
    saveCSV('${vo.id}+${vo.salary_name}.csv'); // CSV파일 다운로드 함수 호출
    return false;
  })
});

//CSV 생성 함수
function saveCSV(fileName){
    //CSV 문자열 생성
    let downLink = document.getElementById('download');
    let csv = ''; //CSV최종 문자열을 저장하는 변수
    let rows = document.querySelectorAll("#csvtable tr"); // 테이블에서 행 요소들을 모두 선택

    //행단위 루핑
    for (var i = 0; i < rows.length; i++) {
        let cells = rows[i].querySelectorAll("td, th");
        let row = [];
        //행의 셀 값을 배열로 얻기
        cells.forEach(function(cell){
        	if(cell.innerHTML.substr(0,1)=="<"){
        		row.push('"'+cell.firstChild.value+'"');
        	} else {
          		row.push('"'+cell.innerHTML+'"');
        	}
        });
        csv += row.join(',') + (i != rows.length-1 ? '\n':'');  //배열을 문자열+줄바꿈으로 변환
    }

    //CSV 파일 저장
    csvFile = new Blob(["\ufeff"+csv], {type: "text/csv;charset=utf-8;"}); // 생성한 CSV 문자열을 Blob 데이터로 생성
    downLink.href = window.URL.createObjectURL(csvFile); // Blob 데이터를 URL 객체로 감싸 다운로드 하이퍼링크에 붙임.
    downLink.download = fileName; // 인자로 받은 다운로드 파일명을 지정
}


</script>

<body>


<div class="row"> 
	<div class="col-md-12">
		<div class="x_panel"  style="height:600px;">
				<div class="x_title">
					<h4 style="align: center;">급여명세표 <a href="" id="download">csv 생성</a></h4>
				</div>
				<div class="x_content">
					<table class="table" id="csvtable">
						<thead style="color: #73879C; width: 100px;">
							<tr>
								<td colspan="6">${vo.salary_name} 급여명세표</td>
							</tr>
							<tr style="color: #73879C;">
								<td style="width: 5%">사원번호</td>
								<td style="width: 15%"><input
									class="form-control input-sm" type="text"
									value="${vo.id}" readOnly></td>
								<td style="width: 5%">성명</td>
								<td style="width: 15%"><input
									class="form-control input-sm" type="text"
									value="${vo.name}" readOnly></td>
								<td style="width: 5%">부서</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.depart_name}" readOnly></td>
							</tr>
							<tr style="color: #73879C;">
								<td style="width: 5%">직급</td>
								<td style="width: 15%"><input
									class="form-control input-sm" type="text" value="${vo.rank}" readOnly></td>
								<td style="width: 5%">입사일</td>
								<td style="width: 15%"><input
									class="form-control input-sm" type="text"
									value="${vo.enterday}" readOnly></td>
								<td style="width: 5%">지급일자</td>
								<td style="width: 15%"><input
									class="form-control input-sm" type="text"
									value="${vo.salary_inday}" readOnly></td>
							</tr>
							<c:if test="${vo.salary_division == 1}">
								<tr style="color: #73879C;">
									<td style="width: 10%">이메일</td>
									<td style="width: 10%">${vo.email}</td>
									<td style="width: 10%">지급총액</td>
									<fmt:formatNumber var="totalpay" type="number" maxFractionDigits="3" value="${vo.salary+vo.meal+vo.contract_vehicle}"/>
									<td style="width: 10%"><input
										class="form-control input-sm" type="text"
										value="${totalpay}" readOnly></td>
									<td style="width: 10%">실지급액</td>
									<fmt:formatNumber var="totalpay1" type="number" maxFractionDigits="3" value="${vo.salary+vo.meal+vo.contract_vehicle}"/>
									<td style="width: 10%"><input
										class="form-control input-sm" type="text"
										value="${totalpay1}" readOnly></td>
								</tr>
							</c:if>
							<c:if test="${vo.salary_division != 1}">
								<tr style="color: #73879C;">
									<td style="width: 10%">이메일</td>
									<td style="width: 10%">${vo.email}</td>
									<td style="width: 10%">지급총액</td>
									<fmt:formatNumber var="total" type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/>
									<td style="width: 10%"><input
										class="form-control input-sm" type="text" value="${total}" readOnly></td>
									
									<td style="width: 10%">실지급액</td>
									<fmt:formatNumber var="total1" type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/>
									<td style="width: 10%"><input
										class="form-control input-sm" type="text" value="${total1}" readOnly></td>
								</tr>
							</c:if>
						</thead>
						<tbody style="color: #73879C;">
							<tr style="color: #73879C; width: 100px;">
								<th style="width: 10%">수당항목명</th>
								<th style="width: 10%">지급유형</th>
								<th style="width: 10%">근무기록</th>
								<th></th>
								<th style="width: 10%">수당금액</th>
								<th style="width: 10%">금액</th>

							</tr>
						</tbody>
						<tbody style="color: grey;">
							<c:if test="${vo.salary_division == 1}">
								<tr>
									<th style="width: 10%">급여</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">식대</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.meal}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.meal}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">차량유지비</th>
									<td style="width: 10%">고정급</td>
									
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.contract_vehicle}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.contract_vehicle}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">합계</th>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary+vo.meal+vo.contract_vehicle}"/></td>
								</tr>
							</c:if>
							<c:if test="${vo.salary_division != 1}">
								<tr>
									<th style="width: 10%">상여</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
								</tr>
								
								<tr>
									<th style="width: 10%">합계</th>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
								</tr>
								
							</c:if>
						</tbody>
					</table>
				</div>
		</div>
			
	</div>
</div>

</body>
</html>