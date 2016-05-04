//
//  main.m
//  BinarySearchTree
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BinarySearchTree *bst = [[BinarySearchTree alloc] initWithObject:@5];
        
        [bst insertObject:@2];
        [bst insertObject:@6];
        
        NSDate *methodStart = [NSDate date];

        BinaryTreeNode *found = [bst find:@2];
        
        NSDate *methodEnd = [NSDate date];
        
        NSTimeInterval executionTime = [methodEnd timeIntervalSinceDate:methodStart];
        NSLog(@"Execution time for binary search: %f ", executionTime);
        
        NSLog(@"%@",found);
    }
    return 0;
}
