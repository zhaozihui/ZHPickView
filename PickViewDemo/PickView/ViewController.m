//
//  ViewController.m
//  PickView
//
//  Created by 赵子辉 on 15/11/17.
//  Copyright © 2015年 zhaozihui. All rights reserved.
//

#import "ViewController.h"
#import "ZHPickView.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showPickView:(id)sender {
    ZHPickView *pickView = [[ZHPickView alloc] init];
    [pickView setDataViewWithItem:@[@"item1",@"item2",@"item3"] title:@"DataTitle"];
    [pickView showPickView:self];
    pickView.block = ^(NSString *selectedStr)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have chooseed:" message:selectedStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    };
}
- (IBAction)showDate:(id)sender {
    ZHPickView *pickView = [[ZHPickView alloc] init];
    [pickView setDateViewWithTitle:@"dateTitle"];
    [pickView showPickView:self];
    pickView.block = ^(NSString *selectedStr)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have chooseed:" message:selectedStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    };

}

@end
