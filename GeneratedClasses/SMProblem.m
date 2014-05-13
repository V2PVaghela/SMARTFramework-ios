/*
 SMProblem.m
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

#import "SMProblem.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMProblem


#pragma mark - Synthesized Lazy Getter
@synthesize belongsTo = _belongsTo;

- (SMMedicalRecord *)belongsTo
{
	if (!_belongsTo) {
		
		// get the "belongsTo" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMMedicalRecord *obj = [SMMedicalRecord newWithSubject:rslt.object inModel:self.inModel];
		_belongsTo = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _belongsTo) {
		return nil;
	}
	
	return _belongsTo;
}

- (void)setBelongsTo:(SMMedicalRecord *)belongsTo
{
	if (belongsTo != _belongsTo) {
		RedlandNode *predicate = (belongsTo || _belongsTo) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"] : nil;
		if (_belongsTo) {
			[self.inModel removeSubmodel:_belongsTo.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_belongsTo = belongsTo;
		
		if (_belongsTo) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_belongsTo.subject]];
			[self.inModel addSubmodel:_belongsTo.model];
		}
	}
}

@synthesize encounters = _encounters;

- (NSArray *)encounters
{
	if (!_encounters) {
		
		// get the "encounters" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encounters"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMEncounter *newItem = [SMEncounter newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_encounters = [arr copy];
	}
	return _encounters;
}

- (void)setEncounters:(NSArray *)encounters
{
	if (encounters != _encounters) {
		RedlandNode *predicate = (encounters || _encounters) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#encounters"] : nil;
		if (_encounters) {
			for (SMEncounter *item in _encounters) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_encounters = [encounters copy];
		
		if (_encounters) {
			for (SMEncounter *item in _encounters) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}

@synthesize endDate = _endDate;

- (NSString *)endDate
{
	if (!_endDate) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#endDate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_endDate = [rslt.object literalValue];
	}
	return _endDate;
}

- (void)setEndDate:(NSString *)endDate
{
	if (endDate != _endDate) {
		RedlandNode *predicate = (endDate || _endDate) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#endDate"] : nil;
		if (_endDate) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_endDate = [endDate copy];
		
		if (_endDate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_endDate nodeValue]]];
		}
	}
}

@synthesize notes = _notes;

- (NSString *)notes
{
	if (!_notes) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#notes"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_notes = [rslt.object literalValue];
	}
	return _notes;
}

- (void)setNotes:(NSString *)notes
{
	if (notes != _notes) {
		RedlandNode *predicate = (notes || _notes) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#notes"] : nil;
		if (_notes) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_notes = [notes copy];
		
		if (_notes) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_notes nodeValue]]];
		}
	}
}

@synthesize problemName = _problemName;

- (SMCodedValue *)problemName
{
	if (!_problemName) {
		
		// get the "problemName" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#problemName"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_problemName = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _problemName) {
		return nil;
	}
	
	return _problemName;
}

- (void)setProblemName:(SMCodedValue *)problemName
{
	if (problemName != _problemName) {
		RedlandNode *predicate = (problemName || _problemName) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#problemName"] : nil;
		if (_problemName) {
			[self.inModel removeSubmodel:_problemName.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_problemName = problemName;
		
		if (_problemName) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_problemName.subject]];
			[self.inModel addSubmodel:_problemName.model];
		}
	}
}

@synthesize problemStatus = _problemStatus;

- (SMCodedValue *)problemStatus
{
	if (!_problemStatus) {
		
		// get the "problemStatus" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#problemStatus"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_problemStatus = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _problemStatus) {
		return nil;
	}
	
	return _problemStatus;
}

- (void)setProblemStatus:(SMCodedValue *)problemStatus
{
	if (problemStatus != _problemStatus) {
		RedlandNode *predicate = (problemStatus || _problemStatus) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#problemStatus"] : nil;
		if (_problemStatus) {
			[self.inModel removeSubmodel:_problemStatus.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_problemStatus = problemStatus;
		
		if (_problemStatus) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_problemStatus.subject]];
			[self.inModel addSubmodel:_problemStatus.model];
		}
	}
}

@synthesize startDate = _startDate;

- (NSString *)startDate
{
	if (!_startDate) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#startDate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_startDate = [rslt.object literalValue];
	}
	return _startDate;
}

- (void)setStartDate:(NSString *)startDate
{
	if (startDate != _startDate) {
		RedlandNode *predicate = (startDate || _startDate) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#startDate"] : nil;
		if (_startDate) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_startDate = [startDate copy];
		
		if (_startDate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_startDate nodeValue]]];
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#Problem";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/problems/{uuid}";
}


@end