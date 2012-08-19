/*
 SMLabResult.h
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

@class SMCodedValue, SMMedicalRecord, SMQuantitativeResult, SMNarrativeResult, SMAttribution;


/**
 *	A class representing "http://smartplatforms.org/terms#LabResult" objects, generated from smart.owl.
 */
@interface SMLabResult : SMDocument

/// Representing http://smartplatforms.org/terms#labStatus
@property (nonatomic, strong) SMCodedValue *labStatus;

/// Representing http://smartplatforms.org/terms#labName
@property (nonatomic, strong) SMCodedValue *labName;

/// Representing http://smartplatforms.org/terms#belongsTo
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://smartplatforms.org/terms#abnormalInterpretation
@property (nonatomic, strong) SMCodedValue *abnormalInterpretation;

/// Representing http://smartplatforms.org/terms#quantitativeResult
@property (nonatomic, strong) SMQuantitativeResult *quantitativeResult;

/// Representing http://smartplatforms.org/terms#narrativeResult
@property (nonatomic, strong) SMNarrativeResult *narrativeResult;

/// Representing http://smartplatforms.org/terms#specimenCollected
@property (nonatomic, strong) SMAttribution *specimenCollected;

/// Representing http://smartplatforms.org/terms#accessionNumber
@property (nonatomic, copy) NSString *accessionNumber;

/// Representing http://smartplatforms.org/terms#notes
@property (nonatomic, copy) NSString *notes;


@end