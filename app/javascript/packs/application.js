import "bootstrap";

import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initSelect2 } from "../plugins/init_select2.js"
import { initMapbox } from '../plugins/init_mapbox';

initSelect2()
<<<<<<< HEAD

import { changeStatus } from "./rents_status.js";
import { disableButtons } from "./rents_status.js";
=======
initMapbox();


>>>>>>> 835ac9b973cc5b4bf2c4e256b862e7a860dcc908
