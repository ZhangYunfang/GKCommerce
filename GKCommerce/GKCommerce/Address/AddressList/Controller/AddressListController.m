//
//  AddressListController.m
//  GKCommerce
//
//  Created by 小悟空 on 11/15/14.
//  Copyright (c) 2014 GKCommerce. All rights reserved.
//

#import "AddressListController.h"
#import "AddressListTableViewCell.h"

@interface AddressListController ()

@end

@implementation AddressListController

- (id)init
{
    self = [self initWithNibName:@"AddressListView" bundle:nil];
    if (self) {
        
    }
    return self;
}

- (id)initWithUser:(User *)user
{
    self = [self init];
    if (self) {
        self.user = user;
    }
    return self;
}

- (id)initWithAddress:(NSArray *)addresses
{
    self = [self init];
    self.addresses = addresses;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (NSString *identifier in @[@"AddressListTableViewCell"])
        [self.tableView registerNib:[UINib nibWithNibName:identifier bundle:nil]
             forCellReuseIdentifier:identifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.addresses.count;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 89.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AddressListTableViewCell *cell;
    Address *address;
    cell = [tableView
            dequeueReusableCellWithIdentifier:@"AddressListTableViewCell"];
    address = [self.addresses objectAtIndex:indexPath.row];
    cell.address = address;
    
    return cell;
}

+ (instancetype)addressListControllerWithMock
{
    Address *address = [[Address alloc] init];
    address.name = @"小悟空";
    address.cellPhone = @"15202171763";
    address.postcode = @"900032";
    address.address = @"上海市浦东新区张杨北路 距离市中心约15500米";
    
    Region *provice = [[Region alloc] init];
    provice.name = @"上海市";
    
    Region *city = [[Region alloc] init];
    city.name = @"上海市";
    city.parent = provice;
    
    Region *district = [[Region alloc] init];
    district.name = @"虹口区";
    district.parent = city;
    
    address.district = district;
    address.city = city;
    address.province = provice;
    address.isDefault = YES;
    
    AddressListController *controller;
    controller = [[AddressListController alloc]
                  initWithAddress:@[address]];
    
    return controller;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end