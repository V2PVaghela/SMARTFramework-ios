/*
 SMAllergy.m
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

#import "SMAllergy.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMAllergy


#pragma mark - Synthesized Lazy Getter
@synthesize allergicReaction = _allergicReaction;

- (SMCodedValue *)allergicReaction
{
	if (!_allergicReaction) {
		
		// get the "allergicReaction" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#allergicReaction"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_allergicReaction = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _allergicReaction) {
		return nil;
	}
	
	return _allergicReaction;
}

- (void)setAllergicReaction:(SMCodedValue *)allergicReaction
{
	if (allergicReaction != _allergicReaction) {
		RedlandNode *predicate = (allergicReaction || _allergicReaction) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#allergicReaction"] : nil;
		if (_allergicReaction) {
			[self.inModel removeSubmodel:_allergicReaction.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_allergicReaction = allergicReaction;
		
		if (_allergicReaction) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_allergicReaction.subject]];
			[self.inModel addSubmodel:_allergicReaction.model];
		}
	}
}

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

@synthesize category = _category;

- (SMCodedValue *)category
{
	if (!_category) {
		
		// get the "category" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#category"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_category = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _category) {
		return nil;
	}
	
	return _category;
}

- (void)setCategory:(SMCodedValue *)category
{
	if (category != _category) {
		RedlandNode *predicate = (category || _category) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#category"] : nil;
		if (_category) {
			[self.inModel removeSubmodel:_category.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_category = category;
		
		if (_category) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_category.subject]];
			[self.inModel addSubmodel:_category.model];
		}
	}
}

@synthesize drugAllergen = _drugAllergen;

- (SMCodedValue *)drugAllergen
{
	if (!_drugAllergen) {
		
		// get the "drugAllergen" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#drugAllergen"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_drugAllergen = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _drugAllergen) {
		return nil;
	}
	
	return _drugAllergen;
}

- (void)setDrugAllergen:(SMCodedValue *)drugAllergen
{
	if (drugAllergen != _drugAllergen) {
		RedlandNode *predicate = (drugAllergen || _drugAllergen) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#drugAllergen"] : nil;
		if (_drugAllergen) {
			[self.inModel removeSubmodel:_drugAllergen.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_drugAllergen = drugAllergen;
		
		if (_drugAllergen) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_drugAllergen.subject]];
			[self.inModel addSubmodel:_drugAllergen.model];
		}
	}
}

@synthesize drugClassAllergen = _drugClassAllergen;

- (SMCodedValue *)drugClassAllergen
{
	if (!_drugClassAllergen) {
		
		// get the "drugClassAllergen" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#drugClassAllergen"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_drugClassAllergen = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _drugClassAllergen) {
		return nil;
	}
	
	return _drugClassAllergen;
}

- (void)setDrugClassAllergen:(SMCodedValue *)drugClassAllergen
{
	if (drugClassAllergen != _drugClassAllergen) {
		RedlandNode *predicate = (drugClassAllergen || _drugClassAllergen) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#drugClassAllergen"] : nil;
		if (_drugClassAllergen) {
			[self.inModel removeSubmodel:_drugClassAllergen.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_drugClassAllergen = drugClassAllergen;
		
		if (_drugClassAllergen) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_drugClassAllergen.subject]];
			[self.inModel addSubmodel:_drugClassAllergen.model];
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

@synthesize otherAllergen = _otherAllergen;

- (SMCodedValue *)otherAllergen
{
	if (!_otherAllergen) {
		
		// get the "otherAllergen" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#otherAllergen"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_otherAllergen = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _otherAllergen) {
		return nil;
	}
	
	return _otherAllergen;
}

- (void)setOtherAllergen:(SMCodedValue *)otherAllergen
{
	if (otherAllergen != _otherAllergen) {
		RedlandNode *predicate = (otherAllergen || _otherAllergen) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#otherAllergen"] : nil;
		if (_otherAllergen) {
			[self.inModel removeSubmodel:_otherAllergen.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_otherAllergen = otherAllergen;
		
		if (_otherAllergen) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_otherAllergen.subject]];
			[self.inModel addSubmodel:_otherAllergen.model];
		}
	}
}

@synthesize severity = _severity;

- (SMCodedValue *)severity
{
	if (!_severity) {
		
		// get the "severity" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#severity"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_severity = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _severity) {
		return nil;
	}
	
	return _severity;
}

- (void)setSeverity:(SMCodedValue *)severity
{
	if (severity != _severity) {
		RedlandNode *predicate = (severity || _severity) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#severity"] : nil;
		if (_severity) {
			[self.inModel removeSubmodel:_severity.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_severity = severity;
		
		if (_severity) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_severity.subject]];
			[self.inModel addSubmodel:_severity.model];
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
	return @"http://smartplatforms.org/terms#Allergy";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/allergies/{uuid}";
}


@end