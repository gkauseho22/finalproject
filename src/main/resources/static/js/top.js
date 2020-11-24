/*getElementById방식과 비슷하다. 그러나 선택하는 것은 더 구체적이고 한정적이다.*/
const toggleBtn = document.querySelector('.navbar_toogleBtn');
const toggleStar = document.querySelector('.navbar_toogleStar');

const menu = document.querySelector('.navbar_menu_m');
const icons = document.querySelector('.navbar_icons');
const star = document.querySelector('.navbar_star_m');

/* 토글 버튼이 클릭 했을 때, 전달하는 매개체다. */
toggleBtn.addEventListener('click', () => {
	menu.classList.toggle('active');
});

toggleStar.addEventListener('click', () => {
	star.classList.toggle('active');
});