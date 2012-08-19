/*
 SMUser.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2012-08-18.
 Copyright (c) 2012 CHIP, Boston Children's Hospital
 
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

#import "SMUser.h"
#import "SMARTDocuments.h"

#import <RedlandModel-Convenience.h>
#import <RedlandNode-Convenience.h>
#import <RedlandStatement.h>
#import <RedlandStreamEnumerator.h>


@implementation SMUser


#pragma mark - Synthesized Lazy Getter
- (NSArray *)tel
{
	if (!_tel) {
		
		// get the "tel" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#tel"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// create a model containing the statements
			RedlandModel *newModel = [[RedlandModel alloc] initWithStorage:self.model.storage];
			RedlandStatement *newStmt = [RedlandStatement statementWithSubject:rslt.object predicate:nil object:nil];
			RedlandStreamEnumerator *newStream = [self.model enumeratorOfStatementsLike:newStmt];
			
			// add statements to the new model
			@try {
				for (RedlandStatement *stmt in newStream) {
					[newModel addStatement:stmt];
				}
			}
			@catch (NSException *e) {
				DLog(@"xx>  %@ -- %@", [e reason], [e userInfo]);
				[self.model print];
			}
			
			SMTel *newItem = [SMTel newWithModel:newModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.tel = arr;
	}
	return _tel;
}

- (SMName *)n
{
	if (!_n) {
		
		// get the "n" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#n"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create a model containing the statements
		RedlandModel *newModel = [[RedlandModel alloc] initWithStorage:self.model.storage];
		RedlandStatement *newStmt = [RedlandStatement statementWithSubject:rslt.object predicate:nil object:nil];
		RedlandStreamEnumerator *newStream = [self.model enumeratorOfStatementsLike:newStmt];
		
		// add statements to the new model
		@try {
			for (RedlandStatement *stmt in newStream) {
				[newModel addStatement:stmt];
			}
		}
		@catch (NSException *e) {
			DLog(@"xx>  %@ -- %@", [e reason], [e userInfo]);
			[self.model print];
		}
		
		self.n = [SMName newWithModel:newModel];
	}
	return _n;
}

- (NSArray *)adr
{
	if (!_adr) {
		
		// get the "adr" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#adr"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// create a model containing the statements
			RedlandModel *newModel = [[RedlandModel alloc] initWithStorage:self.model.storage];
			RedlandStatement *newStmt = [RedlandStatement statementWithSubject:rslt.object predicate:nil object:nil];
			RedlandStreamEnumerator *newStream = [self.model enumeratorOfStatementsLike:newStmt];
			
			// add statements to the new model
			@try {
				for (RedlandStatement *stmt in newStream) {
					[newModel addStatement:stmt];
				}
			}
			@catch (NSException *e) {
				DLog(@"xx>  %@ -- %@", [e reason], [e userInfo]);
				[self.model print];
			}
			
			SMAddress *newItem = [SMAddress newWithModel:newModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.adr = arr;
	}
	return _adr;
}

- (NSString *)role
{
	if (!_role) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#role"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.role = [rslt.object literalValue];
	}
	return _role;
}

- (NSString *)bday
{
	if (!_bday) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#bday"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.bday = [rslt.object literalValue];
	}
	return _bday;
}

- (NSString *)preferredLanguage
{
	if (!_preferredLanguage) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#preferredLanguage"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.preferredLanguage = [rslt.object literalValue];
	}
	return _preferredLanguage;
}

- (NSArray *)email
{
	if (!_email) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#email"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			NSString *newItem = [rslt.object literalValue];		// only works for NSString for now
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.email = arr;
	}
	return _email;
}

- (NSString *)department
{
	if (!_department) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#department"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.department = [rslt.object literalValue];
	}
	return _department;
}

- (NSString *)ethnicity
{
	if (!_ethnicity) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#ethnicity"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.ethnicity = [rslt.object literalValue];
	}
	return _ethnicity;
}

- (NSString *)race
{
	if (!_race) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#race"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.race = [rslt.object literalValue];
	}
	return _race;
}

- (NSString *)gender
{
	if (!_gender) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://xmlns.com/foaf/0.1/gender"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:nil predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.gender = [rslt.object literalValue];
	}
	return _gender;
}


@end