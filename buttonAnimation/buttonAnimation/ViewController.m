//
//  ViewController.m
//  buttonAnimation
//
//  Created by KIMI on 16/11/9.
//  Copyright © 2016年 KIMI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *button1CenterXCons;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *button2CenterXCons;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *button3CenterXCons;
@property (weak, nonatomic) IBOutlet UIButton *button1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)changeButtonAnimate:(UIButton *)sender {
    
    NSLog(@"%zd",sender.tag);
    CGFloat offset = (sender.tag == 0)? -80 : 80;
    
    _button1CenterXCons.constant += offset;
    _button2CenterXCons.constant += offset;
    _button3CenterXCons.constant -= offset;
    
    [UIView animateWithDuration:0.8 animations:^{
        _button1.alpha = 0;
        [self.view layoutIfNeeded];
    }];
    
    if (sender.tag != 0) {
        
        [UIView animateWithDuration:0.8 animations:^{
            _button1.alpha = 1;
        }];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
