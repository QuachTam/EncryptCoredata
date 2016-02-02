//
//  CoreDataObject+CoreDataProperties.h
//  EncryptedCoreData
//
//  Created by Tamqn on 12/23/15.
//  Copyright © 2015 PRNDL Development Studios, LLC. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "CoreDataObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface CoreDataObject (CoreDataProperties)

@property (nullable, nonatomic, retain) id encrypted_field;
@property (nullable, nonatomic, retain) NSDate *dateCreate;
@property (nullable, nonatomic, retain) NSString *name;

@end

NS_ASSUME_NONNULL_END
