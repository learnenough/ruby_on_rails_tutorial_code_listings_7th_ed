// Menu manipulation

// Adds a toggle listener.
function addToggleListener(selected_id, event_type, menu_id, toggle_class) {
  let selected_element = document.querySelector(`#${selected_id}`);
  selected_element.addEventListener(event_type, function(event) {
    event.preventDefault();
    event.stopPropagation();
    let menu = document.querySelector(`#${menu_id}`)
    menu.classList.toggle(toggle_class);
  });
}

// Add toggle listeners to listen for clicks.
document.addEventListener("turbo:load", function() {
  addToggleListener("hamburger", "touchstart", "navbar-menu",   "collapse");
  addToggleListener("hamburger", "click",      "navbar-menu",   "collapse");
  addToggleListener("account",   "click",      "dropdown-menu", "active");
});
