//
//  NSString+Additional.m
//  iOSCategory
//
//  Created by JackWong on 2016/12/13.
//  Copyright © 2016年 fengchaoedu. All rights reserved.
//

#import "NSString+Additional.h"

@implementation NSString (Additional)
#pragma mark - Validations

- (BOOL)isNull {
    
    if(self == nil || [self isKindOfClass:[NSNull class]] || [self isEmpty]) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isEmpty {
    return [[self trimWhitespace] isEqualToString:@""];
}


- (BOOL)isEmail {
    
    //Create a regex string
    NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}" ;
    //Create predicate with format matching your regex string
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", stricterFilterString];
    //return true if email address is valid
    return [emailTest evaluateWithObject:self];
    
}

- (BOOL)isStartsWithACapitalLetter {
    
    unichar firstCharacter = [self characterAtIndex:0];
    return [[NSCharacterSet uppercaseLetterCharacterSet]
            characterIsMember:firstCharacter];
    
}

#pragma mark -

- (NSString *)trimWhitespace {
    
    //    NSMutableString *str = [self mutableCopy];
    //    CFStringTrimWhitespace((__bridge CFMutableStringRef)str);
    //    return str;
    
    return [self stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSUInteger)numberOfWords {
    __block NSUInteger count = 0;
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length])
                             options:NSStringEnumerationByWords|NSStringEnumerationSubstringNotRequired
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              count++;
                          }];
    return count;
}

@end
