//
//  BAViewController.m
//  ButtonWithActivityIndicator
//
//  Copyright (c) 2012 Vadym Kaninskyi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software
//  and associated documentation files (the "Software"), to deal in the Software without restriction,
//  including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial
//  portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
//  LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "BAViewController.h"

#define TIMEOUT 1.0

@interface BAViewController ()

- (void)enableButton:(id)obj;

@end

@implementation BAViewController

@synthesize orangeBtn;
@synthesize greenBtn;
@synthesize blueBtn;
@synthesize orangeBtnStatus;
@synthesize greenBtnStatus;
@synthesize blueBtnStatus;
@synthesize orangeIndicator;
@synthesize greenIndicator;
@synthesize blueIndicator;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.orangeBtn setTitle:@"" forState:UIControlStateDisabled];
    [self.greenBtn setTitle:@"" forState:UIControlStateDisabled];
    [self.blueBtn setTitle:@"" forState:UIControlStateDisabled];
  
    [self.orangeBtn setBackgroundImage:[UIImage imageNamed:@"orangeButton@2x.png"] forState:UIControlStateNormal];
    [self.orangeBtn setBackgroundImage:[UIImage imageNamed:@"orangeButtonHighlight@2x.png"] forState:UIControlStateHighlighted];
    [self.greenBtn setBackgroundImage:[UIImage imageNamed:@"greenButton@2x.png"] forState:UIControlStateNormal];
    [self.greenBtn setBackgroundImage:[UIImage imageNamed:@"greenButtonHighlight@2x.png"] forState:UIControlStateHighlighted];
    [self.blueBtn setBackgroundImage:[UIImage imageNamed:@"blueButton@2x.png"] forState:UIControlStateNormal];
    [self.blueBtn setBackgroundImage:[UIImage imageNamed:@"blueButtonHighlight@2x.png"] forState:UIControlStateHighlighted];
    
    [self.orangeIndicator setHidden:YES];
    [self.greenIndicator setHidden:YES];
    [self.blueIndicator setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    self.orangeBtn = nil;
    self.greenBtn = nil;
    self.blueBtn = nil;
    self.orangeBtnStatus = nil;
    self.greenBtnStatus = nil;
    self.blueBtnStatus = nil;
    self.orangeIndicator = nil;
    self.greenIndicator = nil;
    self.blueIndicator = nil;
    [super dealloc];
}

- (IBAction)orangeBtnDidPress:(id)sender
{
    [self.orangeBtn setEnabled:NO];
    [self.orangeIndicator setHidden:NO];
    [self.orangeIndicator startAnimating];
    
    [self performSelector:@selector(enableButton:) withObject:self.orangeBtn afterDelay:TIMEOUT];
}

- (IBAction)greenBtnDidPress:(id)sender
{
    [self.greenBtn setEnabled:NO];
    [self.greenIndicator setHidden:NO];
    [self.greenIndicator startAnimating];

    [self performSelector:@selector(enableButton:) withObject:self.greenBtn afterDelay:TIMEOUT];
}

- (IBAction)blueBtnDidPress:(id)sender
{
    [self.blueBtn setEnabled:NO];
    [self.blueIndicator setHidden:NO];
    [self.blueIndicator startAnimating];

    [self performSelector:@selector(enableButton:) withObject:self.blueBtn afterDelay:TIMEOUT];
}

- (void)enableButton:(id)obj
{
    if ([obj isEqual:self.orangeBtn]) {
        [self.orangeBtn setEnabled:YES];
        [self.orangeIndicator setHidden:YES];
        [self.orangeIndicator stopAnimating];
    }
    else if ([obj isEqual:self.greenBtn]) {
        [self.greenBtn setEnabled:YES];
        [self.greenIndicator setHidden:YES];
        [self.greenIndicator stopAnimating];
    }
    else if ([obj isEqual:self.blueBtn]) {
        [self.blueBtn setEnabled:YES];
        [self.blueIndicator setHidden:YES];
        [self.blueIndicator stopAnimating];
    }
}

@end
