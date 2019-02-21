import "bootstrap";

import 'select2/dist/css/select2.css';
import 'flatpickr/dist/flatpickr.min.css';
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2.js';
import { initAutocomplete } from '../plugins/init_autocomplete.js';
import {} from '../plugins/init_flatpickr.js';

initSelect2();
initMapbox();
initAutocomplete();
