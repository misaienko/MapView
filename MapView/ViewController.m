//
//  ViewController.m
//  MapView
//
//  Created by Admin on 22/05/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta =0.005;
    span.longitudeDelta =0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.00935149999999;
    location.longitude = -118.49746820000001;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    
    [self.mapView addAnnotation:ann];
    
    // ann - anotation
    
    locationManager.delegate =self;
    self.mapView.delegate = self;
    locationManager = [[CLLocationManager alloc]init];
    //function for location button    
    
}



- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=34.00935149999999,-118.49746820000001"] options:@{} completionHandler:nil];
    // locate the user
}

- (IBAction)locate:(id)sender {
    //once user select it / then grabing location manager and request authorisation , once it got autho - location updated
    [locationManager requestWhenInUseAuthorization];
    //function to allow using location
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    
    // function shows blue dot on the map where you are, enables and shows it.
    
}

// Zoom where you are in the world
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    //this function trigers after location update and zoom in into certain location
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta =0.005;
    span.longitudeDelta =0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = userLocation.coordinate.latitude;
    //latitude value- where user is currently
    location.longitude = userLocation.coordinate.longitude;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
}


- (IBAction)hybrid:(id)sender {
    self.mapView.mapType = MKMapTypeHybrid;
}

- (IBAction)satellite:(id)sender {
    self.mapView.mapType =MKMapTypeSatellite;
}

- (IBAction)standard:(id)sender {
    self.mapView.mapType = MKMapTypeStandard;
}
@end
