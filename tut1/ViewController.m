//
//  ViewController.m
//  tut1
//
//  Created by yuting yuan on 08/07/15.
//  Copyright (c) 2015 Yiqing Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSString *username;

@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.username = @"yiqing";
    self.password = @"pw";
    
    NSLog(@"%@%@",self.username,self.password);

    self.passwordTextField.secureTextEntry = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginPressed:(id)sender {
    
    BOOL isUsernameOK = [self.username isEqualToString:[self.usernameTextField text]];
    BOOL isPasswordOK = [self.password isEqualToString:[self.passwordTextField text]];
    
    if(isUsernameOK && isPasswordOK ){
        NSLog(@"login ok");
        [self.notificationLabel setText:@"Login success, welcome to the page"];
    } else {
        NSLog(@"login fail");
        [self.notificationLabel setText:@"Login fail, username/pasword incorrect"];

    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:TRUE];
}
@end
