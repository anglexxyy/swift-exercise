//
//  ViewController.h
//  Calculator
//
//  Created by tonymacmini on 14-7-4.
//  本书网站：http://www.51work6.com/swift.php
//  智捷iOS课堂在线课堂：http://v.51work6.com
//  智捷iOS课堂新浪微博：http://weibo.com/u/3215753973
//  智捷iOS课堂微信公共账号：智捷iOS课堂
//  作者微博：http://weibo.com/516inc
//  官方csdn博客：http://blog.csdn.net/tonny_guan
//  Swift语言QQ讨论群：362298485 联系QQ：1575716557 邮箱：jylong06@163.com
//

#import <UIKit/UIKit.h>
#import "CalcLogic.h"

@interface ViewController : UIViewController
{
    CalcLogic *logic;
}

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

- (IBAction)operandPressed:(id)sender;
- (IBAction)equalsPressed:(id)sender;
- (IBAction)clearPressed:(id)sender;
- (IBAction)decimalPressed:(id)sender;
- (IBAction)numberButtonPressed:(id)sender;

@end