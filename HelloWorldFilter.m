//
//  HelloWorldFilter.m
//  HelloWorld
//
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "HelloWorldFilter.h"

@implementation HelloWorldFilter

- (void) initPlugin
{
}

- (long) filterImage:(NSString*) menuName
{
	
    // get array of arrray of ROI in current series
    // This is a list of lists - there's a list for each image in the series
    // regardless of whether that image HAS any ROIs yet.
	NSArray *roiSeriesList = [ viewerController roiList ];
    int roiCount = 0;
    
    int i = 0;
    
    for(i = 0; i < [roiSeriesList count]; i++)
    {
        roiCount += [[roiSeriesList objectAtIndex:i] count];
    }
    
    
    NSAlert *myAlert = [NSAlert alertWithMessageText:@"Hello world!"
                                       defaultButton:@"Hello"
                                     alternateButton:nil
                                         otherButton:nil
                           informativeTextWithFormat:@"ROI count: %d", roiCount];
    [myAlert runModal];
	
	return 0;
}

@end
