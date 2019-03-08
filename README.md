This directory contains a demo application for
[ng_modular_admin](https://github.com/HyperionGray/ng_modular_admin).

View [the demo](https://hyperiongray.github.io/ng_modular_admin_demo/) on GitHub
Pages.

If you want to run this demo locally, clone the repo and run `webdev serve` from
this directory.

To update the build, run the following command in this directory:

    $ webdev build
    Creating build script, took 14319ms
    [INFO] Reading cached asset graph completed, took 593ms
    [INFO] Checking for updates since last build completed, took 1.0s
    [INFO] build_web_compilers|entrypoint on web/main.dart:Running dart2js with --minify --packages=.package-f04a0710e4f3472ab57c44e9827b5e57 -oweb/main.dart.js web/main.dart
    [INFO] build_web_compilers|entrypoint on web/main.dart:Dart2Js finished with:

    Compiled 8,638,740 characters Dart to 299,938 characters JavaScript in 5.47 seconds
    Dart file (web/main.dart) compiled to JavaScript: web/main.dart.js

    [INFO] Running build completed, took 8.4s
    [INFO] Caching finalized dependency graph completed, took 341ms
    [INFO] Creating merged output dir `build` completed, took 733ms
    [INFO] Writing asset manifest completed, took 2ms
    [INFO] Succeeded after 9.5s with 94 outputs (2276 actions)

You can test the build by running a web server in the build directory:

    $ cd build/
    $ python3 -m http.server
    $ cd ..

Commit the changes by replacing the current docs with the build docs:

    $ git rm -fr docs
    $ mv build/ docs/
    $ git add docs
