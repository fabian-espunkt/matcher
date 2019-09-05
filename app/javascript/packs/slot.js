
const slot = document.querySelector('.slot');
const calendarInfo = document.querySelector('.calendar-info');
console.log(slot)
const displayCalendarInfo = () => {
  slot.addEventListener('click', (event) => {
    console.log(calendarInfo)
    calendarInfo.classList.toggle("hidden")
  })
}


export { displayCalendarInfo };

