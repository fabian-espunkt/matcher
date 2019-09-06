const calendar = document.querySelectorAll(".appointments-table");
const slot = document.querySelector('.slot');
const calendarInfo = document.querySelector('.calendar-info');


const displayCalendarInfo = () => {
  if (slot) {
    slot.addEventListener('click', (event) => {
      console.log(calendarInfo)
      calendarInfo.classList.toggle("hidden")
    })

  }
}

export { displayCalendarInfo };

