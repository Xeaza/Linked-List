//
//  LinkedList.m
//  Linked List
//
//  Created by Taylor Wright-Sanson on 12/15/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "LinkedList.h"

@interface Node : NSObject

@property (nonatomic, strong) id data;
@property (nonatomic, strong) id next;

@end

@implementation Node

- (instancetype)initWithObject:(id)data
{
    self = [super init];
    if (self) {
        self.data = data;
        self.next = NULL;
    }
    return self;
}

@end
@implementation LinkedList

@end
