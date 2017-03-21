#ifndef _Delegate_h_INCLUDED
#define _Delegate_h_INCLUDED 1

#import <AppKit/NSApplication.h>
#import <AppKit/NSWindow.h>

@interface Delegate : NSObject <NSApplicationDelegate, NSWindowDelegate>
{
    @private
        NSWindow *window;
}
@end

#endif /* _Delegate_h_INCLUDED */
