#import <Foundation/Foundation.h>

@interface Pair : NSObject<NSCopying>

@property (nonatomic, strong) id first;
@property (nonatomic, strong) id second;

+ (Pair *)build;
+ (Pair *)buildWithFirst:(id)first second:(id)second;

- (NSComparisonResult)compare:(Pair *)other;

@end
