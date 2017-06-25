# UICustomDatePicker
The Most Simple Date picker.最简单的时间选择器
调用方法：

  #import "UICustomDatePicker.h"
    __weak ViewController *vc = self;
    [UICustomDatePicker showCustomDatePickerAtView:self.view choosedDateBlock:^(NSDate *date) {
        __strong ViewController *ss = vc;
        NSLog(@"current Date:%@",date);
    } cancelBlock:^{
 
    }];
