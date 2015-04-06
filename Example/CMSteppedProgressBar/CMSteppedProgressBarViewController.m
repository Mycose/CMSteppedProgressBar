//
//  CMSteppedProgressBarViewController.m
//  CMSteppedProgressBar
//
//  Created by Mycose on 04/05/2015.
//  Copyright (c) 2014 Mycose. All rights reserved.
//
#import <CMSteppedProgressBar.h>
#import "CMSteppedProgressBarViewController.h"

@interface CMSteppedProgressBarViewController ()
@property (nonatomic, strong) CMSteppedProgressBar* steppedBar1;
@property (nonatomic, strong) CMSteppedProgressBar* steppedBar2;
@property (nonatomic, strong) CMSteppedProgressBar* steppedBar3;
@property (nonatomic, strong) UIButton* btnTest;
@end

@implementation CMSteppedProgressBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.steppedBar1 = [[CMSteppedProgressBar alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 60)];
    self.steppedBar1.animDuration = 0.1;
    self.steppedBar1.barColor = [UIColor clearColor];
    self.steppedBar1.tintColor = [UIColor blueColor];
    self.steppedBar1.linesHeight = 10.f;
    self.steppedBar1.dotsWidth = 30.f;
    self.steppedBar1.nbSteps = 8;
    [self.view addSubview:self.steppedBar1];
    
    self.steppedBar2 = [[CMSteppedProgressBar alloc] initWithFrame:CGRectMake(50, self.steppedBar1.frame.origin.y + 100, self.view.frame.size.width-100, 40)];
    self.steppedBar2.animDuration = 1.f;
    self.steppedBar2.barColor = [UIColor lightGrayColor];
    self.steppedBar2.tintColor = [UIColor redColor];
    self.steppedBar2.nbSteps = 6;
    self.steppedBar2.animOption = UIViewAnimationOptionCurveEaseIn;
    [self.view addSubview:self.steppedBar2];
    
    self.steppedBar3 = [[CMSteppedProgressBar alloc] initWithFrame:CGRectMake(0, self.steppedBar2.frame.origin.y + 100, self.view.frame.size.width, 30)];
    self.steppedBar3.barColor = [UIColor yellowColor];
    self.steppedBar3.tintColor = [UIColor blueColor];
    self.steppedBar3.linesHeight = 2.f;
    self.steppedBar3.dotsWidth = 10.f;
    self.steppedBar3.nbSteps = 5;
    [self.view addSubview:self.steppedBar3];
    
    self.btnTest = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2- 50, self.steppedBar3.frame.origin.y + self.steppedBar3.frame.size.height+20, 100, 40)];
    [self.btnTest setTitle:@"Next Step" forState:UIControlStateNormal];
    self.btnTest.backgroundColor = [UIColor blackColor];
    self.btnTest.layer.borderColor = [UIColor whiteColor].CGColor;
    self.btnTest.layer.borderWidth = 1.f;
    [self.btnTest setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.btnTest addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btnTest];
}

- (void)btnclicked:(id)sender {
    [self.steppedBar1 nextStep];
    [self.steppedBar2 nextStep];
    [self.steppedBar3 nextStep];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
