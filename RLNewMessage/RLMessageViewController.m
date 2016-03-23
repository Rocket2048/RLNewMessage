//
//  RLMessageViewController.m
//  RLNewMessage
//
//  Created by Ricky Lin on 16/3/23.
//  Copyright © 2016年 Ricky2048. All rights reserved.
//

#import "RLMessageViewController.h"

#import "RLNewMessageHelper.h"

@interface RLMessageViewController ()

@end

@implementation RLMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSInteger count = self.navigationController.viewControllers.count;
    
    
    self.title = [NSString stringWithFormat:@"消息%ld",count];
    
    if (count == 1) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 80, 20);
        [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:@"dismiss" forState:UIControlStateNormal];
        
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
        
        self.navigationItem.leftBarButtonItem = item;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Some Actions


- (void)dismiss
{
    [[RLNewMessageHelper defaultInstance] dismissMessage];
    
}

- (IBAction)goAction:(id)sender {
    
    RLMessageViewController *vc = [[RLMessageViewController alloc] initWithNibName:@"RLMessageViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
