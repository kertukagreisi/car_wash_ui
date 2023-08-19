enum NavRoute {
  home('/'),
  cars('/cars'),
  pageNotFound('/not-found');

  const NavRoute(this.path);

  final String path;
}
