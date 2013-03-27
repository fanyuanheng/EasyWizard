#import <Foundation/Foundation.h>

@protocol EasyWizardDelegate
@required
- (int)numberOfSteps;
- (UIView *)viewForStepAtIndex:(int)index;

@optional
- (UIPageControl *)updatePageStepAtIndex:(int)index;
- (UIButton *)leftNavButtonAtIndex:(int)index;
- (UIButton *)rightNavButtonAtIndex:(int)index;
@end