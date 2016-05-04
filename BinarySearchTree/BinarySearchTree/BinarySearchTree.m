//
//  BinarySearchTree.m
//  BinarySearchTree
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

-(instancetype)initWithObject:(NSObject *)object{
    BinaryTreeNode *newNode = [[BinaryTreeNode alloc] init];
    newNode.object = object;
    self.root = newNode;
    
    return self;
}
-(void)insertObject:(NSObject *)object{
    
    BinaryTreeNode *newNode = [[BinaryTreeNode alloc] newBinaryTreeNodeWithObject:object];
    
    if (!self.root) {
        self.root = newNode;
    } else {
        [self.root addBinaryTreeNode:newNode];
    }
}

-(BinaryTreeNode *)find:(NSObject *)object{
    
    if (self.root == nil || self.root.object == nil ){
        return nil;
    } else if ([self.root.object isGreaterThan:object]) {
        return [self.root.leftChild findBinaryTreeNodeOfObject:object];
    } else if ([self.root.object isLessThan:object]) {
        return [self.root.rightChild findBinaryTreeNodeOfObject:object];
    }
    return nil;
}
-(BinaryTreeNode *)deleteObject:(NSObject *)object{
    return nil;
}



@end
