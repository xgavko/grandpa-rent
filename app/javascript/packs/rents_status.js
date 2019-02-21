const a = document.querySelector(".message-status");

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

export { changeStatus };
