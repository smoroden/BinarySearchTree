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
        
        BinaryTreeNode *found = [bst find:@2];
        NSLog(@"%@",found.parent.object);
    }
    return 0;
}
