//
//  DemoViewController.h
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import "EasyWizard.h"
#import "EasyWizardDelegate.h"

@interface DemoViewController : UIViewController <EasyWizardDelegate> {

}

@property (nonatomic, strong) IBOutlet UIView *wizardView1;
@property (nonatomic, strong) IBOutlet UIView *wizardView2;
@property (nonatomic, strong) IBOutlet UIView *wizardView3;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;
@property (nonatomic, strong) IBOutlet UIButton *leftNavButton;
@property (nonatomic, strong) IBOutlet UIButton *rightNavButton;
@property (nonatomic, strong) IBOutlet EasyWizard *easyWizard;

- (IBAction)nextStep;
- (IBAction)previousStep;

@end
