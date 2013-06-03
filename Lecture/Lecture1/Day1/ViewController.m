//
//  ViewController.m
//  Day1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"
#import "View2ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view_purple;
@property (weak, nonatomic) IBOutlet UIView *view_green;
@property (weak, nonatomic) IBOutlet UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _view_purple.backgroundColor = [UIColor redColor];
    
    //init an instance
    MixiSampleClass *obj = [[MixiSampleClass alloc] initWithName: @"firstObj" sampleType:SampleTypeHoge];
    //call the method of the instance
    NSLog([MixiSampleClass getStaticString]);
    //getter and setter of the instance
    NSLog(obj.name);
    obj.price = 100;
    NSLog(@"%d",obj.price);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressClickMe:(id)sender {
    _view_green.backgroundColor = [UIColor yellowColor];
}

- (IBAction)showNewView:(id)sender {
    
    View2ViewController *postViewController = [[View2ViewController alloc] init];
    
    //delegate 先として自身を代入
    postViewController.delegate = self;
    
    //これから表示するのはpostViewControllerです
    [self presentViewController: postViewController animated:YES completion:nil];
}

-(void)didPressCloseButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
