//
//  AFImageDownloaderInitializationTests.m
//  AFImageDownloader
//
//  Created by Ash Furrow on 2013-01-14.
//  Copyright 2013 Ash Furrow. All rights reserved.
//

#import "Kiwi.h"

#import "AFImageDownloader.h"

SPEC_BEGIN(AFImageDownloaderInitializationTests)

describe(@"Image Downloader", ^{
    NSString *urlString = @"http://example.com/image.jpeg";
    __block AFImageDownloader *imageDownloader;
    
    context(@"when newly created with class method", ^{
        
        beforeEach(^{
            imageDownloader = [AFImageDownloader imageDownloaderWithURLString:urlString];
        });
        
        it (@"should have the same url string", ^{
            [[imageDownloader.urlString should] equal:urlString];
        });
        
        it (@"should not be started", ^{
            [[theValue(imageDownloader.state) should] equal:@(AFImageDownloaderStateNotStarted)];
        });
        
    });
    
    context(@"when newly created with initializer method", ^{
        
        beforeEach(^{
            imageDownloader = [AFImageDownloader imageDownloaderWithURLString:urlString];
        });
        
        it (@"should have the same url string", ^{
            AFImageDownloader *imageDownloader = [[AFImageDownloader alloc] initWithURLString:urlString];
            [[imageDownloader.urlString should] equal:urlString];
        });
        
        it (@"should not be started", ^{
            [[theValue(imageDownloader.state) should] equal:@(AFImageDownloaderStateNotStarted)];
        });
        
    });
});

SPEC_END


