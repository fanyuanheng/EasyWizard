//
//  EasyWizard.h
//  EasyWizard
//
//  Created by Yuan Heng Fan on 26/03/13.
//
//

#import <UIKit/UIKit.h>

@protocol EasyWizardDelegate;

@interface EasyWizard : UIScrollView <UIScrollViewDelegate> {
    int currentIndex;
}

@property(weak) id <EasyWizardDelegate> easyWizardDelegate;

- (void)loadWizard;

- (void)loadWizardStepAtIndex:(int)index;

- (int)scrollRight;

- (int)scrollLeft;
@end
