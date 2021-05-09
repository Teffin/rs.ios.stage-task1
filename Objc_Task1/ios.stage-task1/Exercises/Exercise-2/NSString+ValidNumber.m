#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    unsigned long len = [self length];
    if (len <= 0 || len > 100) {
        return false;
    }
    
    for(int i = 0; i < len; ++i) {
        char ch = [self characterAtIndex:i];
        if (ch < '0' || ch > '9') {
            return false;
        }
    }
    return true;
}
@end
