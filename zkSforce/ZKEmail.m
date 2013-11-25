// Copyright (c) 2013 Simon Fell
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
// THE SOFTWARE.
//

#import "ZKEmail.h"
#import "zkEnvelope.h"

@implementation ZKEmail

@synthesize bccSender, emailPriority, replyTo, saveAsActivity, senderDisplayName, subject, useSignature;

-(void)dealloc {
	[emailPriority release];
	[replyTo release];
	[senderDisplayName release];
	[subject release];
	[super dealloc];
}
-(void)serializeToEnvelope:(ZKEnvelope *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addBoolElement:@"bccSender"      elemValue:self.bccSender];
	[env addElement:@"emailPriority"      elemValue:self.emailPriority];
	[env addElement:@"replyTo"            elemValue:self.replyTo];
	[env addBoolElement:@"saveAsActivity" elemValue:self.saveAsActivity];
	[env addElement:@"senderDisplayName"  elemValue:self.senderDisplayName];
	[env addElement:@"subject"            elemValue:self.subject];
	[env addBoolElement:@"useSignature"   elemValue:self.useSignature];
	[env endElement:elemName];
}
@end
