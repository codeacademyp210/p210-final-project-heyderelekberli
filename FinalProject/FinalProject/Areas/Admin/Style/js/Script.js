"use strict";

function openNav() {
  document.getElementById("mySidebar").style.width = "200px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}

(function () {

  // Create input element for testing
  var inputs = document.createElement('input');

  // Create the supports object
  var supports = {};

  supports.autofocus = 'autofocus' in inputs;
  supports.required = 'required' in inputs;
  supports.placeholder = 'placeholder' in inputs;

  // Fallback for autofocus attribute
  if (!supports.autofocus) {

  }

  // Fallback for required attribute
  if (!supports.required) {

  }

  // Fallback for placeholder attribute
  if (!supports.placeholder) {

  }
})();

//Fixed Button

function fadeIn(elem, speed) {
  if (elem.style.opacity) {
    elem.style.opacity = 0;
    elem.style.display = "block";
  }
  var fadeInInterval = setInterval(function () {
    elem.style.opacity = Number(elem.style.opacity) + 0.02;
    if (elem.style.opacity >= 1) {
      clearInterval(fadeInInterval);
    }
  }, speed);
}

function fadeOut(elem, speed) {
  if (!elem.style.opacity) {
    elem.style.opacity = 1;
  }
  var fadeOutInterval = setInterval(function () {
    elem.style.opacity = Number(elem.style.opacity) - 0.02;
    if (elem.style.opacity <= 0) {
      clearInterval(fadeOutInterval);
      elem.style.display = "none";
    }
  }, speed);
}

window.onscroll = function () { scrollFunction() };

var isScrollUpDisplayed = false;
var scrollUpElem = document.querySelector(".scroll-top");

scrollUpElem.addEventListener("click", function () {
  var upInterval = setInterval(function () {
    if (document.documentElement.scrollTop <= 0) {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
      clearInterval(upInterval);
    } else {
      document.body.scrollTop -= 20;
      document.documentElement.scrollTop -= 20;
    }

  }, 1);

});


function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    if (!isScrollUpDisplayed) {
      fadeIn(scrollUpElem, 10);
      isScrollUpDisplayed = true;
    }
  } else {
    if (isScrollUpDisplayed) {
      fadeOut(scrollUpElem, 10);
      isScrollUpDisplayed = false;
    }
  }
}

var section = document.querySelector(".simple-section");
section.addEventListener("click", function () {
  fadeOut(tabs[0], 20)
});


// $(function () {
//   $(".pagination").pagination({
//     items: 100,
//     itemsOnPage: 5,
//     cssStyle: 'light-theme'
//   });
// });
// $(function () {
//   $(".prevBtn").pagination('prevPage');
// });
