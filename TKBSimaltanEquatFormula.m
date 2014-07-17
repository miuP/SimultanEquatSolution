//
//  TKBSimaltanEquatFormula.m
//  SimultanEquatSolution
//
//  Created by kazuya on 7/17/14.
//  Copyright (c) 2014 COINS Project AID. All rights reserved.
//

#import "TKBSimaltanEquatFormula.h"

@implementation TKBSimaltanEquatFormula

- (void)setXCoefficient:(NSInteger)xCoefficient yCoefficient:(NSInteger)yCoefficient constant:(NSInteger)constant
{
    _xCoefficient = xCoefficient;
    _yCoefficient = yCoefficient;
    _constant     = constant;
}

- (TKBSimaltanEquatFormula *)multipleFormulaWithMultipleNumber:(NSInteger)multipleNumber
{
    TKBSimaltanEquatFormula *form = [[TKBSimaltanEquatFormula alloc] init];
    
    [form setXCoefficient:self.xCoefficient * multipleNumber
             yCoefficient:self.yCoefficient * multipleNumber
                 constant:self.constant * multipleNumber];
    
    return form;
}



- (void)display
{
    NSLog(@"%ldx + %ldy = %ld", _xCoefficient, _yCoefficient, _constant);
}

@end