//
//  MyScrollView.m
//  myScrollView
//
//  Created by Susan Justice on 2016-05-16.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "MyScrollView.h"
#import "ViewController.h"

@implementation MyScrollView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panGR = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panTriggered:)];
        [self addGestureRecognizer: _panGR];
    }
    return self;
}

-(void)panTriggered:(UIPanGestureRecognizer*) sender {
    
    
    CGPoint newPoint;
    newPoint = [sender translationInView:self];
    CGFloat newX;
    CGFloat newY;
    
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            self.originalBounds = self.bounds;
            break;
            
        case UIGestureRecognizerStateChanged:
           newX = self.originalBounds.origin.x - newPoint.x;
           newY = self.originalBounds.origin.y - newPoint.y;
            self.bounds = (CGRect){newX,newY,self.bounds.size.width,self.bounds.size.width};
            
            break;
            
        default:
            break;
    }
    


}

@end
