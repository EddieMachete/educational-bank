'use strict';

import { App } from '@app/index';
import * as advisor from '@advisor/index';

console.log(advisor);
const app = new App();

const webApp = document.querySelector('web-app');
webApp['setApp'](app);
window['app'] = app;
