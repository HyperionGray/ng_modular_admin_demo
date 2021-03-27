import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';
import 'package:ng_modular_admin_demo/layout.dart';

/// Side navigation component.
@Component(
    selector: 'side-nav',
    styles: const [
      '''
        ul {list-style: none;}
        .tall {height: 50em;}
    '''
    ],
    templateUrl: 'side_nav.html',
    directives: const [coreDirectives, formDirectives, modularAdminDirectives])
class SideNavComponent {
  /// A service that contains layout state.
  LayoutService layoutService;

  DocumentService _doc;

  /// Constructor.
  SideNavComponent(this._doc, this.layoutService) {
    this._doc.title = 'Side Navigation';
    this._doc.breadcrumbs = [
      new Breadcrumb(name: 'Navigation', icon: 'map-signs'),
      new Breadcrumb(name: 'Side Navigation'),
    ];
  }
}
