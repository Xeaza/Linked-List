//
//  LinkedList.h
//  Linked List
//
//  Created by Taylor Wright-Sanson on 12/15/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject

- (void)insert:(id)data;
- (void)remove:(id)data;
- (void)display;
- (void)search:(id)value;
- (void)length;

@end
