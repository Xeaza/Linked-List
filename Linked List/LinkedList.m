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

@interface LinkedList ()

@property (nonatomic, strong) Node *head;
@property (nonatomic) NSInteger size;

@end

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.head = NULL;
        self.size = 0;
    }
    return self;
}

- (void)insert:(id)data
{
    Node *newNode = [[Node alloc] initWithObject:data];

    if (self.head == NULL) {
        self.head = newNode;
    }
    else {
        Node *currentNode = self.head;

        while (currentNode.next != NULL) {
            currentNode = currentNode.next;
        }
        currentNode.next = newNode;
    }

    self.size ++;
}

- (void)remove:(id)data
{
    Node *currentNode = self.head;
    Node *previousNode = NULL;

    if (currentNode == NULL) {
        NSLog(@"Nothing in the list");
        return;
    }
    else {
        while (currentNode != NULL) {
            if (currentNode.data == data && currentNode == self.head) {
                self.head = currentNode.next;
                self.size --;
                NSLog(@"1 Removed Node");
                return;
            }
            else if (currentNode.data == data)
            {
                previousNode.next = currentNode.next;
                self.size --;
                NSLog(@"2 Removed Node");

                return;
            }
            previousNode = currentNode;
            currentNode = currentNode.next;
        }
        NSLog(@"Object does not exist");
    }
}

- (void)search:(id)value
{
    Node *currentNode = self.head;
    NSInteger counter = 0;

    if (self.size == 0) {
        NSLog(@"List is empty");
    }
    else {
        while (currentNode != NULL) {
            if (currentNode.data == value) {
                NSLog(@"Found %@ at position %zd", value, counter);
                return;
            }
            counter ++;
            currentNode = currentNode.next;
        }
        NSLog(@"%@ does not exist", value);
    }
}

- (void)display
{
    Node *currentNode = self.head;

    if (currentNode == NULL) {
        NSLog(@"Your list is empty");
        return;
    }
    while (currentNode != NULL) {
        NSLog(@"%@", currentNode.data);
        currentNode = currentNode.next;
    }
}

- (void)length {
    NSLog(@"Size of linked list: %zd", self.size);
}

@end

