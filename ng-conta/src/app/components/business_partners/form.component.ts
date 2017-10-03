import {Router, ActivatedRoute, Params} from '@angular/router';
import {OnInit, Component } from '@angular/core';

import { Service } from '../../services/service';
import { BusinessPartner } from './model';

@Component({
  selector: 'business_partners_form',
  templateUrl: '../../templates/business_partners/form.template.html',
  providers: [Service]
})

export class BusinessPartnersForm {
  business_partner: BusinessPartner;

  constructor(private activatedRoute: ActivatedRoute, private service: Service) {
    this.business_partner = new BusinessPartner();
  }

  ngOnInit() {
	  console.log('asdfadsf')
    this.activatedRoute.params.subscribe((params: Params) => {
      this.service.getService('business_partners', params['id']).subscribe(business_partner => {
		  console.log(business_partner);
        this.business_partner = new BusinessPartner(business_partner);
      });
	});
  }
}
