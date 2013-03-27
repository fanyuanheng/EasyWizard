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
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    self.scrollEnabled = NO;
    self.contentSize = CGSizeMake(CGRectGetWidth(self.frame) * [easyWizardDelegate numberOfSteps], CGRectGetHeight(self.frame));
    self.delegate = self;
}


- (void)loadWizard {
    [self configEasyWizard];
    currentIndex = 0;
    for (int i = 0; i < [easyWizardDelegate numberOfSteps]; i++) {
        [self loadWizardStepAtIndex:i];
    }
}

- (void)loadWizardStepAtIndex:(int)index {
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetWidth(frame) * index;
    frame.origin.y = 0;
    UIView *view = [easyWizardDelegate viewForStepAtIndex:index];
    view.frame = frame;

    [self addSubview:view];
}

- (void)scrollRight {
    if (currentIndex < [easyWizardDelegate numberOfSteps] - 1) {
        currentIndex++;
        [self updatePageIfNecessary];
        [self setContentOffset:CGPointMake(CGRectGetWidth(self.frame) * currentIndex, 0) animated:YES];
    }
}

- (void)scrollLeft {
    if (currentIndex > 0) {
        currentIndex--;
        [self updatePageIfNecessary];
        [self setContentOffset:CGPointMake(CGRectGetWidth(self.frame) * currentIndex, 0) animated:YES];
    }
}

- (void)updatePageIfNecessary {
    if ([(id) easyWizardDelegate respondsToSelector:@selector(updatePageStepAtIndex:)]) {
            [easyWizardDelegate updatePageStepAtIndex:currentIndex];
        }
}

@end
