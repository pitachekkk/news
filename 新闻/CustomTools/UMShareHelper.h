//
//  UMShareHelper.h
//  新闻
//
//  Created by chenjinzhi on 2018/2/7.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CJZdataModel.h"
#import "video_info_model.h"

@interface UMShareHelper : NSObject

+ (instancetype)sharedInstance;

+(void)LoginWechat:(NSString *)name;

+(void)ShareNews:(NSString *)name AndModel:(CJZdataModel*)model AndImg:(UIImage*)img;

+(void)SharePNGByName:(NSString *)name AndImg:(UIImage *)img;

+(void)ShareName:(NSString*)name;

+(void)ShareVideo:(NSString *)name AndModel:(video_info_model*)model;

@end
