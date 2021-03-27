import 'package:angular_router/angular_router.dart';
import 'package:ng_modular_admin_demo/about.template.dart' as about_template;
import 'package:ng_modular_admin_demo/buttons.template.dart'
    as buttons_template;
import 'package:ng_modular_admin_demo/cards.template.dart' as cards_template;
import 'package:ng_modular_admin_demo/footer.template.dart' as footer_template;
import 'package:ng_modular_admin_demo/forms.template.dart' as forms_template;
import 'package:ng_modular_admin_demo/layout.template.dart' as layout_template;
import 'package:ng_modular_admin_demo/list_group.template.dart'
    as list_group_template;
import 'package:ng_modular_admin_demo/login.template.dart' as login_template;
import 'package:ng_modular_admin_demo/overlay.template.dart'
    as overlay_template;
import 'package:ng_modular_admin_demo/pagers.template.dart' as pagers_template;
import 'package:ng_modular_admin_demo/side_nav.template.dart'
    as side_nav_template;
import 'package:ng_modular_admin_demo/sign_up.template.dart'
    as sign_up_template;
import 'package:ng_modular_admin_demo/tables.template.dart' as tables_template;
import 'package:ng_modular_admin_demo/tags.template.dart' as tags_template;
import 'package:ng_modular_admin_demo/themes.template.dart' as themes_template;
import 'package:ng_modular_admin_demo/toast.template.dart' as toast_template;
import 'package:ng_modular_admin_demo/top_nav.template.dart'
    as top_nav_template;
import 'package:ng_modular_admin_demo/typography.template.dart'
    as typography_template;

class Routes {
  static final about = RouteDefinition(
      routePath: RoutePath(path: 'about'),
      component: about_template.AboutComponentNgFactory);
  static final buttons = RouteDefinition(
      routePath: RoutePath(path: 'buttons'),
      component: buttons_template.ButtonsComponentNgFactory);
  static final cards = RouteDefinition(
      routePath: RoutePath(path: 'cards'),
      component: cards_template.CardsComponentNgFactory);
  static final footer = RouteDefinition(
      routePath: RoutePath(path: 'footer'),
      component: footer_template.FooterComponentNgFactory);
  static final forms = RouteDefinition(
      routePath: RoutePath(path: 'forms'),
      component: forms_template.FormsComponentNgFactory);
  static final layout = RouteDefinition(
      routePath: RoutePath(path: 'layout'),
      component: layout_template.LayoutComponentNgFactory);
  static final listGroup = RouteDefinition(
      routePath: RoutePath(path: 'list-group'),
      component: list_group_template.ListGroupComponentNgFactory);
  static final login = RouteDefinition(
      routePath: RoutePath(path: 'login'),
      component: login_template.LoginComponentNgFactory);
  static final overlay = RouteDefinition(
      routePath: RoutePath(path: 'overlay'),
      component: overlay_template.OverlayComponentNgFactory);
  static final pagers = RouteDefinition(
      routePath: RoutePath(path: 'pagers'),
      component: pagers_template.PagersComponentNgFactory);
  static final sideNav = RouteDefinition(
      routePath: RoutePath(path: 'side-nav'),
      component: side_nav_template.SideNavComponentNgFactory);
  static final signUp = RouteDefinition(
      routePath: RoutePath(path: 'sign-up'),
      component: sign_up_template.SignUpComponentNgFactory);
  static final tables = RouteDefinition(
      routePath: RoutePath(path: 'tables'),
      component: tables_template.TablesComponentNgFactory);
  static final tags = RouteDefinition(
      routePath: RoutePath(path: 'tags'),
      component: tags_template.TagsComponentNgFactory);
  static final themes = RouteDefinition(
      routePath: RoutePath(path: 'themes'),
      component: themes_template.ThemesComponentNgFactory);
  static final toast = RouteDefinition(
      routePath: RoutePath(path: 'toast'),
      component: toast_template.ToastComponentNgFactory);
  static final topNav = RouteDefinition(
      routePath: RoutePath(path: 'top-nav'),
      component: top_nav_template.TopNavComponentNgFactory);
  static final typography = RouteDefinition(
      routePath: RoutePath(path: 'typography'),
      component: typography_template.TypographyComponentNgFactory);

  static final root = RouteDefinition.redirect(path: '', redirectTo: 'about');

  static final all = <RouteDefinition>[
    about,
    buttons,
    cards,
    footer,
    forms,
    layout,
    listGroup,
    login,
    overlay,
    pagers,
    root,
    sideNav,
    signUp,
    tables,
    tags,
    toast,
    themes,
    topNav,
    typography,
  ];
}
