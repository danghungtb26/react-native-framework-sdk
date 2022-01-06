//
//  TestFramework.h
//  TestFramework
//
//  Created by Đặng Văn Hùng on 2022-01-05.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


//! Project version number for TestFramework.
FOUNDATION_EXPORT double TestFrameworkVersionNumber;

//! Project version string for TestFramework.
FOUNDATION_EXPORT const unsigned char TestFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <TestFramework/PublicHeader.h>


@interface safemobile_module_framework : NSObject
//-(NSString*) doSomethingAPI;
- (UIView *) getView;
@end
