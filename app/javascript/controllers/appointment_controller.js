import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["tabStudent", "tabTutor"]

  connect() {
    console.log("Hello from your first Stimulus controller")
  }

  toggleTabs(event) {
    this.tabStudentTarget.classList.toggle("active")
    this.tabTutorTarget.classList.toggle("active")

    if (this.tabStudentTarget.classList.contains("active")) {
      document.getElementById("student-appointments").classList.remove("d-none");
      document.getElementById("tutor-appointments").classList.add("d-none");
    } else {
      document.getElementById("student-appointments").classList.add("d-none");
      document.getElementById("tutor-appointments").classList.remove("d-none");
    }
  }
}
