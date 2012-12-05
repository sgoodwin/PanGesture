//
//  RWSViewController.h
//  PanGesture
//
//  Created by Samuel Goodwin on 12/5/12.
//

#import <UIKit/UIKit.h>

@interface RWSViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *label;
@property (nonatomic, weak) IBOutlet UIView *movingView;
@property (nonatomic, assign) CGPoint originalPoint;
@end
