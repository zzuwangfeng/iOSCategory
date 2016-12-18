//
//  NSString+Additional.h
//  iOSCategory
//
//  Created by JackWong on 2016/12/13.
//  Copyright © 2016年 fengchaoedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Additional)
#pragma mark - Validations

- (BOOL)isNull ;

- (BOOL)isEmpty ;

- (BOOL)isEmail ;

- (BOOL)isStartsWithACapitalLetter;

#pragma mark -

- (NSString *)trimWhitespace ;

- (NSUInteger)numberOfWords ;

- (NSString *)reverseString ;

- (NSString *)concat:(NSString *)string ;

- (BOOL)contains:(NSString *)string ;

+ (NSString *)truncateString:(NSString *) string toCharacterCount:(NSUInteger) count ;


#pragma mark - URL Encoding and Decoding

- (NSString *)urlEncode ;

- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding ;

- (NSString *)urlDecode ;

- (NSString *)urlDecodeUsingEncoding:(NSStringEncoding)encoding ;

#pragma mark - Date Format

- (NSDate *)dateFromFormat: (NSString *)formatter ;

@end
