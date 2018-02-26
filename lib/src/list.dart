import 'package:angular/core.dart';

import 'icon.dart';

/// A component that renders an unordered list with Font Awesome icons as
/// bullets.
@Component(
    selector: 'fa-ul',
    styleUrls: const ['css/font-awesome.min.css'],
    template: '<ul class="fa-ul"><ng-content></ng-content></ul>'
)
class FaList implements AfterContentInit {
    /// Default bullet to use for list items.
    @Input()
    String bullet;

    @ContentChildren(FaListItem)
    QueryList<FaListItem> childIcons;

    /// Implementation of AfterContentInit.
    void ngAfterContentInit() {
        if (bullet != null) {
            _copyBulletToChildren();
        }
    }

    /// Copy the bullet icon into any children that don't have one.
    void _copyBulletToChildren() {
        for (var childIcon in childIcons) {
            if (childIcon.bullet == null) {
                childIcon.bullet = bullet;
            }
        }
    }
}

/// A component that renders a list item with a Font Awesome icons as the
/// bullet.
@Component(
    selector: 'fa-li',
    styleUrls: const ['css/font-awesome.min.css'],
    template: '<li><fa [name]="bullet"></fa><ng-content></ng-content></li>',
    directives: const [FaIcon]
)
class FaListItem {
    /// Name of icon to use for this list item's bullet.
    @Input()
    String bullet;
}
