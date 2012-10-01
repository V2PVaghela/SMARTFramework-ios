/*
 SMRecord+Calls.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2012-10-01.
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

#import "SMRecord+Calls.h"
#import "SMARTObjects.h"


@implementation SMRecord(Calls)


#pragma mark - Synthesized Methods
/**
 *  Get Demographics for a patient.
 *  Makes a call to /records/{record_id}/demographics, originally named "get_demographics".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getDemographics:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/demographics", self.record_id];
	[self getObjectsOfClass:[SMDemographics class] from:path callback:callback];
}

/**
 *  Get Social History for a patient.
 *  Makes a call to /records/{record_id}/social_history, originally named "get_social_history".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getSocialHistory:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/social_history", self.record_id];
	[self getObjectsOfClass:[SMSocialHistory class] from:path callback:callback];
}

/**
 *  Get all Allergies and Allergy Exclusions for a patient.
 *  Makes a call to /records/{record_id}/allergies/, originally named "get_allergies".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getAllergies:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/allergies/", self.record_id];
	[self getObjectsOfClass:[SMAllergy class] from:path callback:callback];
}

/**
 *  Get all Clinical Notes for a patient.
 *  Makes a call to /records/{record_id}/clinical_notes/, originally named "get_clinical_notes".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getClinicalNotes:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/clinical_notes/", self.record_id];
	[self getObjectsOfClass:[SMClinicalNote class] from:path callback:callback];
}

/**
 *  Get all Encounters for a patient.
 *  Makes a call to /records/{record_id}/encounters/, originally named "get_encounters".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getEncounters:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/encounters/", self.record_id];
	[self getObjectsOfClass:[SMEncounter class] from:path callback:callback];
}

/**
 *  Get all Fulfillments for a patient.
 *  Makes a call to /records/{record_id}/fulfillments/, originally named "get_fulfillments".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getFulfillments:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/fulfillments/", self.record_id];
	[self getObjectsOfClass:[SMFulfillment class] from:path callback:callback];
}

/**
 *  Get all Immunizations for a patient.
 *  Makes a call to /records/{record_id}/immunizations/, originally named "get_immunizations".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getImmunizations:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/immunizations/", self.record_id];
	[self getObjectsOfClass:[SMImmunization class] from:path callback:callback];
}

/**
 *  Get all Lab Panels for a patient.
 *  Makes a call to /records/{record_id}/lab_panels/, originally named "get_lab_panels".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getLabPanels:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/lab_panels/", self.record_id];
	[self getObjectsOfClass:[SMLabPanel class] from:path callback:callback];
}

/**
 *  Get all Lab Results for a patient.
 *  Makes a call to /records/{record_id}/lab_results/, originally named "get_lab_results".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getLabResults:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/lab_results/", self.record_id];
	[self getObjectsOfClass:[SMLabResult class] from:path callback:callback];
}

/**
 *  Get all Medications for a patient.
 *  Makes a call to /records/{record_id}/medications/, originally named "get_medications".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getMedications:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/medications/", self.record_id];
	[self getObjectsOfClass:[SMMedication class] from:path callback:callback];
}

/**
 *  Get all Problems for a patient.
 *  Makes a call to /records/{record_id}/problems/, originally named "get_problems".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getProblems:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/problems/", self.record_id];
	[self getObjectsOfClass:[SMProblem class] from:path callback:callback];
}

/**
 *  Get all Vital Sign Sets for a patient.
 *  Makes a call to /records/{record_id}/vital_sign_sets/, originally named "get_vital_sign_sets".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getVitalSignSets:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/vital_sign_sets/", self.record_id];
	[self getObjectsOfClass:[SMVitalSignSet class] from:path callback:callback];
}

/**
 *  Get one Lab Panel for a patient.
 *  Makes a call to /records/{record_id}/lab_panels/, originally named "get_lab_panel".
 *  @param callback A INSuccessRetvalueBlock block that will have a success flag and a user info dictionary containing the desired objects (key: INResponseArrayKey) if successful.
 */
- (void)getLabPanel:(INSuccessRetvalueBlock)callback
{
	NSString *path = [NSString stringWithFormat:@"/records/%@/lab_panels/", self.record_id];
	[self getObjectsOfClass:[SMLabPanel class] from:path callback:callback];
}


@end
