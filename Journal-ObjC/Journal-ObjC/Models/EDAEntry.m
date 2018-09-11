//
//  EDAEntry.m
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import "EDAEntry.h"

@implementation EDAEntry

-(instancetype)initWithTitle:(NSString *) title
                    bodyText:(NSString *) bodyText {
//                   timestamp:(NSDate *) timestamp {
    
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = _bodyText;
//        _timestamp = timestamp;
    }
    return self;
}

@end
