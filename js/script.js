function hideShow(n) {
  if (n.style.display != "block") {
    n.style.display = "block";
  } else {
    n.style.display = "none";
    // n.style.animation = "remove 0.2s ease-in";
  }
}

function show() {
  let n = document.getElementById("dropdown");
  hideShow(n);
}
function show2() {
  let n = document.getElementById("dropdown2");
  hideShow(n);
}
function show3() {
  let n = document.getElementById("dropdown3");
  hideShow(n);
}
function show4() {
  let n = document.getElementById("dropdown4");
  hideShow(n);
}

function sidenav() {
  let navList = document.getElementsByClassName("nav-list");
  for (var i = 0; i < navList.length; i++) {
    if (navList[i].style.display != "none") {
      navList[i].style.display = "none";
    } else {
      navList[i].style.display = "block";
    }
  }
}
