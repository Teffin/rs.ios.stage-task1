#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (NSNumber *player in playerArray) {
        int place = 1;
        long tempNum = -1;
       for (NSString *rank in rankedArray)  {
           if ([player intValue] >= [rank intValue]) {
               break ;
           }
           if (tempNum != [rank intValue]){
              place += 1;
           }
           tempNum = [rank intValue];
       }
        [array addObject:@(place)];
    }
    return array;
}

@end
