//
//  RootViewController.m
//  EncryptedCoreData
//
//  Created by Tamqn on 12/23/15.
//  Copyright © 2015 PRNDL Development Studios, LLC. All rights reserved.
//

#import "RootViewController.h"
#import "CoreDataObject.h"
#import <MagicalRecord/MagicalRecord.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)actionSave:(id)sender {
    [self.view endEditing:YES];
    [MagicalRecord saveWithBlockAndWait:^(NSManagedObjectContext *localContext) {
        CoreDataObject *coreObject = [CoreDataObject MR_createEntityInContext:localContext];
        coreObject.encrypted_field = self.textField.text;
        coreObject.name = [NSString stringWithFormat:@"name: %@", self.textField.text];
        coreObject.dateCreate = [NSDate date];
    }];
    
    NSArray* cachePathArray = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString* cachePath = [cachePathArray lastObject];
    NSLog(@"list: %@", cachePath);
    
    NSArray *listCoreData = [CoreDataObject MR_findAllInContext:[NSManagedObjectContext MR_defaultContext]];
    for (NSInteger index=0; index<listCoreData.count; index++) {
        CoreDataObject *object = [listCoreData objectAtIndex:index];
        NSLog(@"encrypt: %@", object.encrypted_field);
        NSLog(@"name: %@", object.name);
        NSLog(@"dateCreate: %@", object.dateCreate);
    }
}
@end
