import 'package:angular/core.dart';

import 'icon.dart';

/// A component that composites Font Awesome icons on top of each other.
@Component(
    selector: 'fa-stack',
    styleUrls: const ['css/font-awesome.min.css'],
    template: '<span class="fa-stack"><ng-content></ng-content></span>',
    directives: const [FaIcon]
)
class FaStack {}
