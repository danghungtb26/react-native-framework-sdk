//
//  ViewController.m
//  SafeMobile-RN-Example
//
//  Created by Đặng Văn Hùng on 2022-01-03.
//

#import "ViewController.h"
#import "safemobile_module/safemobile_module.h"

@interface ViewController ()

@end

@implementation ViewController {
    safemobile_module_framework *framework;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view = [[[safemobile_module_framework alloc] init] getView];
    self.view = view;
}


@end
