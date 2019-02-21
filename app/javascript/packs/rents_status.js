const confirmBtn = document.querySelector(".confirmation-btn");
const declineBtn = document.querySelector(".decline-btn");
const a = document.querySelector(".message-status");

const disableButtons = () => {
  confirmBtn.addEventListener('mouseup', (e) =>{
    e.preventDefault();
    e.currentTarget.attributes.value = "disabled";
  });
};


const changeStatus = () => {
  if (a.innerText === "Status: confirmed" ) {
    a.classList.add("confirmed");
  } else if (a.innerText === "Status: declined") {
    a.classList.add("declined");
  } else {
    a.classList.add("pending");
  }
  a;
}

changeStatus();
disableButtons();

export { changeStatus };
export { disableButtons };
