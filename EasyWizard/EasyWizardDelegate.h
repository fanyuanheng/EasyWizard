#import <Foundation/Foundation.h>

@protocol EasyWizardDelegate
@required
- (int)numberOfSteps;
- (UIView *)viewForStepAtIndex:(int)index;

@optional
- (UIPageControl *)updatePageStepAtIndex:(int)index;
@end