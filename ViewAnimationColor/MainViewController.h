//
//  MainViewController.h
//  ViewAnimationColor
//
//  Created by Georges Labreche on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LittleView.h"

@interface MainViewController : UIViewController{
    LittleView *littleView;
    LittleView* fromView;
    LittleView* toView;
    BOOL colourGreen;
}

@end
