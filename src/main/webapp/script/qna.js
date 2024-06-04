function onReplySubmit() {
	if (confirm("답변을 등록하시겠습니까?")) {
		var form = document.getElementById("qnaReplyForm");
		form.submit();
	}
}

function qnaPwdCheck(qseq, mode, pwd) {
	var url = 'museum.do?command=qnaPwdCheck';
	ajax(url, { qseq, mode, pwd }, function(response) {
		switch (response.code) {
			case 'success':
				location.href = response.data;
				break;

			case 'failure':
				alert(response.data);
				break;

			case 'pwd_request':
				var pwd = prompt(qseq + "번 QnA 글의 비밀번호를 입력하세요:");
				if (pwd !== null && pwd !== undefined && pwd !== "") {
					qnaPwdCheck(qseq, mode, pwd);
				} else {
					alert("비밀번호 입력이 취소되었습니다.");
				}
				break;

			default:
				alert("알 수 없는 오류가 발생했습니다.");
				break;
		}
	});
}