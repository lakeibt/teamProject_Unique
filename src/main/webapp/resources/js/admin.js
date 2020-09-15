// 급여 신규 등록 버튼 클릭시 서브창 open
function newCreate() {
	
	var url = "salary_new_create";
	window.open(url, "salary_new_create", "menubar=no, width=700 height=500" );
}


//------------------중복확인페이지 confirmId.do-----------------------
//중복확인창 포커스
function confirmIdFocus(){
	document.confirmform.id.focus();
}
//중복확인창에서 id입력 여부
function confirmkeyCheck(){
	if(!document.confirmform.id.value){
		alert(msg_id);
		document.confirmform.id.focus();
		return false;
	}
}

//opener : window객체의 open()메소드로 열린 새창(=중복확인창)에서 
//      열어준 부모창(=회원가입창)에 접근할 때 사용
//self.close(); 메세지 없이 현재창을 닫을때 사용
//hiddenId : 중복확인 버튼 클릭여부 체크 (0:클릭안함, 1:클릭함)

function setId(id){
	opener.document.signInForm.id.value=id;
	opener.document.signInForm.hiddenId.value=1;
	self.close();

}

//-------------------------------------------------------------------

