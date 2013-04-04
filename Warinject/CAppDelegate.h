//
//  CAppDelegate.h
//  Warinject
//
//  Created by IX on 2013-04-03.
//
//

#import <Cocoa/Cocoa.h>

@interface CAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)UpdateWSWPath:(id)sender;
- (IBAction)UpdateLDPath:(id)sender;
- (IBAction)Inject:(id)sender;

@property (nonatomic, retain) NSString *WSWPath;
@property (nonatomic, retain) NSString *LDPath;

@end
