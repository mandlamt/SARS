import { BrowserModule } from '@angular/platform-browser';
import { NgModule,NO_ERRORS_SCHEMA } from '@angular/core';
import { MDBBootstrapModule } from 'angular-bootstrap-md';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule }      from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { HttpClientXsrfModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { HttpErrorHandler }     from './http-error-handler.service';
import { MessageService }       from './message.service';
import { RequestCache, RequestCacheWithMap } from './request-cache.service';
import { RegisterusersComponent } from './registerusers/registerusers.component'
import { AuditSiteLoginsComponent } from './auditlogins/auditlogins.component'
import { AuditSiteActionsComponent } from './auditactions/auditactions.component'
import { httpInterceptorProviders } from './http-interceptors/index';
import { RouterModule, Routes } from '@angular/router';
import { Injectable } from '@angular/core';
import { BaseRequestOptions, RequestOptions, Headers } from '@angular/http';
import { DataTablesModule } from 'angular-datatables';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BusyModule } from 'angular2-busy';
import { HttpModule } from '@angular/http';


const appRoutes: Routes = [
    {
    path: 'users',
    component: RegisterusersComponent,
    data: { title: 'Users List' }
  },
  {
    path: 'sitelogins',
    component: AuditSiteLoginsComponent,
    data: { title: 'Audit Site Logins' }
  },
  {
    path: 'siteactions',
    component: AuditSiteActionsComponent,
    data: { title: 'Audit Site Actions' }
  },
  { path: '',
    redirectTo: '/users',
    pathMatch: 'full'
  },
 // { path: '**', component: PageNotFoundComponent }
];

@Injectable()
export class CustomRequestOptions extends BaseRequestOptions {
  headers = new Headers({
    'Cache-Control': 'no-cache',
    'Pragma': 'no-cache',
    'Expires': 'Sat, 01 Jan 2000 00:00:00 GMT'
  });
}

@NgModule({
  declarations: [
    AppComponent,
    RegisterusersComponent,
    AuditSiteLoginsComponent,
    AuditSiteActionsComponent
    
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    HttpModule,
    BrowserAnimationsModule,
    BusyModule,
    MDBBootstrapModule.forRoot(),
    NgbModule.forRoot(),
    DataTablesModule,
    HttpClientXsrfModule.withOptions({
      cookieName: 'My-Xsrf-Cookie',
      headerName: 'My-Xsrf-Header',
    }),
     RouterModule.forRoot(
      appRoutes,
       {
         useHash: true,
         enableTracing: true
       } // <-- debugging purposes only
    )
  ],
  schemas: [ NO_ERRORS_SCHEMA ],
  providers: [
     HttpErrorHandler,
    MessageService,
    { provide: RequestOptions, useClass: CustomRequestOptions },
    { provide: RequestCache, useClass: RequestCacheWithMap },
    httpInterceptorProviders
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
