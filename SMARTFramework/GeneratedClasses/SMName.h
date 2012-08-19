/*
 SMName.h
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

#import "SMDocument.h"




/**
 *	A class representing "http://www.w3.org/2006/vcard/ns#Name" objects, generated from smart.owl.
 */
@interface SMName : SMDocument

/// Representing http://www.w3.org/2006/vcard/ns#honorific-prefix
@property (nonatomic, copy) NSArray *honorificPrefix;

/// Representing http://www.w3.org/2006/vcard/ns#additional-name
@property (nonatomic, copy) NSArray *additionalName;

/// Representing http://www.w3.org/2006/vcard/ns#family-name
@property (nonatomic, copy) NSString *familyName;

/// Representing http://www.w3.org/2006/vcard/ns#given-name
@property (nonatomic, copy) NSString *givenName;

/// Representing http://www.w3.org/2006/vcard/ns#honorific-suffix
@property (nonatomic, copy) NSArray *honorificSuffix;


@end