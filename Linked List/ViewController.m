//
//  ViewController.m
//  Linked List
//
//  Created by Taylor Wright-Sanson on 12/15/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"
#import "LinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LinkedList *linkedList = [[LinkedList alloc] init];
    [linkedList insert:[NSNumber numberWithInteger:5]];
    [linkedList insert:[NSNumber numberWithInteger:23]];
    [linkedList insert:[NSNumber numberWithInteger:13]];
    [linkedList insert:@"hi"];

    [linkedList remove:[NSNumber numberWithInteger:5]];
    [linkedList search:@"hi"];
    [linkedList display];
    [linkedList length];
    [linkedList remove:[NSNumber numberWithInteger:13]];

    [linkedList remove:[NSNumber numberWithInteger:4]];

    [linkedList display];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
