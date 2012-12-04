//
//  RWSAppDelegate.h
//  PanGesture
//
//  Created by Samuel Goodwin on 12/5/12.
//  Copyright (c) 2012 Roundwall Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RWSViewController;

@interface RWSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RWSViewController *viewController;

@end
