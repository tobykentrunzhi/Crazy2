//
//  ViewController.m
//  Crazy2
//
//  Created by Arron on 10/26/15.
//  Copyright (c) 2015 Arron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIToolbar *topView=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
    [topView setBarStyle:UIBarStyleDefault];
    
    
    UIBarButtonItem *myBn=[[UIBarButtonItem alloc]initWithTitle:@"无动作" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    UIBarButtonItem * spaceBn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *doneBn=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(editFinish)];
    
    NSArray *buttonArrays=@[myBn,spaceBn,doneBn];
    
    
    //items
    
    topView.items=buttonArrays;
    
    
    //附件设置view
    self.textView.inputAccessoryView=topView;
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)editFinish{
    [self.textView resignFirstResponder];
    
}

@end
