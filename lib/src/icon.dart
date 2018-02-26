import 'package:angular/core.dart';

/// A component that renders an icon from Font Awesome.
@Component(
    selector: 'fa',
    styleUrls: const ['css/font-awesome.min.css'],
    template: '''<i class='fa fa-{{name}}'
        [class.fa-border]='border'
        [class.fa-fw]='fw'
        [class.fa-flip-horizontal]='flip == "horizontal"'
        [class.fa-flip-vertical]='flip == "vertical"'
        [class.fa-inverse]='inverse'
        [class.fa-li]
        [class.fa-pull-left]='pull == "left"'
        [class.fa-pull-right]='pull == "right"'
        [class.fa-pulse]='pulse'
        [class.fa-rotate-90]='rotate == 90'
        [class.fa-rotate-180]='rotate == 180'
        [class.fa-rotate-270]='rotate == 270'
        [class.fa-lg]='size == "lg"'
        [class.fa-2x]='size == "2x"'
        [class.fa-3x]='size == "3x"'
        [class.fa-4x]='size == "4x"'
        [class.fa-5x]='size == "5x"'
        [class.fa-spin]='spin'
        [class.fa-stack-1x]='stack == "1x"'
        [class.fa-stack-2x]='stack == "2x"'
      ></i>'''
)
class FaIcon {
    /// Render with border around the icon.
    @Input()
    bool border = false;

    /// Flip along "horizontal" or "vertical" axis.
    @Input()
    String flip;

    /// Render with fixed width.
    @Input()
    bool fw = false;

    /// Invert color scheme.
    @Input()
    bool inverse = false;

    /// Name of icon to dislpay, e.g. "flag" or "camera-retro". (Required)
    @Input()
    String name;

    /// Float "left" or "right".
    @Input()
    String pull;

    /// Animate a rotating icon in 8 discrete steps.
    @Input()
    bool pulse = false;

    /// Orient the icon in a different direction: 90, 180, OR 270 degrees
    /// clockwise.
    @Input()
    int rotate;

    /// Size of the icon. "lg" is 33% larger than normal. Other options are
    /// "2x", "3x", "4x", and "5x".
    @Input()
    String size;

    /// Animate a rotating icon smoothly.
    @Input()
    bool spin = false;

    /// The stacking size, either "1x" or "2x".
    ///
    /// Only useful when the component appears inside an <fa-stack>.
    @Input()
    String stack;
}
