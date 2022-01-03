//
//  safemobile_module.h
//  safemobile-module
//
//  Created by Đặng Văn Hùng on 2021-12-31.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridge.h>
#import <React/RCTAssert.h>

//! Project version number for safemobile_module.
FOUNDATION_EXPORT double safemobile_moduleVersionNumber;

//! Project version string for safemobile_module.
FOUNDATION_EXPORT const unsigned char safemobile_moduleVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <safemobile_module/PublicHeader.h>


@interface safemobile_module_framework : NSObject
//-(NSString*) doSomethingAPI;
- (UIView *) getView;
@end
