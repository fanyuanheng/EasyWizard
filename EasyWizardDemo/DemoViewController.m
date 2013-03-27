//
//  DemoViewController.m
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

@synthesize wizardView1, wizardView2, wizardView3, easyWizard;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    easyWizard.easyWizardDelegate = self;
    [easyWizard reloadWizard];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma EasyWizardDelegate methods

- (int)numberOfSteps {
    return 3;
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


@end
