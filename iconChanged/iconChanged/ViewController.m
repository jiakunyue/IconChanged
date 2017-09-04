//
//  ViewController.m
//  iconChanged
//
//  Created by Justin on 2017/9/4.
//  Copyright © 2017年 jerei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setIcon:(NSString *)name {
    [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
        NSLog(@"%@", error.description);
    }];
}

- (IBAction)btn0:(id)sender {
    [self setIcon:nil];
}

- (IBAction)btn1:(id)sender {
    [self setIcon:@"icon1"];
}

- (IBAction)btn2:(id)sender {
    [self setIcon:@"icon2"];
}

@end
