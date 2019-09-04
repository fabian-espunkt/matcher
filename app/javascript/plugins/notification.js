
const initSelection = () => {
  const selection_tab = document.querySelector("#selection-tab");
  const selection = document.querySelector("#selection");
  selection_tab.addEventListener("click", (event) => {
    selection.innerHTML = "0"
    selection.style.color = "transparent"
  });
}


export { initSelection };
