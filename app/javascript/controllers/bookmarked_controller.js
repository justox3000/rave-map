import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert2';

// Connects to data-controller="bookmarked"
export default class extends Controller {
  static targets = ["bookmark"]
  static values = { favoriting: Boolean }
  connect() {
    console.log("hi from stimulus");
  }
  fireSweetAlert(){
    if (this.favoritingValue) {
      this.bookmarkTarget.classList.remove("fa-regular")
      this.bookmarkTarget.classList.add("fa-solid")
      swal.fire({
        title: 'Success!',
        text: 'You added this party to your calendar!',
        icon: 'success',
        confirmButtonText: 'Cool',
        confirmButtonColor: '#07E764',
        customClass: { popup: "swal2-border-radius" }
      }),
      function(){
        location.reload();
      }
    //   this.element.reload()
    // } else {
    //   this.bookmarkTarget.classList.remove("fa-solid")
    //   this.bookmarkTarget.classList.add("fa-regular")
    //   this.element.reload()
    // }
    }
  }
}
