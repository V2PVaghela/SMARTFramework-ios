/*
 SMLabPanel.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-02-20.
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

#import "SMLabPanel.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMLabPanel


#pragma mark - Synthesized Lazy Getter
- (SMMedicalRecord *)belongsTo
{
	if (!_belongsTo) {
		
		// get the "belongsTo" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMMedicalRecord *obj = [SMMedicalRecord newWithSubject:rslt.object inModel:self.model];
		self.belongsTo = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _belongsTo) {
		return nil;
	}
	
	return _belongsTo;
}

- (SMCodedValue *)labName
{
	if (!_labName) {
		
		// get the "labName" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labName"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.model];
		self.labName = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _labName) {
		return nil;
	}
	
	return _labName;
}

- (NSArray *)labResult
{
	if (!_labResult) {
		
		// get the "labResult" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#labResult"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMLabResult *newItem = [SMLabResult newWithSubject:rslt.object inModel:self.model];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.labResult = arr;
	}
	return _labResult;
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#LabPanel";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/lab_panels/{lab_panel_id}";
}


@end