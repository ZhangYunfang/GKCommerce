//
//  GKTown.h
//  GKAddressKitExample
//
//  Created by 小悟空 on 2/19/15.
//  Copyright (c) 2015 Goku. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GKRegion.h"

@interface GKTown : GKRegion

@property (assign, nonatomic) NSInteger townID;
@property (strong, nonatomic) NSArray   *villages;

@end
