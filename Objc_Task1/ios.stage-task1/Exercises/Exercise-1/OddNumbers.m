//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger oddCount = 0;

    for (NSNumber *i in array) {
        if ([i intValue] % 2 != 0) {
            oddCount += 1;
        }
    }
    return oddCount;
}

@end
