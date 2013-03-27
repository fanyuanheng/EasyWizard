//
//  EasyWizard.h
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import <UIKit/UIKit.h>

@protocol EasyWizardDelegate;

@interface EasyWizard : UIScrollView <UIScrollViewDelegate>

@property(weak) id <EasyWizardDelegate> easyWizardDelegate;

- (void)reloadWizard;

- (void)loadWizardStepAtIndex:(int)index;

@end
