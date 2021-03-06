/*
 SMContent.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-06-14.
 Copyright (c) 2013 CHIP, Boston Children's Hospital
 
 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.
 
 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

#import "SMContent.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMContent


#pragma mark - Synthesized Lazy Getter
@synthesize encoding = _encoding;

- (NSString *)encoding
{
	if (!_encoding) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encoding"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_encoding = [rslt.object literalValue];
	}
	return _encoding;
}

- (void)setEncoding:(NSString *)encoding
{
	if (encoding != _encoding) {
		RedlandNode *predicate = (encoding || _encoding) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encoding"] : nil;
		if (_encoding) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_encoding = [encoding copy];
		
		if (_encoding) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_encoding nodeValue]]];
		}
	}
}

@synthesize value = _value;

- (NSString *)value
{
	if (!_value) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#value"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_value = [rslt.object literalValue];
	}
	return _value;
}

- (void)setValue:(NSString *)value
{
	if (value != _value) {
		RedlandNode *predicate = (value || _value) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#value"] : nil;
		if (_value) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_value = [value copy];
		
		if (_value) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_value nodeValue]]];
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#Content";
}




@end
