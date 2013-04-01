//
//  AppDelegate.m
//  NSStatusItemExample
//
//  Created by Tim Jarratt on 3/31/13.
//  Copyright (c) 2013 Tim Jarratt. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

#pragma mark - lifecycle
- (void) awakeFromNib {
    // obtain a new statusItem from the global NSStatusBar
    float width = 110.0;
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:width];
    [statusItem setHighlightMode:YES];
    
    // create a new NSMenu for the status bar item
    NSMenu *menu = [[NSMenu alloc] init];

    // create some top level menu items
    NSMenuItem *first = [[NSMenuItem alloc] initWithTitle:@"Something" action:@selector(doSomethingCool) keyEquivalent:@""];
    NSMenuItem *second = [[NSMenuItem alloc] initWithTitle:@"More stuff" action:nil keyEquivalent:@""];
    NSMenuItem *quit = [[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(quit_application) keyEquivalent:@"Q"];
    
    // NSMenus can also be nested to contain other menus
    NSMenu *submenu = [[NSMenu alloc] init];
    NSMenuItem *sub_item1 = [[NSMenuItem alloc] initWithTitle:@"Something Boring" action:@selector(doSomethingBoring) keyEquivalent:@""];
    NSMenuItem *sub_item2 = [[NSMenuItem alloc] initWithTitle:@"Something Else" action:@selector(doSomethingElse) keyEquivalent:@""];
    
    [submenu addItem:sub_item1];
    [submenu addItem:sub_item2];
    [second setSubmenu:submenu];
    
    [menu addItem:first];
    [menu addItem:second];
    [menu addItem:quit];
    
    [statusItem setTitle:@"Example Menu"];
    [statusItem setMenu:menu];

    // If your application is background (LSBackgroundOnly) then you need this call
    // otherwise the window manager will draw other windows on top of your menu
    [NSApp activateIgnoringOtherApps:YES];
}

- (void) dealloc {
    [[NSStatusBar systemStatusBar] removeStatusItem:statusItem];
}

#pragma mark - Menu Actions
- (void) doSomethingCool {
    NSLog(@"Doing something really awesome!");
}

- (void) doSomethingBoring {
    NSLog(@"This action is not as exciting as some others");
}

- (void) doSomethingElse {
    NSLog(@"Another menu item action. Ho hum.");
}

- (void) quit_application {
    NSLog(@"Process is exiting");
    exit(0);
}

@end
