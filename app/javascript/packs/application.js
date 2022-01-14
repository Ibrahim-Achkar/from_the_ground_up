// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import 'bootstrap';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { loadModal } from './plan/newPlanModal';
import { loadGoalsModal } from './plan/loadGoalsModal';
import { loadTasksModal } from './plan/loadTasksModal';
import { loadResourcesModal } from './plan/loadResourcesModal';
import { loadDiaryEntriesModal } from './plan/loadDiaryEntriesModal';
import { closeModals } from './plan/closeModals';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // function to load modal was included here because js was not being loaded when navigating to plan, then back to plan index (modal could not be clicked).
  if (
    document.getElementsByClassName('plans').length > 0 &&
    document.getElementsByClassName('index').length > 0
  ) {
    loadModal();
  }

  if (
    document.getElementsByClassName('plans').length > 0 &&
    document.getElementsByClassName('show').length > 0
  ) {
    loadTasksModal();
    loadGoalsModal();
    loadResourcesModal();
    loadDiaryEntriesModal();
    closeModals();
  }
});
