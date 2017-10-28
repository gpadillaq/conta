export class BusinessPartner {
  id: number;
  name: string;
  business_partner_type: number;
  coin: number;
  telephone: string;
  cellphone: string;
  email: string;
  active: boolean;
  direction: string;
  id_number: string;

  constructor(options: {
    id?: number,
    name?: string,
    business_partner_type?: number,
    coin?: number,
    telephone?: string,
    cellphone?: string,
    email?: string,
    active?: boolean,
    direction?: string,
    id_number?: string,
    } = {}) {
    this.id = options.id === undefined ? 0 : options.id;
    this.name = options.name || '';
    this.business_partner_type = Number(options.business_partner_type);
    this.coin = Number(options.coin);
    this.telephone = options.telephone || '';
    this.cellphone = options.cellphone || '';
    this.email = options.email || '';
    this.active = options.active;
    this.direction = options.direction || '';
    this.id_number = options.id_number || '';
  }
}

export class BusinessPartnerType {
  constructor(public id: number, public description: string) {}
}

export class Coin {
  constructor(public id: number, public description: string, symbol: string) {}
}
