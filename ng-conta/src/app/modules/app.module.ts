import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';

import { AppComponent } from '../components/app.component';
import { DashboardComponent } from '../components/dashboard.component';
import { NavigationComponent } from '../components/navigation.component';
import { TopnavbarComponent } from '../components/topnavbar.component';

import { BusinessPartnersIndex } from '../components/business_partners/index.component';
import { BusinessPartnersForm } from '../components/business_partners/form.component';
import { BusinessPartnersShow } from '../components/business_partners/show.component';


import { appRoutes } from '../modules/routing.module';

@NgModule({
  declarations: [
    AppComponent,
    DashboardComponent,
    NavigationComponent,
    TopnavbarComponent,

    BusinessPartnersIndex,
    BusinessPartnersForm,
    BusinessPartnersShow
  ],
  imports: [
    BrowserModule,
    HttpModule,
    appRoutes,
	FormsModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
