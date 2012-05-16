//
//  MainViewController.m
//  ViewAnimationColor
//
//  Created by Georges Labreche on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(id)init{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        colourGreen = false;
    }
    
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	if (touches.count > 0) {
        
        
        
		[UIView animateWithDuration: 1.0
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations: ^{
                             //This block describes what the animation should do.
                             littleView.center = [[touches anyObject] locationInView: self.view];
                             
                             if(!colourGreen){
                                 littleView.backgroundColor = [UIColor greenColor];
                                 colourGreen = true;
                             }else{
                                 littleView.backgroundColor = [UIColor yellowColor];
                                 colourGreen = false;
                             }
                         }
                         completion: NULL
         ];
	}
}

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    CGRect littleViewRect = CGRectMake(10, 10, 75, 75);
    littleView = [[UIView alloc]initWithFrame:littleViewRect];
    littleView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview: littleView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
