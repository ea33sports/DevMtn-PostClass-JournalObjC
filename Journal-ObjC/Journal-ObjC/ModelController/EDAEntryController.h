//
//  EDAEntryController.h
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EDAEntry.h"

@interface EDAEntryController : NSObject

@property (nonatomic) NSMutableArray *entries;

+ (EDAEntryController *)shared;


- (void)addEntryWithTitle:(NSString *)title
                 bodyText:(NSString *)bodyText;
- (void)updateEntry:(EDAEntry *)entry
          withTitle:(NSString *)title
        andBodyText:(NSString *)bodyText;
- (void)removeEntry:(EDAEntry *)entry;

@end
