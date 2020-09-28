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

function payslip(num){
	window.loaction="payslip?salary_input_num="+num;
}