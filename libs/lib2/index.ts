import {NgModule} from '@angular/core';
import {OAuthModule} from 'angular-oauth2-oidc';
import {name} from '@repo/lib1';

@NgModule({
    imports: [OAuthModule.forRoot()]
})
export class MyModule {
    name = name;
}