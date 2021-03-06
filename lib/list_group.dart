import 'package:angular/angular.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

/// Layout component.
@Component(
    selector: 'list-group',
    templateUrl: 'list_group.html',
    directives: const [modularAdminDirectives]
)
class ListGroupComponent {
    DocumentService _doc;

    ListGroupComponent(this._doc) {
        this._doc.title = 'List Group';
        this._doc.breadcrumbs = [
            new Breadcrumb(name: 'Components', icon: 'toolbox'),
            new Breadcrumb(name: 'List Group'),
        ];
    }
}
