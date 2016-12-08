# Font Awesome for Angular2Dart

## Usage
This package provides Font Awesome as an Angular2Dart component.

    <fa [name]="flag"></fa>

The version number of this package follows the versioning of Font Awesome
itself, i.e. `ng2_fontawesome 4.7.0` contains the 4.7.0 release of Font Awesome.

The supported attributes closely mirror the corresponding CSS classes from
Font Awesome:

    <fa [border]=(true|false)
        [flip]=("horizontal"|"vertical")
        [fw]=(true|false)
        [inverse]=(true|false)
        [name]=String
        [pull]=("right"|"left")
        [pulse]=(true|false)
        [rotate]=(0|90|180|270)
        [size]=("lg"|"2x"|"3x"|"4x"|"5x")
        [spin]=(true|false)>

## Maintenance

To upgrade Font Awesome, download and unzip the upstream release. Replace
`lib/css` and `lib/fonts` in this package with the `css` and `fonts` from
the upstream release. The modify the `font-awesome-css` and
`font-awesome.css.min` as follows:

    sed --in-place "s:url[(]'\.\.:url('packages:g" lib/css/*

Commit the changed files, update the version in pubspec.yaml to match the
upstream Font Awesome version, and publish with `pub publish`.
