function salTotalIn(num){
	window.location="salaryTotalinput?salary_input_num="+num;
}

function salaryModify(num) {
	window.loaction="salary_modify?salary_input_num="+num;
}

function deleteSalary(num){
	window.loaction="salary_delete?salary_input_num="+num;
}

function modifyRoll(id) {
	//id값 미입력시
	var url = "modifyRoll?id=" + id;
	window.open(url, "confirm", "menubar=no, width=350 height=300" );
}

//payslipInfo('${stos.id}','${salary_input_num}')"
function payslipInfo(id, num) {
	//id값 미입력시
	var url = "payslip?salary_input_num=" + num+"&id="+id;
	window.open(url, "confirm", "menubar=no, width=1400 height=600" );
}

function payslip(num){
	window.loaction="payslip?salary_input_num="+num;
}

function salCommit(num){
	window.loaction="commitSalary?salary_input_num="+num;
}