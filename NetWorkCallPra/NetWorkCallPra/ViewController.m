//
//  ViewController.m
//  NetWorkCallPra
//
//  Created by ling toby on 8/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self netWorkCall];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)netWorkCall{
    //1 String
    
    NSString *URLString = @"https://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC";
    
    //1 URL
    NSURL *URL = [NSURL URLWithString:URLString];
    //2 Request
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    //3 Config
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    //4.URLSession
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
    //5.URLSessionTask or URLSessionUploadTask or URLSessionDownloadTask
    NSURLSessionTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data) {
            NSLog(@"%@ data .......",data.description);
        }
        
        if (error) {
            NSLog(@"%@ error .......",error.description);
        }
        
    }];
    [dataTask resume];

}

@end
