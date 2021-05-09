#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)


- (NSNumber *)minRotated {
    
    if (self.count == 0) {
        return nil;
    }
    
    unsigned long end = self.count - 1;
    unsigned long start = 0;
    unsigned long index ;

    if ([self[start] intValue] <= [self[end] intValue])
    {
        return self[start];
    }
    while (true) {
        index = (end - start) / 2 + start;
        if (start == end) {
            return self[index];
        }
        if ([self[index] intValue] > [self[end] intValue]) {
            start = index + 1;
        } else if ((index > 0) && ([self[index - 1] intValue] < [self[index] intValue])) {
            end = index - 1;
        } else if ((index > 0) && ([self[index - 1] intValue] > [self[index] intValue])) {
            return self[index];
        } else if ((index == 0) && ([self[index] intValue] < [self[index + 1] intValue])) {
            return self[index];
        } else if ((index == 0) && ([self[index] intValue] > [self[index + 1] intValue])) {
            return self[index + 1];
        }
    }
   return nil;
}

@end
