//
//  BinarySearchNode.m
//  BinarySearchTree
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode


-(void)addBinaryTreeNode:(BinaryTreeNode *)newNode {
    if (newNode.object >= self.object) {
        if (!self.rightChild) {
            newNode.parent = self;
            self.rightChild = newNode;
        } else {
            [self.rightChild addBinaryTreeNode:newNode];
            return;
        }
    } else if (newNode.object < self.object) {
        if(!self.leftChild) {
            newNode.parent = self;
            self.leftChild = newNode;
        } else {
            [self.leftChild addBinaryTreeNode:newNode];
        }
    }
}

-(instancetype)findBinaryTreeNodeOfObject:(BinaryTreeNode *)target {
    if ([self.object isEqualTo:target.object]) {
        return self;
    } else if ([self.object isGreaterThan:target.object]) {
        return [self.leftChild findBinaryTreeNodeOfObject:target];
    } else if ([self.object isLessThan:target.object]) {
        return [self.rightChild findBinaryTreeNodeOfObject:target];
    }
    
    return nil;
}

-(instancetype)newNodeWithObject:(NSObject *)object {
    self.object = object;
    
    return self;
}

-(BOOL)isLeftChildOfParent {
    return self.parent.object > self.object ? YES : NO;
}
@end
