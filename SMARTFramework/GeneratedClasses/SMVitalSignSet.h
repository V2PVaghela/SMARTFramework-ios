/*
 SMVitalSignSet.h
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

@class SMEncounter, SMMedicalRecord, SMVitalSign, SMBloodPressure;


/**
 *	A class representing "http://smartplatforms.org/terms#VitalSignSet" objects, generated from smart.owl.
 */
@interface SMVitalSignSet : SMDocument

/// Representing http://smartplatforms.org/terms#headCircumference
@property (nonatomic, strong) SMVitalSign *headCircumference;

/// Representing http://smartplatforms.org/terms#heartRate
@property (nonatomic, strong) SMVitalSign *heartRate;

/// Representing http://smartplatforms.org/terms#bodyMassIndex
@property (nonatomic, strong) SMVitalSign *bodyMassIndex;

/// Representing http://smartplatforms.org/terms#weight
@property (nonatomic, strong) SMVitalSign *weight;

/// Representing http://smartplatforms.org/terms#temperature
@property (nonatomic, strong) SMVitalSign *temperature;

/// Representing http://smartplatforms.org/terms#respiratoryRate
@property (nonatomic, strong) SMVitalSign *respiratoryRate;

/// Representing http://smartplatforms.org/terms#bloodPressure
@property (nonatomic, strong) SMBloodPressure *bloodPressure;

/// Representing http://smartplatforms.org/terms#encounter
@property (nonatomic, strong) SMEncounter *encounter;

/// Representing http://smartplatforms.org/terms#height
@property (nonatomic, strong) SMVitalSign *height;

/// Representing http://smartplatforms.org/terms#oxygenSaturation
@property (nonatomic, strong) SMVitalSign *oxygenSaturation;

/// Representing http://smartplatforms.org/terms#belongsTo
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://purl.org/dc/terms/date
@property (nonatomic, copy) NSString *date;


@end