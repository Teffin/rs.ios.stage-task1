#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    int num = [number intValue];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    if (num == 0) {
        [array addObject:[NSString stringWithFormat:@"%d",0]];
    }
    while (num) {
        [array addObject:[NSString stringWithFormat:@"%d",abs(num % 10)]];
        num = num / 10;
    }
    return array;
}

@end
