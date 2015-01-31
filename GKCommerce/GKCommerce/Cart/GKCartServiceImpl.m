//
//  GKCartServiceImpl.m
//  GKCommerce
//
//  Created by 小悟空 on 1/31/15.
//  Copyright (c) 2015 GKCommerce. All rights reserved.
//

#import "GKCartServiceImpl.h"

@implementation GKCartServiceImpl

- (RACSignal *)fetchCartWithUser:(User *)user
{
  return
  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
    return [RACDisposable disposableWithBlock:^{}];
  }];
}

- (RACSignal *)addItem:(CartItem *)item
{
  return
  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
    return [RACDisposable disposableWithBlock:^{}];
  }];
}

- (RACSignal *)updateItem:(CartItem *)item oldQuantity:(NSInteger)anOldQuantity
{
  return
  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
    return [RACDisposable disposableWithBlock:^{}];
  }];
}

- (RACSignal *)removeItem:(CartItem *)item
{
  return
  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
    return [RACDisposable disposableWithBlock:^{}];
  }];
}

- (RACSignal *)removeItems:(NSArray *)items
{
  return
  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
    return [RACDisposable disposableWithBlock:^{}];
  }];
}
@end
