//
//  EasyWizard.m
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import "EasyWizard.h"
#import "EasyWizardDelegate.h"

@interface EasyWizard ()

@end

@implementation EasyWizard

@synthesize easyWizardDelegate;

- (void)configEasyWizard {
    self.contentSize = CGSizeMake(CGRectGetWidth(self.frame) * [easyWizardDelegate numberOfSteps], CGRectGetHeight(self.frame));
    self.delegate = self;
}


- (void)reloadWizard {
    [self configEasyWizard];
    [self loadWizardStepAtIndex:0];
    [self loadWizardStepAtIndex:1];
    [self loadWizardStepAtIndex:2];
}

- (void)loadWizardStepAtIndex:(int)index {
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetWidth(frame) * index;
    frame.origin.y = 0;
    UIView *view = [easyWizardDelegate viewForStepAtIndex:index];
    view.frame = frame;

    [self addSubview:view];
}


@end
