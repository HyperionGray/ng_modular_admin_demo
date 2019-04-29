import 'package:angular/angular.dart';
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

/// Tags (a.k.a. badges) component.
@Component(
    selector: 'tags',
    styles: const ['''
        .button-label {
            font-weight: 700;
            width: 7rem;
        }
    '''],
    templateUrl: 'tags.html',
    directives: const [modularAdminDirectives, FaIcon]
)
class TagsComponent {
    TagsService tagsService;

    DocumentService _doc;

    /// Constructor.
    TagsComponent(this._doc, this.tagsService) {
        this._doc.title = 'Tags';
        this._doc.breadcrumbs = [
            new Breadcrumb(name: 'Components', icon: 'toolbox'),
            new Breadcrumb(name: 'Tags'),
        ];
    }
}

/// Service for keeping track of tags (a.k.a. badges).
@Injectable()
class TagsService {
    String get aboutBadge => _aboutBadge == 0 ? '' : _aboutBadge.toString();
    int _aboutBadge = 0;

    String get layoutBadge => _layoutBadge == 0 ? '' : _layoutBadge.toString();
    int _layoutBadge = 0;

    String get themesBadge => _themesBadge == 0 ? '' : _themesBadge.toString();
    int _themesBadge = 0;

    void decrementAboutBadge() {
        if (this._aboutBadge > 0) {
            this._aboutBadge--;
        }
    }

    void decrementLayoutBadge() {
        if (this._layoutBadge > 0) {
            this._layoutBadge--;
        }
    }

    void decrementThemesBadge() {
        if (this._themesBadge > 0) {
            this._themesBadge--;
        }
    }

    void incrementAboutBadge() {
        this._aboutBadge++;
    }

    void incrementLayoutBadge() {
        this._layoutBadge++;
    }

    void incrementThemesBadge() {
        this._themesBadge++;
    }
}
