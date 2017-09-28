export class BusinessPartner {
  id: number;
  name: string;
  business_partner_type_id: number;
  coin_id: number;
  telephone: string;
  cellphone: string;
  email: string;
  active: boolean;
  direction: string;
  id_number: string;

  constructor(options: {
    id?: number,
 	name?: string,
    business_partner_type_id?: number,
    coin_id?: number,
    telephone?: string,
    cellphone?: string,
	email?: string,
	active?: boolean,
	direction?: string,
    id_number?: string,
    } = {}) {
    this.id = options.id === undefined ? 0 : options.id;
    this.name = options.name || '';
	this.business_partner_type_id = options.business_partner_type_id === undefined ? 0 : options.business_partner_type_id;
    this.coin_id = options.coin_id === undefined ? 0 : options.coin_id;
	this.telephone = options.telephone || '';
	this.cellphone = options.cellphone || '';
	this.email = options.email || '';
	this.active = options.active;
	this.direction = options.direction || '';
    this.id_number = options.id_number || '';
  }
}
