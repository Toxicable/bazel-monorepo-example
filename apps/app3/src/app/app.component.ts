import { Component } from '@angular/core';
import {name} from '@repo/lib1';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = name;
  constructor() {
    console.log('nope!')
  }
}
