import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';
import 'package:ng_modular_admin_demo/layout.dart';
import 'package:ng_modular_admin_demo/routes.dart';
import 'package:ng_modular_admin_demo/tags.dart';

/// Top-level component for Modular Admin demo.
@Component(
    selector: 'body',
    styles: const [
      '''
        ma-top-nav form {
            position: relative;
            top: 3px;
        }
    '''
    ],
    templateUrl: 'body.html',
    directives: const [
      coreDirectives,
      FaIcon,
      formDirectives,
      modularAdminDirectives,
      routerDirectives
    ],
    providers: const [
      modularAdminProviders,
      DocumentService,
      LayoutService,
      TagsService
    ],
    exports: [Routes])
class BodyComponent {
  /// Application layout service.
  LayoutService layoutService;

  /// Tags (a.k.a. badges) service.
  TagsService tagsService;

  /// Toast (a.k.a. pop-up notifications) service.
  ToastService toastService;

  /// Search term.
  String searchTerm;

  /// Constructor.
  BodyComponent(this.layoutService, this.tagsService, this.toastService);

  /// Search form submit handler.
  void handleSubmit() {
    window.alert('You searched for: "$searchTerm"');
  }
}
