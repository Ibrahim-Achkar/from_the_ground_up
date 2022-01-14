export function closeModals() {
  const modals = document.getElementsByClassName('modal');

  window.onclick = function (event) {
    for (let modal of modals) {
      if (event.target == modal) {
        modal.style.display = 'none';
      }
    }
  };
}
