import { RouterModule, Routes } from '@angular/router';

import { DashboardComponent } from '../components/dashboard.component';

import { BusinessPartnersIndex } from '../components/business_partners/index.component';
import { BusinessPartnersForm } from '../components/business_partners/form.component';
import { BusinessPartnersShow } from '../components/business_partners/show.component';

const routes: Routes = [
  { path: '', component: DashboardComponent, pathMatch: 'full' },
  // business_partners route
  { path: 'business_partners', component: BusinessPartnersIndex },
  { path: 'business_partners/form', component: BusinessPartnersForm },
  { path: 'business_partners/:id/form', component: BusinessPartnersForm },
  { path: 'business_partners/:id', component: BusinessPartnersShow }


]

export const appRoutes = RouterModule.forRoot(routes)
