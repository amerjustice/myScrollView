//
//  ViewController.m
//  myScrollView
//
//  Created by Susan Justice on 2016-05-16.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property MyScrollView *rootView;
@property UIView *redView;
@property UIView *greenView;
@property UIView *blueView;
@property UIView *yellowView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.rootView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.rootView];
    
    self.redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    self.greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.rootView addSubview:self.redView];
    [self.rootView addSubview:self.greenView];
    [self.rootView addSubview:self.blueView];
    [self.rootView addSubview:self.yellowView];
    
    
    
    
   
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    self.rootView.bounds = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
