//
//  DemoViewController.m
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import "DemoViewController.h"

#define NUM_OF_STEPS 3

@interface DemoViewController ()

@end

@implementation DemoViewController

@synthesize wizardView1, wizardView2, wizardView3, leftNavButton, rightNavButton, pageControl, easyWizard;

- (void)viewDidLoad {
    [super viewDidLoad];
    easyWizard.easyWizardDelegate = self;
    [easyWizard loadWizard];
    self.pageControl.numberOfPages = NUM_OF_STEPS;
    self.pageControl.currentPage = 0;
    // Do any additional setup after loading the view.
}

- (IBAction)nextStep {
    [easyWizard scrollRight];
}

- (IBAction)previousStep {
    [easyWizard scrollLeft];
}

#pragma EasyWizardDelegate methods

- (int)numberOfSteps {
    return NUM_OF_STEPS;
}

- (UIView *)viewForStepAtIndex:(int)index {
    switch (index) {
        case 0:
            return wizardView1;
        case 1:
            return wizardView2;
        case 2:
            return wizardView3;
        default:
            return wizardView1;
    }
}

- (UIPageControl *)updatePageStepAtIndex:(int)index {
    pageControl.currentPage = index;
    return pageControl;
}

- (UIButton *)leftNavButtonAtIndex:(int)index {
    if (index == 0) {
        leftNavButton.hidden = YES;
    } else{
        leftNavButton.hidden = NO;
    }

    return leftNavButton;
}

- (UIButton *)rightNavButtonAtIndex:(int)index {
    if (index < NUM_OF_STEPS - 1) {
        [rightNavButton setTitle:@"Next" forState:UIControlStateNormal];
    } else {
        [rightNavButton setTitle:@"Done" forState:UIControlStateNormal];
    }
    return rightNavButton;
}


@end
