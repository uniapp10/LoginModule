//
//  UIView+ZDFrame.m
//  LoginModule
//
//  Created by zhudong on 2017/5/5.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "UIView+ZDFrame.h"

@implementation UIView (ZDFrame)

- (void)setX:(CGFloat)x{
    
    self.frame = CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
    
}

- (CGFloat)x{
    
    return self.frame.origin.x;
    
}
- (void)setY:(CGFloat)y{
    
    self.frame = CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height);
    
}

- (CGFloat)y{
    
    return self.frame.origin.y;
    
}

@end
