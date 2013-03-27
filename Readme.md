EasyWizard
=============
A wizard view that breaks big form population into steps for better user experiences. 

![ScreenShot](https://raw.github.com/fanyuanheng/EasyWizard/master/Demo1.png)
![ScreenShot](https://raw.github.com/fanyuanheng/EasyWizard/master/Demo2.png)
![ScreenShot](https://raw.github.com/fanyuanheng/EasyWizard/master/Demo3.png)

## Installation
### Manual
Simply include **EasyWizard.h EasyWizard.m EasyWizardDelegate.h** into your project.
### Cocoapod 
TBD

## Quickstart
Check out the demo project and it should be straight forward to use.
### Required Delegate Methods
```objc
- (int)numberOfSteps;
- (UIView *)viewForStepAtIndex:(int)index;
```

### Optional Delegate Methods
```objc
- (UIPageControl *)updatePageStepAtIndex:(int)index;
- (UIButton *)leftNavButtonAtIndex:(int)index;
- (UIButton *)rightNavButtonAtIndex:(int)index;
```

## LICENSE
This project is distributed under the standard MIT License. Please feel free to twist it in whatever fashion you wish.