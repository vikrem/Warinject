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

void alertUser() {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setAlertStyle:NSCriticalAlertStyle];
    [alert setMessageText:@"Warsow path or hack path invalid!"];
    [alert runModal];
}

- (IBAction)UpdateWSWPath:(id)sender {
    _WSWPath = [[sender URL] path];

    
}

- (IBAction)UpdateLDPath:(id)sender {
    
    _LDPath = [[sender URL] path];
    
}

- (IBAction)Inject:(id)sender {
    if(_LDPath == NULL || _WSWPath == NULL)
    {
        
        alertUser();
        return;
    }
    
    NSString *tempAppPath = [NSString stringWithFormat:@"%@/Contents/MacOS/Warsow SDL", _WSWPath];
    
    NSString *execPath = [NSString stringWithFormat:@"DYLD_INSERT_LIBRARIES=\"%@\" DYLD_FORCE_FLAT_NAMESPACE= \"%@\"",
                          _LDPath,
                          tempAppPath];
    
    system( [execPath UTF8String] );
}


@end
