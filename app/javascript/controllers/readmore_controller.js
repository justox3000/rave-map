import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="readmore"
export default class extends Controller {
  static targets = ["hideable"]
  connect() {
    console.log("hi");
  }

  hidden(){
    this.hideableTargets.forEach(element=>{element.hidden = !element.hidden});
  }
}
