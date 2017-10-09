//
//  ViewController.m
//  AppStoreReview
//
//  Created by 于英杰 on 2017/10/8.
//  Copyright © 2017年 Mr.YuYingjie. All rights reserved.
//

#import "ViewController.h"
#import <StoreKit/StoreKit.h>
#import "LBToAppStore.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //  此方法内无法吊起UIAlertController弹框，出现whose view is not in the window hierarchy!
    
   
    
}

-(void)viewDidAppear:(BOOL)animated{
    // 此API只支持iOS10.3+  判断
    if([SKStoreReviewController respondsToSelector:@selector(requestReview)]){
        [SKStoreReviewController requestReview];
    }else{
        //        NSString  * nsStringToOpen = [NSString  stringWithFormat: @""];//替换为对应的APPID
        //        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:nsStringToOpen] options:@{@"id":@"123456"} completionHandler:^(BOOL success) {
        //        }];


        //用户好评系统
        LBToAppStore *toAppStore = [[LBToAppStore alloc]init];
        toAppStore.myAppID = @"123456789";
        [toAppStore showGotoAppStore:self];

    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
