//
//  CAppDelegate.m
//  Warinject
//
//  Created by IX on 2013-04-03.
//
//

#import "CAppDelegate.h"



@implementation CAppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _WSWPath = _LDPath = NULL;
    
}

- (IBAction)UpdateWSWPath:(id)sender {
    _WSWPath = [[sender URL] path];

    
}

- (IBAction)UpdateLDPath:(id)sender {
    
    _LDPath = [[sender URL] path];
    
}

- (IBAction)Inject:(id)sender {
    NSLog(@"DYLD_INSERT_LIBRARIES=\"%@\" DYLD_FORCE_FLAT_NAMESPACE= %@", _WSWPath, _LDPath);
}


@end
