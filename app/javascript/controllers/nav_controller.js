import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "icon"]

  connect() {
    this.onScroll = this.onScroll.bind(this)
    window.addEventListener("scroll", this.onScroll, { passive: true })
    this.onScroll()
  }

  disconnect() {
    window.removeEventListener("scroll", this.onScroll)
  }

  onScroll() {
    this.element.classList.toggle("is-scrolled", window.scrollY > 24)
  }

  toggle() {
    const isOpen = this.element.classList.toggle("menu-open")
    this.menuTarget.classList.toggle("menu-visible", isOpen)
  }

  close() {
    this.element.classList.remove("menu-open")
    this.menuTarget.classList.remove("menu-visible")
  }
}
