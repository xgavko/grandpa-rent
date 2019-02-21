import "bootstrap";

import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initSelect2 } from "../plugins/init_select2.js"
import { initMapbox } from '../plugins/init_mapbox';
import { changeStatus } from "./rents_status.js";
import { disableButtons } from "./disbel_buttons.js";

initMapbox();
initSelect2();

