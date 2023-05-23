//
//  MapPin.h
//  MapView
//
//  Created by Admin on 22/05/2023.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface MapPin : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end


