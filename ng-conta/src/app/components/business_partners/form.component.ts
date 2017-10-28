import {Router, ActivatedRoute, Params} from '@angular/router';
import {OnInit, Component } from '@angular/core';

import { Service } from '../../services/service';
import { BusinessPartner, BusinessPartnerType, Coin } from './model';

@Component({
  selector: 'business_partners_form',
  templateUrl: '../../templates/business_partners/form.template.html',
  providers: [Service]
})

export class BusinessPartnersForm {
  business_partner: BusinessPartner;
  business_partner_types: BusinessPartnerType[];
  coins: Coin[];

  constructor(private activatedRoute: ActivatedRoute, private service: Service) {
    this.business_partner = new BusinessPartner();
  }

  ngOnInit() {
    this.activatedRoute.params.subscribe((params: Params) => {
      this.service.getService('business_partners', params['id']).subscribe(business_partner => {
        this.business_partner = new BusinessPartner(business_partner);
      });

      this.service.getService('business_partner_types', undefined).subscribe(business_partner_types => {
        this.business_partner_types = [];
        for (let business_partner_type of business_partner_types) {
          this.business_partner_types.push(new BusinessPartnerType(business_partner_type.id,
                                                               business_partner_type.descripcion));
        }
      });
      this.service.getService('coins', undefined).subscribe(coins => {
        this.coins = [];
        for (let coin of coins) {
          this.coins.push(new Coin(coin.id, coin.descripcion, coin.symbol));
        }
      });

    });
  }
}
