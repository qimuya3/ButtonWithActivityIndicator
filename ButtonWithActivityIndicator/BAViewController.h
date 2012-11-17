//
//  BAViewController.h
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



#import <UIKit/UIKit.h>

@interface BAViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIButton *orangeBtn;
@property (retain, nonatomic) IBOutlet UIButton *greenBtn;
@property (retain, nonatomic) IBOutlet UIButton *blueBtn;
@property (retain, nonatomic) IBOutlet UILabel *orangeBtnStatus;
@property (retain, nonatomic) IBOutlet UILabel *greenBtnStatus;
@property (retain, nonatomic) IBOutlet UILabel *blueBtnStatus;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *orangeIndicator;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *greenIndicator;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *blueIndicator;
- (IBAction)orangeBtnDidPress:(id)sender;
- (IBAction)greenBtnDidPress:(id)sender;
- (IBAction)blueBtnDidPress:(id)sender;

@end
