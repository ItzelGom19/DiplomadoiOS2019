//
//  CDDigests.h
//  CommonCryptoDigests
//
//  Created by Itzel GoOm on 06/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

#ifndef CDDigests_h
#define CDDigests_h
#import  <CommonCrypto/CommonDigest.h>
#import <Foundation/Foundation.h>


@interface CDDigests : NSObject
+(NSString *) sha1String: (NString *)input;
+[NSString *] sha1Data: (NSData *)unput;

@end




#endif /* CDDigests_h */
