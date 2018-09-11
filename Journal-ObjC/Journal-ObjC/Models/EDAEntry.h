//
//  EDAEntry.h
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EDAEntry : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;
//@property (nonatomic) NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title
                     bodyText:(NSString *)bodyText;
//                    timestamp:(NSDate *)timestamp;

@end
