import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { TokenService } from './../../services/token.service';
import { HttpcallService } from './../../services/httpcall.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  public form = {
    email: null,
    name: null,
    password: null,
    password_confirmation: null
  };
public error = [];

  constructor(
    private httpcall: HttpcallService,
    private token: TokenService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  onSubmit() {
    this.httpcall.signUp(this.form).subscribe(
      data => this.handleResponse(data),
      error => this.handleError(error)
    );
  }

  handleResponse(data) {
    this.token.handle(data.access_token);
    this.router.navigateByUrl('/profile');

  }

  handleError(error) {
    this.error = error.error.errors;
}

}
