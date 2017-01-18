//
//  AMZConstants.swift
//  CadaverLog
//
//  Created by Dave on 1/18/17.
//  Copyright © 2017 Dave. All rights reserved.
//

import Foundation

import AWSCore

class AMZConstants {
    
    static let COGNITO_REGIONTYPE = AWSRegionType.euWest1 // Replace by your own
    static let COGNITO_IDENTITY_POOL_ID = "YOUR_COGNITO_IDENTITY_POOL_ID" // Replace by your own
    static let DEFAULT_SERVICE_REGION = AWSRegionType.euWest1 // Replace by your own
    static let S3BUCKET_USERS = "YOUR_S3BUCKET_USERS" // Replace by your own
    static let DYNAMODB_USERS_TABLE = "YOUR_DYNAMODB_USERS_TABLE" // Replace by your own
    
}
