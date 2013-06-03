//
//  NavigationViewController.m
//  Day1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = [NSString stringWithFormat:@"%d", [self.navigationController.viewControllers count]];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:UIBarButtonItemStylePlain target:self action:@selector(pressPopButton)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressPushButton:(id)sender {
    [self.navigationController pushViewController:[[NavigationViewController alloc] init] animated:YES];

}

- (void)pressPopButton
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
