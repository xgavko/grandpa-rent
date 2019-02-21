import "bootstrap";

import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css';
import "flatpickr/dist/flatpickr.min.css";

import { initSelect2 } from '../plugins/init_select2.js';
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatpickr } from '../plugins/init_flatpickr';
import { changeStatus } from 'rents_status';

initMapbox();
initSelect2();
initFlatpickr();



