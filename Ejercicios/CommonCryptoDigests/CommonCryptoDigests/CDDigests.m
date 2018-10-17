//
//  CDDigests.m
//  CommonCryptoDigests
//
//  Created by Itzel GoOm on 06/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

#import <Foundation/Foundation.h>

@implementation  CDDigests
+(NSString *) sha1String: (NSString *)input {
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
}

@end

