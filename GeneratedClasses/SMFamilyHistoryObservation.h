/*
 SMFamilyHistoryObservation.h
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

#import "SMBaseDocument.h"

@class SMCodedValue, SMMedicalRecord, SMVitalSign;


/**
 *  A class representing "http://smartplatforms.org/terms#FamilyHistory" objects, generated from the SMART ontology.
 */
@interface SMFamilyHistoryObservation : SMBaseDocument

/// Representing http://smartplatforms.org/terms#aboutRelative as SMCodedValue
@property (nonatomic, strong) SMCodedValue *aboutRelative;

/// Representing http://www.w3.org/2006/vcard/ns#bday as NSString
@property (nonatomic, copy) NSString *bday;

/// Representing http://smartplatforms.org/terms#belongsTo as SMMedicalRecord
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://www.w3.org/2006/vcard/ns#deathdate as NSString
@property (nonatomic, copy) NSString *deathdate;

/// Representing http://smartplatforms.org/terms#hasProblem as SMCodedValue
@property (nonatomic, copy) NSArray *hasProblem;

/// Representing http://smartplatforms.org/terms#height as SMVitalSign
@property (nonatomic, strong) SMVitalSign *height;


@end