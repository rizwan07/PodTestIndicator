#import "Pair.h"

@implementation Pair

@synthesize first = _first;
@synthesize second = _second;

- (BOOL)isEqual:(id)object {
	Pair *other = (Pair *)object;
	
	if (self == other)
		return YES;
	
	if (![object isKindOfClass:[self class]])
		return NO;
	
	return [self.first isEqual:other.first] && [self.second isEqual:other.second];
}

- (NSComparisonResult)compare:(Pair *)other {
	if ([self.first respondsToSelector:@selector(compare:)] && [other.first respondsToSelector:@selector(compare:)])
		return [self.first compare:other.first];
	
	return NSOrderedSame;
}

- (Pair *)copyWithZone:(NSZone *)zone {
	Pair *rc = [[Pair allocWithZone:zone] init];

	rc.first = self.first;
	rc.second = self.second;
	return rc;
}

#pragma mark -
#pragma mark Pair

+ (Pair *)build {
	return [[self alloc] init];
}

+ (Pair *)buildWithFirst:(id)first second:(id)second {
	Pair *rc = [[self alloc] init];
	
	rc.first = first;
	rc.second = second;
	return rc;
}

@end
