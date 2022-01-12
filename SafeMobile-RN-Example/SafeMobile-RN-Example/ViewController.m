//
//  ViewController.m
//  SafeMobile-RN-Example
//
//  Created by Đặng Văn Hùng on 2022-01-03.
//

#import "ViewController.h"
#import "TestFramework/SafeMobileController.h"

@interface ViewController ()

@end

@implementation ViewController {
//    safemobile_module_framework *framework;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIView *view = [[[safemobile_module_framework alloc] init] getView];
//    self.view = view;
}
- (IBAction)onPress:(id)sender {
    SafeMobileController *controller = [[SafeMobileController alloc] init];

        [self presentViewController:controller animated:YES completion:nil];
}

@end
