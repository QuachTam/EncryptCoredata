//
//  RootViewController.h
//  EncryptedCoreData
//
//  Created by Tamqn on 12/23/15.
//  Copyright © 2015 PRNDL Development Studios, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)actionSave:(id)sender;

@end
