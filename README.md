# Font Awesome for AngularDart

## Basic Usage

This package provides Font Awesome as an AngularDart component. To use icons
inside a component, do the following:

* Import the package: `import 'package:ng_fontawesome/cng_fontawesome.dart';`
* Add the directives to your component: `directives: const [FA_DIRECTIVES]`
* Add icons to your template, e.g. `<fa name="flag"></fa>`

See more usage information in the [demo
application](https://hyperiongray.github.io/ng_fontawesome_demo/) ([source 
code](https://github.com/hyperiongray/ng_fontawesome_demo)).

## Versioning

The version number of this package follows the version number of Font Awesome
itself. This makes it easy to see which version of Font Awesome is provided by
this package and pin your own packages to specific versions of Font Awesome
(i.e. a version that adds a specific glyph that your package needs).

## Maintenance

_This section is for the developer[s] of this package only._

To upgrade Font Awesome, download and unzip the upstream release. Change into
the unzipped directory. Then run these commands:

    $ cp css/all.* ../lib/src/css
    $ cp webfonts/* ../lib/fonts
    $ cd ..
    $ sed --in-place 's:url[(]"\.\./web:url("packages/ng_fontawesome/:g' lib/src/css/all.css
    $ sed --in-place 's:url[(]\.\./web:url(packages/ng_fontawesome/:g' lib/src/css/all.min.css

To test it out, switch to the `ng_fontawesome_demo` project and run:

    $ pub get
    $ webdev serve

Update the version in pubspec.yaml to match the upstream Font Awesome version and
commit all of the changed files. To publish:

    $ pub publish

---

[![define hyperion gray](https://hyperiongray.s3.amazonaws.com/define-hg.svg)](https://www.hyperiongray.com/?pk_campaign=github&pk_kwd=ng_fontawesome "Hyperion Gray")
