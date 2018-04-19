import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

import { AuthService } from './../../services/auth.service';
import { TokenService } from './../../services/token.service';
import { HttpcallService } from './../../services/httpcall.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

public form = {
  email: null,
  password: null
};

public error = null;

  constructor(
    private httpcall: HttpcallService,
    private token: TokenService,
    private router: Router,
    private auth: AuthService
  ) { }

  ngOnInit() {
  }



  onSubmit() {
    // console.log(this.form);
    this.httpcall.login(this.form).subscribe(
      data => this.handleResponse(data),
      error => this.handleError(error)
    );
  }

  handleResponse(data) {
    this.token.handle(data.access_token);
    this.auth.changeAuthStatus(true);
    this.router.navigateByUrl('/home');

  }

  handleError(error) {
    this.error = error.error.error;
  }

}
