import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ng_modular_admin_demo/body.template.dart' as ng;
import 'main.template.dart' as self;

@GenerateInjector(routerProvidersHash)
final InjectorFactory injector = self.injector$Injector;

void main() {
    runApp(ng.BodyComponentNgFactory, createInjector: injector);
}
