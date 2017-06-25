//
//  ViewController.m
//  CustomDatePicker
//
//  Created by mac on 2017/6/25.
//  Copyright © 2017年 JK. All rights reserved.
//

#import "ViewController.h"
#import "UICustomDatePicker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)chooseDateBtnAction:(id)sender {
    __weak ViewController *vc = self;
    [UICustomDatePicker showCustomDatePickerAtView:self.view choosedDateBlock:^(NSDate *date) {
        __strong ViewController *ss = vc;
        ss.textField.text = [NSString stringWithFormat:@"%@",date];
    } cancelBlock:^{
        
    }];
}


@end
