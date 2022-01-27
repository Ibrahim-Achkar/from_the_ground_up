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
import { loadEditPlanModal } from './plan/loadEditPlanModal';
import { closeModals } from './plan/closeModals';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // only load this modal if we are in plans controller and index action
  if (
    document.getElementsByClassName('plans').length > 0 &&
    document.getElementsByClassName('index').length > 0
  ) {
    loadModal();
  }
  if (
    document.getElementsByClassName('pages').length > 0 &&
    document.getElementsByClassName('dashboard').length > 0
  ) {
    loadModal();
  }
  // only load these modals if we have the owning user logged in, we are in the plans controller and we are in the show action
  if (
    document.getElementsByClassName('correct_user').length > 0 &&
    document.getElementsByClassName('plans').length > 0 &&
    document.getElementsByClassName('show').length > 0
  ) {
    loadGoalsModal();
    loadTasksModal();
    loadResourcesModal();
    loadDiaryEntriesModal();
    loadEditPlanModal();
    closeModals();
  }

});
