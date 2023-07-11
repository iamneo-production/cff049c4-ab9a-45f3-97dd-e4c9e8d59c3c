import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeComponent } from './home.component';

describe('HomeComponent', () => {
  let component: HomeComponent;
  let fixture: ComponentFixture<HomeComponent>;
  let loginService:any,router:any;

  beforeEach(() => {
    component = new HomeComponent(loginService,router);
  });

  it('home_component', () => {
    expect(component).toBeTruthy();
  });
});
