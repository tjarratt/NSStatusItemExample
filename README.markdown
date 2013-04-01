# NSStatusItemExample

This is an example of a background-only OS X application that exists solely as a NSStatusItem (ie: there is no Dock icon, no main application window and it does not show up in the application switcher).

I frequently found myself wanting to write little utilities that require no UI other than a menu, but found the documentation for NSStatusItem (which has been around since OS X 10.0) to be difficult to understand, and despite there being several applications that exist solely as a status bar item (Dropbox.app, to name only one), no one had written much on the topic. Hopefully this will save you some trouble if you're trying to figure out how NSStatusItem, NSMenu, NSMenuItem and LSBackgroundOnly work together.

Documentation available on the Apple Developer site:
* [NSStatusItem](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/NSStatusItem_Class/Reference/Reference.html)
* [NSMenu](https://developer.apple.com/library/mac/#DOCUMENTATION/Cocoa/Reference/ApplicationKit/Classes/NSMenu_Class/Reference/Reference.html)
* [NSMenuItem](https://developer.apple.com/library/mac/#DOCUMENTATION/Cocoa/Reference/ApplicationKit/Classes/NSMenuItem_Class/Reference/Reference.html#//apple_ref/doc/c_ref/NSMenuItem)
* [LSBackgroundOnly](http://developer.apple.com/library/ios/#documentation/general/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html)
