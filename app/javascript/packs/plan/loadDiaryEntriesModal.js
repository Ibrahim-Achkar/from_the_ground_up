export function loadDiaryEntriesModal() {
  // Get the modal
  const modal = document.getElementById('diaryModal');

  // Get the button that opens the modal
  const btn = document.getElementById('diaryAddButton');

  // Get the <span> element that closes the modal
  const span = document.getElementById('closeDiaryModal');

  // When the user clicks on the button, open the modal
  btn.onclick = function () {
    modal.style.display = 'block';
  };

  // When the user clicks on <span> (x), close the modal
  span.onclick = function () {
    modal.style.display = 'none';
  };
}
