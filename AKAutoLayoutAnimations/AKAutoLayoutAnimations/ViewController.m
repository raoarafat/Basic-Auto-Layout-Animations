//
//  ViewController.m
//  AKAutoLayoutAnimations
//
//  Created by Arafat on 9/23/15.
//  Copyright © 2015 Arafat Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewLeadingConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewTrailingConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewTopConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewBottomConstraint;
@property (nonatomic, weak) IBOutlet UIView *viewToAnimate;
@property (nonatomic, assign) BOOL topViewIsOpen;
@property (nonatomic, assign) BOOL bottomViewIsOpen;
@property (nonatomic, assign) BOOL leadingViewIsOpen;
@property (nonatomic, assign) BOOL trailingViewIsOpen;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.topViewIsOpen = YES;
    self.bottomViewIsOpen = YES;
    self.leadingViewIsOpen = YES;
    self.trailingViewIsOpen = YES;
}

#pragma mark - ACTIONS

- (IBAction)moveFromTop:(id)sender {
    
    if (self.topViewIsOpen) {
        self.viewTopConstraint.constant = 200;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    } else {
        self.viewTopConstraint  .constant = 0;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    }
    
    self.topViewIsOpen = !self.topViewIsOpen;
}
- (IBAction)moveFromTrailing:(id)sender {
    
    if (self.trailingViewIsOpen) {
        self.viewTrailingConstraint.constant = 50;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    } else {
        self.viewTrailingConstraint.constant = -20;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    }
    
    self.trailingViewIsOpen = !self.trailingViewIsOpen;
}
- (IBAction)moveFromLeading:(id)sender {
    
    if (self.leadingViewIsOpen) {
        self.viewLeadingConstraint.constant = 50;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    } else {
        self.viewLeadingConstraint.constant = -20;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    }
    
    self.leadingViewIsOpen = !self.leadingViewIsOpen;
}

- (IBAction)moveFromButton
{
    if (self.bottomViewIsOpen) {
        self.viewBottomConstraint.constant = 200;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    } else {
        self.viewBottomConstraint.constant = 0;
        [self.viewToAnimate setNeedsUpdateConstraints];
        [UIView animateWithDuration:0.5 animations:^{
            [self.viewToAnimate layoutIfNeeded];
        }];
    }
    
    self.bottomViewIsOpen = !self.bottomViewIsOpen;
}

@end
