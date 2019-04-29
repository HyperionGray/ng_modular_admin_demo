import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:ng_fontawesome/ng_fontawesome.dart';

import 'package:ng_modular_admin/ng_modular_admin.dart';

/// Buttons demo.
@Component(
    selector: 'buttons',
    templateUrl: 'buttons.html',
    styles: const ['''
        ma-button {
            margin-right: 0.5em;
        }
    '''],
    directives: const [coreDirectives, FaIcon, formDirectives,
        modularAdminDirectives]
)
class ButtonsComponent {
    bool disabledDemo = false;
    bool busyDemo = false;

    DocumentService _doc;

    ButtonsComponent(this._doc) {
        this._doc.title = 'Buttons';
        this._doc.breadcrumbs = [
            new Breadcrumb(name: 'Components', icon: 'toolbox'),
            new Breadcrumb(name: 'Buttons'),
        ];
    }

    /// A sample action for responding to a button click.
    void showClickAlert(MouseEvent event, [Button button]) {
        String description = (event.currentTarget as Element).text.trim();
        window.console.log('You clicked on $description.');
        if (button != null) {
            button.busy = true;
            new Timer(new Duration(seconds:1), () => button.busy = false);
        }
    }
}
