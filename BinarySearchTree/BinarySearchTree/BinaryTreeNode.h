//
//  BinarySearchNode.h
//  BinarySearchTree
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject


@property (nonatomic, strong) NSObject *object;
@property (nonatomic, strong) BinaryTreeNode *leftChild;
@property (nonatomic, strong) BinaryTreeNode *rightChild;
@property (nonatomic, strong) BinaryTreeNode *parent;

-(instancetype)newBinaryTreeNodeWithObject:(NSObject *)object;
-(void)addBinaryTreeNode:(BinaryTreeNode *)newNode;

-(instancetype)findBinaryTreeNodeOfObject:(NSObject *)target;
-(BOOL)isLeftChildOfParent;

@end
