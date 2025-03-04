function checkedCheckBox() {
  const buttonSubmit = document.querySelector("#submit__button");
  if (document.querySelector("#checkbox__input").checked) {
    buttonSubmit.disabled = "";
  } else {
    buttonSubmit.disabled = "disabled";
  }
}
