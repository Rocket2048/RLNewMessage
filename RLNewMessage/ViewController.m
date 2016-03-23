//
//  ViewController.m
//  RLNewMessage
//
//  Created by Ricky Lin on 16/3/23.
//  Copyright © 2016年 Ricky2048. All rights reserved.
//

#import "ViewController.h"

#import "RLNewMessageHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger count = self.navigationController.viewControllers.count;
    
    
    self.title = [NSString stringWithFormat:@"主页%ld",count];
    
    
    
}
- (IBAction)nextAction:(id)sender {
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *vc = [board instantiateViewControllerWithIdentifier:@"MainViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)addMessage:(id)sender {
    
    
    [[RLNewMessageHelper defaultInstance] showMesage:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
