//
//  ViewController.m
//  XFDaterViewDemo
//
//  Created by 许晓菲 on 16/6/30.
//  Copyright © 2016年 BigFly. All rights reserved.
//

#import "ViewController.h"
#import "XFDaterView.h"
@interface ViewController ()<XFDaterViewDelegate>{
    XFDaterView*dater;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dater=[[XFDaterView alloc]initWithFrame:CGRectZero];
    dater.delegate=self;
    [dater showInView:self.view animated:YES];
    //    [dater setSelectYear:2016 month:2 day:1 animated:YES];
    //    dater.dateViewType=XFDateViewTypeTime;
    //    [dater setSelectHour:20 miniute:8 second:56 animated:YES];
}
- (void)daterViewDidClicked:(XFDaterView *)daterView{
    NSLog(@"dateString=%@ timeString=%@",dater.dateString,dater.timeString);
}
- (void)daterViewDidCancel:(XFDaterView *)daterView{
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [dater showInView:self.view animated:YES];
}
@end
