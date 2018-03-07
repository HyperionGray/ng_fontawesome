# Font Awesome for Angular Dart

[View Demo](https://hyperiongray.github.io/ng_fontawesome_demo/)

## Basic Usage

This package provides Font Awesome as an Angular2Dart component, making it easy
to add icons to your Angular2Dart project. Add `directives: const
[FontAwesomeIconComponent]` to your parent component, and then you can use the
element in your markup:

    <fa name="flag"></fa>

This Dart package implements all of the Font Awesome effects [seen
here](http://fontawesome.io/examples/).

## Versioning

The version number of this package follows the version number of Font Awesome
itself. This makes it easy to see which version of Font Awesome is provided by
this package and pin your own packages to specific versions of Font Awesome
(i.e. a version that adds a specific glyph that your package needs).

## Icons

Font Awesome icons are implemented in `FontAwesomeIconComponent`. It requires
one `name` attribute, which is the name of the icon to render:

    <fa name="flag"></fa>

The component also supports all of the other Font Awesome effects through the
following attributes:

* `border (bool)`: Display a border.
* `flip (String)`: Flip the icon over its "horizontal" or "vertical" axis.
* `fw (bool)`: Render as fixed width element.
* `inverse (bool)`: Invert the color scheme.
* `pull (String)`: Float to the "left" or "right".
* `pulse (bool)`: Animate a rotating icon in 8 discrete steps.
* `rotate (int)`: Rotate 90, 180, or 270 degrees.
* `size (String)`: Icon size. "lg" is 33% larger than normal, or use "2x", "3x",
  "4x", or "5x".
* `spin (bool)`: Animate the icon spinning continuously.
* `stack (bool)`: Indicates that the icon is part of a stack a stack, i.e.
  `<fa-stack>`, and sets the size to either "1x" or "2x".

## Bulleted List

Font Awesome icons can be used as bullets. Add `FontAwesomeListComponent` and
`FontAwesomeListItemComponent` to your directives, then write markup like this:

    <fa-ul>
      <fa-li bullet="flag">Item one</fa-li>
      <fa-li bullet="spinner">Item two</fa-li>
      <fa-li bullet="check-square">Item three</fa-li>
    </fa-ul>

The only new attribute is `bullet`, which should contain the name of the icon
to use as the list item's bullet. You may also supply a default bullet that
is used for list items which do not specify a bullet:

    <fa-ul bullet='check-square'>
      <fa-li>Item one</fa-li>
      <fa-li>Item two</fa-li>
      <fa-li>Item three</fa-li>
    </fa-ul>

## Icon Stack

Font Awesome also lets you stack icons on top of each other. Add
`FontAwesomeStackComponent` to your directives, then write markup like this:

    <fa-stack>
      <fa name="circle" stack="2x"></fa>
      <fa name="flag" stack="1x" [inverse]="true"></fa>
    </fa-stack>

An icon stack consists of two icons inside an `<fa-stack>`. The `stack`
attribute is required in this context and sets the icon's size, either "1x" or
"2x" .

## Maintenance

_This section is for the developer[s] of this package only._

To upgrade Font Awesome, download and unzip the upstream release. Replace
`lib/css` and `lib/fonts` in this package with the `css` and `fonts` from
the upstream release. The modify the `font-awesome-css` and
`font-awesome.css.min` as follows:

    sed --in-place "s:url[(]'\.\.:url('packages:g" lib/css/*

Commit the changed files, update the version in pubspec.yaml to match the
upstream Font Awesome version, and publish with `pub publish`.

---

[![define hyperion gray](https://hyperiongray.s3.amazonaws.com/define-hg.svg)](https://hyperiongray.com/?pk_campaign=github&pk_kwd=ng_fontawesome "Hyperion Gray")

