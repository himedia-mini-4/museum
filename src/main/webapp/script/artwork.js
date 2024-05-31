function go_search_artwork() {
	let inputText = document.searchForm.searchWord.value;
	if (inputText === "") {
		alert("검색어를 입력하세요");
		return false;
	} else {
		return true;
	}
}

function artworkUpdate() {
	let form = document.artworkWriteForm;
	if (form.artist.value == "")
		alert("작가명을 입력하세요");
	else if (form.artname.value == "")
		alert("작품명을 입력하세요");
	else if (form.year.value == "")
		alert("제작연도를 입력하세요")
	else if (form.material.value == "")
		alert("재료를 입력하세요")
	else if (form.size.value == "")
		alert("규격을 입력하세요")
	else if (form.category.value == "")
		alert("카테고리를 선택하세요")
	else if (form.content.value == "")
		alert("작품설명을 입력하세요")
	else if (form.displayYn.value == "")
		alert("전시여부를 선택하세요")
	else{
		form.submit();
	}
}

function unknown() {
	let form = document.artworkWriteForm;

	if (form.unknownArtist.checked)
		form.artist.value = "작자미상";
	else
		form.artist.value = "";

	if (form.unknownYear.checked)
		form.year.value = "연도미상";
	else
		form.year.value = "";
}