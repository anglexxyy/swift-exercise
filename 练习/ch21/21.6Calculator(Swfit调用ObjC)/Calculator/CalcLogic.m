//
//  CalcLogic.m
//  Calculator
//
//  Created by tonymacmini on 14-7-1.
//  Copyright (c) 2014年 tonymacmini. All rights reserved.
//  本书网站：http://www.51work6.com/swift.php
//  智捷iOS课堂在线课堂：http://v.51work6.com
//  智捷iOS课堂新浪微博：http://weibo.com/u/3215753973
//  智捷iOS课堂微信公共账号：智捷iOS课堂
//  作者微博：http://weibo.com/516inc
//  官方csdn博客：http://blog.csdn.net/tonny_guan
//  Swift语言QQ讨论群：362298485 联系QQ：1575716557 邮箱：jylong06@163.com
//

#import "CalcLogic.h"

@implementation CalcLogic

//构造方法
-(id) init
{
    NSLog(@"CalcLogic init");
    self = [super init];
    if (self) {
        lastRetainValue = 0.0;
        isMainLabelTextTemporary  = FALSE;
        operand = Default;
    }
    return self;
}

-(void)clean
{
    lastRetainValue = 0.0;
    isMainLabelTextTemporary  = FALSE;
    operand = Default;
}

-(NSString*)updateMainLabelStringByNumberTag:(int) tag
                         withMainLabelString:(NSString*)mainLabelString
{
    NSString* string = mainLabelString;
    
    if (isMainLabelTextTemporary)  {
        string = @"0";
        isMainLabelTextTemporary = FALSE;
    }
    
    int optNumber = tag - 100;
    //把String转为double
    double mainLabelDouble = string.doubleValue;
    
    if (mainLabelDouble == 0
        && [self doesStringContainDecimal: string] == false) {
        NSString *strOptNumber = [NSString stringWithFormat:@"%i", optNumber];
        return strOptNumber;
    }
    
    NSString *resultString = [string stringByAppendingFormat:@"%i", optNumber];
    
    return resultString;

}

-(BOOL)doesStringContainDecimal:(NSString*)string
{
    NSString *searchForDecimal = @".";
    NSRange range = [string rangeOfString:searchForDecimal];
    
    if (range.location != NSNotFound)
        return YES;
    return NO;
}


-(NSString*)calculateByTag:(int) tag
       withMainLabelString:(NSString*)mainLabelString
{
    
    //把String转为为double
    double currentValue = mainLabelString.doubleValue;
    
    switch (operand) {
    case Plus:
            lastRetainValue += currentValue;
            break;
    case Minus:
            lastRetainValue -= currentValue;
            break;
    case Multiply:
            lastRetainValue *= currentValue;
            break;
    case Divide:
        if (currentValue != 0) {
            lastRetainValue /= currentValue;
        } else {
            operand = Default;
            isMainLabelTextTemporary = TRUE;
            return @"错误";
        }
            break;
    default:
            lastRetainValue = currentValue;
    }
    
    //记录当前操作符，下次计算时候使用
    operand = tag;//Operator.fromRaw(tag)!
    
    // let resultString = String(lastRetainValue)   //能够.00情况去掉
    NSString* resultString = [NSString stringWithFormat:@"%g", lastRetainValue];
    isMainLabelTextTemporary = TRUE;
    
    return resultString;

}

@end
