import "bootstrap";

import 'select2/dist/css/select2.css';
import 'flatpickr/dist/flatpickr.min.css';
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
<<<<<<< HEAD
import { initFlatpickr } from '../plugins/init_flatpickr';
import { changeStatus } from 'rents_status';
=======
import { initSelect2 } from '../plugins/init_select2.js';
import {} from '../plugins/init_flatpickr.js';
>>>>>>> 4c50e1dee06ced61c0924c298d4303fd82544c84

initSelect2();
<<<<<<< HEAD
initFlatpickr();



=======
initMapbox();
>>>>>>> 4c50e1dee06ced61c0924c298d4303fd82544c84
