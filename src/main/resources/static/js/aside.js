/* 변수 생성*/
const mollang1_btn = document.querySelector('.mollang1_btn');
const mollang2_btn = document.querySelector('.mollang2_btn');
const mollang3_btn = document.querySelector('.mollang3_btn');
const mollang_board_btn = document.querySelector('.mollang_board_btn');

const mollang1_2 = document.querySelector('.mollang1_2');
const mollang2_2 = document.querySelector('.mollang2_2');
const mollang3_2 = document.querySelector('.mollang3_2');

/* 게시판 버튼 눌렀을 때 게시판 메뉴를 없애기 위해서. */
const mollang2 = document.querySelector('.mollang2');
const mollang4 = document.querySelector('.mollang4');
const mollang3 = document.querySelector('.mollang3');
const mollang_board_2 = document.querySelector('.mollang_board_2');

mollang1_btn.addEventListener('click', () => {
	mollang1_2.classList.toggle('active');
});

mollang2_btn.addEventListener('click', () => {
	mollang2_2.classList.toggle('active');
});

mollang3_btn.addEventListener('click', () => {
	mollang3_2.classList.toggle('active');
});

mollang_board_btn.addEventListener('click', () => {
	mollang2.classList.toggle('active');
	mollang4.classList.toggle('active');
	mollang_board_2.classList.toggle('active');
	mollang3.classList.toggle('active');
})
