import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class Service {
  private baseUrl = 'http://localhost:3000';

  constructor(private http: Http) {}

  getService(url, id) {
	if (id === undefined) {
      return this.http.get(`${this.baseUrl}/${url}`, new RequestOptions({headers: this.getHeaders()}))
	             .map(res => res.json());
    } else {
      return this.http.get(`${this.baseUrl}/${url}/${id}`, new RequestOptions({headers: this.getHeaders()}))
	  			 .map(res => res.json());
    }
  }
  putService(record) {
    return this.http.put(`${this.baseUrl}/${record.id}`, record, new RequestOptions({headers: this.getHeaders()}))
	           .subscribe(pacient => {
                 console.log(pacient);
               });
  }

  private getHeaders(){
    // I included these headers because otherwise FireFox
    // will request text/html instead of application/json
    let headers = new Headers();
    headers.append('Accept', 'application/json');
    return headers;
  }
}
