import { Component } from '@angular/core';
import { AppConfig } from './env/app-config';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: [ './app.component.css' ]
})
export class AppComponent {
  constructor(private appConfig: AppConfig) {
  }

  get config() {
    return this.appConfig.getConfig();
  }

  get keys() {
    return this.appConfig.getKeys();
  }

  public getValue(key: string): string {
    return this.appConfig.getValue(key);
  }
}
