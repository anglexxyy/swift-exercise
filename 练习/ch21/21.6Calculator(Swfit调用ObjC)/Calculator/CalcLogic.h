//
//  CalcLogic.h
//  Calculator
//
//  Created by tonymacmini on 14-7-1.
//  本书网站：http://www.51work6.com/swift.php
//  智捷iOS课堂在线课堂：http://v.51work6.com
//  智捷iOS课堂新浪微博：http://weibo.com/u/3215753973
//  智捷iOS课堂微信公共账号：智捷iOS课堂
//  作者微博：http://weibo.com/516inc
//  官方csdn博客：http://blog.csdn.net/tonny_guan
//  Swift语言QQ讨论群：362298485 联系QQ：1575716557 邮箱：jylong06@163.com
//

#import <Foundation/Foundation.h>

typedef enum {
    Plus = 200, Minus, Multiply, Divide,
    Default = 0
} Operand;

@interface CalcLogic : NSObject
{
    //保存上一次值
    double lastRetainValue;
    //最近一次选择的操作符（加、减、乘、除）
    Operand operand;
    //临时保存MainLabel内容，为true时候，输入数字MainLabel内容被清为0
    BOOL isMainLabelTextTemporary;
}
//构造方法
-(id) init;
-(void)clean;

-(NSString*)updateMainLabelStringByNumberTag:(int) tag
                        withMainLabelString:(NSString*)mainLabelString;

-(BOOL)doesStringContainDecimal:(NSString*)string;


-(NSString*)calculateByTag:(int) tag
                         withMainLabelString:(NSString*)mainLabelString;


@end
