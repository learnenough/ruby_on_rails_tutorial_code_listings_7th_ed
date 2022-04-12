// Menu manipulation

// Add toggle listeners to listen for clicks.
document.addEventListener("turbo:load", function() {
  let account = document.querySelector("#account");
  account.addEventListener("click", function(event) {
    event.preventDefault();
    event.stopPropagation();
    let menu = document.querySelector("#dropdown-menu")
    menu.classList.toggle("active");
  });
});
