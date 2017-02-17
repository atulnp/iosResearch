//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Atul Pedgaonkar on 2/16/17.
//  Copyright © 2017 Atul Pedgaonkar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed=FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
    operatorPressed=FALSE;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry= NULL;
}

- (IBAction)addPressed:(id)sender {
    add = TRUE;
    operatorPressed= TRUE;
}

- (IBAction)minusPressed:(id)sender {
    add = FALSE;
    operatorPressed = TRUE;
}

- (IBAction)equalsPressed:(id)sender {
    if(add == FALSE){
        int outputNum = [firstEntry intValue] - [secondEntry intValue];
        _labelOutput.text= [NSString stringWithFormat: @"%i", outputNum ];
    }
    else {
        int outputNum = [firstEntry intValue] + [secondEntry intValue];
        _labelOutput.text= [NSString stringWithFormat: @"%i", outputNum ];
    }
    operatorPressed= FALSE;
    firstEntry= NULL;
    secondEntry = NULL;
}

- (IBAction)numberPressed:(UIButton*)sender {
    
    int tag = sender.tag;
    
    if(operatorPressed== FALSE) {
        
        if(firstEntry == NULL){
            
            firstEntry = [NSString stringWithFormat:@"%i",tag];
            _labelOutput.text = firstEntry;
        }
        else {
            firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,tag];
            _labelOutput.text= firstEntry;
        }
        
    }
    else{
       
        if(secondEntry == NULL){
            
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _labelOutput.text = secondEntry;
        }
        else {
            secondEntry = [NSString stringWithFormat:@"%@%i",secondEntry,tag];
            _labelOutput.text= secondEntry;
        }

       
    }
    
}

@end
