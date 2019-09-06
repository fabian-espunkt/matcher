import "bootstrap";
import { displayCalendarInfo } from "packs/slot";

displayCalendarInfo();

// const calendar = document.querySelectorAll(".appointments-table");

//   if(calendar) {
//     console.log(calendar)
//     displayCalendarInfo();
//   };



const cards = document.querySelectorAll('.matching-card');
let index = 0;
let index2 = 0;
// const likeBtn = document.querySelectorAll('.like-btn');

const likeBtn = document.querySelectorAll('.like-btn');
const dislikeBtn = document.querySelectorAll('.dislike-btn');
// const counter = document.querySelector('#attendence-counter');
// const parsedCounter = Number.parseInt(counter.innerText, 10);

cards.forEach((card) => {
  if (index !== 0) {
    card.style.display = 'none';
  }
  index += 1;
  // console.log(likeBtn, cards);
  // card.addEventListener('click', (event) => {
  //   card.style.display = 'none';
  //   card.nextSibling.nextSibling.style.display = "";

  // })
});




// var counter = document.querySelector('#attendence-counter');
// counter = Number.parseInt(counter.innerText, 10);
likeBtn.forEach((likeBtn) => {
  if (index2 !== 0) {
    likeBtn.style.display = 'none';
  }
  index2 += 1;
  likeBtn.style.display = "";
  // console.log(likeBtn.parentElement.parentElement.parentElement)
  likeBtn.addEventListener('click', (event) => {
    likeBtn.parentElement.parentElement.parentElement.style.display = 'none';
    likeBtn.parentElement.parentElement.parentElement.nextSibling.nextSibling.style.display = "";
    // counter -= 1;
  })
});


dislikeBtn.forEach((dislikeBtn) => {
  if (index2 !== 0) {
    dislikeBtn.style.display = 'none';
  }
  index2 += 1;
  dislikeBtn.style.display = "";
  // console.log(likeBtn.parentElement.parentElement.parentElement)
  dislikeBtn.addEventListener('click', (event) => {
    dislikeBtn.parentElement.parentElement.parentElement.style.display = 'none';
    dislikeBtn.parentElement.parentElement.parentElement.nextSibling.nextSibling.style.display = "";
    // counter -= 1;
  })
});
    // parsedCounter -= 1;
// console.log(parsedCounter);

// document.querySelector('#attendence-counter') = Number.parseInt(document.querySelector('#attendence-counter').innerText, 10);
// var newCounter = counter;

// counter.innerText = newCounter;
// console.log(newCounter);


















