import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }
}

updateNavbar() {
  if (window.scrollY >= window.innerHeight) {
    this.element.classList.add("navbar-lewagon-red")
  } else {
    this.element.classList.remove("navbar-lewagon-red")
  }
}
