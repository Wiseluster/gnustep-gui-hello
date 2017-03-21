#import "Delegate.h"

int main(int argc, const char **argv)
{
    @autoreleasepool
    {
        Delegate *delegate = [[Delegate alloc] init];

        [NSApplication sharedApplication].delegate = delegate;
        int error = NSApplicationMain(argc, argv);

        [delegate release];

        return error;
    }
}
