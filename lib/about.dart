import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';
import 'package:ng_modular_admin_demo/routes.dart';

/// About component.
@Component(
    selector: 'about',
    templateUrl: 'about.html',
    directives: const [FaIcon, modularAdminDirectives, routerDirectives],
    exports: [Routes])
class AboutComponent {
  DocumentService _doc;

  AboutComponent(this._doc) {
    this._doc.title = 'About';
    this._doc.breadcrumbs = [
      new Breadcrumb(name: 'About', icon: 'info-circle'),
    ];
  }
}
