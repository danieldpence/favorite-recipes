import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "links", "template" ]

  connect() {
    this.wrapperClass = this.data.get("wrapperClass") || "nested-fields"
  }

  addRecord(event) {
    event.preventDefault()

    var content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    this.linksTarget.insertAdjacentHTML('beforebegin', content)
  }

  removeRecord(event) {
    event.preventDefault()

    let wrapper = event.target.closest("." + this.wrapperClass)

    if (wrapper.dataset.newRecord == "true") {
      wrapper.remove()
    } else {
      wrapper.querySelector("input[name*='_destroy']").value = 1
      wrapper.style.display = 'none'
    }
  }
}