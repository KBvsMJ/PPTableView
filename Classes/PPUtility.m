//
//  NSString+PPUtility.m
//  PPTableView
//
//  Created by 池鹏鹏 on 16/5/5.
//  Copyright © 2016年 DSKcpp. All rights reserved.
//

#import "PPUtility.h"

@implementation NSString (PPUtility)
- (CGSize)pp_sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth maxHeight:(CGFloat)maxHeight
{
    if (self.length) {
        NSDictionary *attributes = @{NSFontAttributeName : font};
        CGSize maxSize = CGSizeMake(maxWidth, maxHeight);
        return [self boundingRectWithSize:maxSize
                                  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                               attributes:attributes
                                  context:nil].size;
    } else {
        return CGSizeZero;
    }
}
@end

@implementation UIView (PPUtility)
- (void)pp_removeAllSubviews
{
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
}

@end
@implementation PPCPLabel

@end