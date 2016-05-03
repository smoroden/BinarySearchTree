//
//  BinarySearchTree.h
//  BinarySearchTree
//
//  Created by Zach Smoroden on 2016-05-03.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree : NSObject

@property (nonatomic, strong) BinaryTreeNode *root;

-(instancetype)initWithObject:(NSObject *)object;
-(void)insertObject:(NSObject *)object;
-(BinaryTreeNode *)find:(NSObject *)object;
-(BinaryTreeNode *)deleteObject:(NSObject *)object;
@end
