//
//  EDAEntryController.m
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import "EDAEntryController.h"
#import "EDAEntry.h"

@implementation EDAEntryController

+ (EDAEntryController *)shared {
    static EDAEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EDAEntryController new];
    });
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)addEntryWithTitle:(NSString *)title
                 bodyText:(NSString *)bodyText
{
    EDAEntry *entry = [[EDAEntry alloc]initWithTitle:title bodyText:bodyText];
    [[EDAEntryController shared].entries addObject:entry];
}

- (void)updateEntry:(EDAEntry *)entry
          withTitle:(NSString *)title
        andBodyText:(NSString *)bodyText {
//       andTimeStamp:(NSDate *)timestamp {

    entry.title = title;
    entry.bodyText = bodyText;
//    entry.timestamp = timestamp;
}

- (void)removeEntry:(EDAEntry *)entry {
    NSUInteger index = [[EDAEntryController shared].entries indexOfObject:entry];
    [[EDAEntryController shared].entries removeObjectAtIndex:index];
}

@end
