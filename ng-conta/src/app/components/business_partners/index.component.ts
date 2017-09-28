import { Component } from '@angular/core';

import { BusinessPartner } from './model';
import { Service } from '../../services/service';

@Component({
  selector: 'business_partners_index',
  templateUrl: '../../templates/business_partners/index.template.html',
  providers: [Service]
})

export class BusinessPartnersIndex {
  business_partners: BusinessPartner[];

  constructor(private service: Service) {
    this.service.getService('business_partners', undefined).subscribe(business_partners => {
      this.business_partners = business_partners;
    });
  }

}
