import { Component } from '@angular/core';
import { smoothlyMenu } from '../helpers/app.helper';
declare var jQuery:any;

@Component({
  selector: 'topnavbar',
  templateUrl: '../templates/topnavbar.template.html'
})

export class TopnavbarComponent {
  toggleNavigation(): void {
    jQuery("body").toggleClass("mini-navbar");
    smoothlyMenu();
   }
}
