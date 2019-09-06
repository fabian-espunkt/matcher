const calendar = document.querySelectorAll(".appointments-table");
const slots = document.querySelectorAll('.slot');
const calendarInfos = document.querySelectorAll('.calendar-info');


const displayCalendarInfo = () => {
  const handleSlot = e => {
    const slotIndex = parseInt(e.currentTarget.dataset.index);

    calendarInfos.forEach(info => {
      const {calendarIndex} = info.dataset;
      if(slotIndex === parseInt(calendarIndex)) {
        if (info.classList.contains("hidden")) {
          info.classList.remove("hidden");
        }
      } else {
        info.classList.add("hidden")
      }
    })

  }
  if(slots) {
    slots.forEach(slot => slot.addEventListener('click', handleSlot))
  }

}

export { displayCalendarInfo };

