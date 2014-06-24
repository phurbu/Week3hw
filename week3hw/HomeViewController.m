//
//  HomeViewController.m
//  week3hw
//
//  Created by Phurbu Dolma on 6/20/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

- (void)onCustomPan:(UIPanGestureRecognizer *)panGestureRecognizer;
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *Headline;
@property (weak, nonatomic) IBOutlet UIScrollView *NewsScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *news;

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    self.NewsScrollView.
    contentSize =
    CGSizeMake(920, 256);
    
    // The onCustomPan: method will be defined in Step 3 below.
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onCustomPan:)];
    
    // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
    [self.view addGestureRecognizer:panGestureRecognizer];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)onCustomPan:(UIPanGestureRecognizer *)panGestureRecognizer {
    CGPoint point = [panGestureRecognizer locationInView:self.view];
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    
    if (panGestureRecognizer.state == UIGestureRecognizerStateBegan) {NSLog(@"Gesture began at: %@", NSStringFromCGPoint(point));
    } else if (panGestureRecognizer.state == UIGestureRecognizerStateChanged) {
        NSLog(@"Gesture changed: %@", NSStringFromCGPoint(point));
    } else if (panGestureRecognizer.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Gesture ended: %@", NSStringFromCGPoint(point));
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    }


@end
