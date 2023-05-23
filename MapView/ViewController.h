//
//  ViewController.h
//  MapView
//
//  Created by Admin on 22/05/2023.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    //function for locate button
}

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)standard:(id)sender;

- (IBAction)satellite:(id)sender;

- (IBAction)hybrid:(id)sender;

- (IBAction)locate:(id)sender;

- (IBAction)directions:(id)sender;








@end

