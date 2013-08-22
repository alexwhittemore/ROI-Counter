//
//  HelloWorldFilter.h
//  HelloWorld
//
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OsiriXAPI/PluginFilter.h>

@interface HelloWorldFilter : PluginFilter {

}

- (long) filterImage:(NSString*) menuName;

@end
