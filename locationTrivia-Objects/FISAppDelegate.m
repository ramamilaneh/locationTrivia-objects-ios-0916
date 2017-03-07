//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)allLocationNames {
    NSMutableArray *locationNames = [NSMutableArray array];
    for (FISLocation *location in self.locations) {
        [locationNames addObject:location.name];
    }
    return locationNames;
}

-(FISLocation *)locationNamed:(NSString *)name {
    for (FISLocation *location in self.locations) {
        if ([location.name isEqualToString:name] ) {
            return location;
        }
    }
    return nil;
//    NSPredicate *matchedName = [NSPredicate predicateWithFormat:@"name == %@",name];
//    NSArray *results = [self.locations filteredArrayUsingPredicate:matchedName];
//    if (results.count == 0) {
//        return nil;
//    }
//    return results[0];
}

-(NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    CGFloat maxLat = latitude + margin;
    CGFloat minLat = latitude - margin;
    CGFloat maxLng = longitude + margin;
    CGFloat minLng = longitude - margin;
    
    NSMutableArray *locationsInRange = [[NSMutableArray alloc] init];
    for (FISLocation *location in self.locations) {
        BOOL latInRange = location.latitude <= maxLat && location.latitude >= minLat;
        BOOL lngInRange = location.longitude <= maxLng && location.longitude >= minLng;
        if (latInRange && lngInRange) {
            [locationsInRange addObject:location];
        }
    }
    return locationsInRange;
}

@end
