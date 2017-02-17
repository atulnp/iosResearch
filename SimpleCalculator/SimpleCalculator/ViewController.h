//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Atul Pedgaonkar on 2/16/17.
//  Copyright © 2017 Atul Pedgaonkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    bool add; //Operator
    NSString *firstEntry;
    NSString *secondEntry;
}

@property (strong, nonatomic) IBOutlet UILabel *labelOutput;

- (IBAction)clearPressed:(id)sender;

- (IBAction)addPressed:(id)sender;

- (IBAction)minusPressed:(id)sender;
- (IBAction)equalsPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;

@end

