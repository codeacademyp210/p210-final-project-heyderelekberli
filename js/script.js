"use strict";

function openNav() {
  document.getElementById("mySidebar").style.width = "300px";
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

  // // Change text inside send button on submit
  // var send = document.getElementById('contact-submit');
  // if (send) {
  //   send.onclick = function () {
  //     this.innerHTML = '...Sending';
  //   }
  // }

})();