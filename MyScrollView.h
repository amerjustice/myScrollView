//
//  MyScrollView.h
//  myScrollView
//
//  Created by Susan Justice on 2016-05-16.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer* panGR;
@property CGRect originalBounds;

@end
