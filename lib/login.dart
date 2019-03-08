import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';
import 'package:ng_modular_admin/validators.dart' as MaValidators;

import 'routes.dart';

/// Layout component.
@Component(
    selector: 'login',
    styles: const ['''
        ma-card.shake {
            animation: shake 0.5s linear;
        }
        @keyframes shake {
            from {
                transform: translateX(0);
            }
            10% {
                transform: translateX(-1rem);
            }
            20% {
                transform: translateX(1rem);
            }
            35% {
                transform: translateX(-0.5rem);
            }
            50% {
                transform: translateX(0.5rem);
            }
            70% {
                transform: translateX(-0.25rem);
            }
            90% {
                transform: translateX(0.25rem);
            }
            to {
                transform: translateX(0);
            }
        }
        h1 {
            text-align: center;
            border-bottom: 1px solid var(--ma-primary-color);
            color: var(--ma-secondary-color);
            margin: 0;
            padding: 20px;
        }
        .content {
            padding: 20px;
        }
    '''],
    templateUrl: 'login.html',
    directives: const [formDirectives, modularAdminDirectives,
        routerDirectives],
    exports: [Routes]
)
class LoginComponent {
    /// Router location.
    Router router;

    /// Starts the shake animation.
    bool shake = false;

    ControlGroup loginForm;

    DocumentService _doc;

    /// Constructor.
    LoginComponent(this._doc, this.router) {
        this._doc.title = 'Login';
        this.loginForm = FormBuilder.controlGroup({
            'username': ['', MaValidators.required()],
            'password': ['', MaValidators.required()],
        });
    }

    /// Do the shake animation.
    void login() {
        var password = this.loginForm.controls['password'].value;
        if (password == 'password123') {
            this.router.navigate(Routes.about.toUrl());
        } else {
            this.loginForm.controls['password'].setErrors({
                'The password is incorrect.': ''
            });
            this.shake = true;
            new Timer(new Duration(seconds: 1), () {
                this.shake = false;
            });
        }
    }
}
