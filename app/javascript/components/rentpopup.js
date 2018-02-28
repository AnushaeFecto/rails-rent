function listener() {
  console.log('hello');
  var p = document.getElementById("rent-button");
  p.onclick = showAlert;
}

function showAlert(event) {
  alert("You proposal to rent was sent!");
}

export { showAlert };
export { listener };
