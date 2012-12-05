//
//  RWSViewController.m
//  PanGesture
//
//  Created by Samuel Goodwin on 12/5/12.
//

#import "RWSViewController.h"

@implementation RWSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] init];
    [panGesture addTarget:self action:@selector(gestureDidTranslate:)];
    [self.label addGestureRecognizer:panGesture];
}

- (void)gestureDidTranslate:(UIPanGestureRecognizer *)panGesture
{
    if([panGesture state] == UIGestureRecognizerStateBegan){
        self.originalPoint = self.label.center;
    }

    CGPoint translation = [panGesture translationInView:self.view];
    self.label.center = CGPointMake(self.originalPoint.x+translation.x, self.originalPoint.y+translation.y);
    self.label.text = NSStringFromCGPoint([panGesture velocityInView:self.view]);
}

@end
