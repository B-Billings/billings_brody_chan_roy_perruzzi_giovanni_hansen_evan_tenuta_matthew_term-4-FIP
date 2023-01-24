(()=>{
	const button = document.querySelector("#navbutton");
	const menu = document.querySelector("#menucontent");

	function compactmenu() {
		button.classList.toggle("expanded");
		menu.classList.toggle("slideToggle");
	}


	button.addEventListener("click", compactmenu);

})();