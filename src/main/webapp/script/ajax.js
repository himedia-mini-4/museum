function ajax(requestUrl, requestBody, callback) {
	if (callback === undefined) {
		callback = getDefaultHeaders();
	}

	const xhr = new XMLHttpRequest();
	xhr.open("POST", requestUrl, true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState !== 4) {
			return;
		}

		if (xhr.status !== 200) {
			callback({ code: 'failure', data: '서버와의 통신 중 오류가 발생했습니다.' });
			return;
		}

		callback(JSON.parse(xhr.responseText));
	};

	if (typeof requestBody === 'object') {
		requestBody = Object
			.entries(requestBody)
			.filter(([, value]) => value !== null && value !== undefined)
			.map(([key, value]) => `${key}=${value}`).join('&');
	}
	xhr.send(requestBody);
}

function getDefaultHeaders() {
	return function(response) {
		switch (response.code) {
			case 'success':
				location.href = response.data;
				break;

			case 'failure':
				alert(response.data);
				break;

			default:
				alert("알 수 없는 오류가 발생했습니다.");
				break;
		}
	};
}