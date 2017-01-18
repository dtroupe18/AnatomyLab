//
//  UserData.swift
//  CadaverLog
//
//  Created by Dave on 1/18/17.
//  Copyright © 2017 Dave. All rights reserved.
//

import Foundation

protocol UserData {
    
    var userId: String?  {get set}
    
    var name: String?  {get set}
    
    var imageData: Data? {get set}
    
}

extension UserData  {
    
    func isEqualTo(_ other: UserData) -> Bool {
        return isDataEqualTo(other) && isImageDataEqualTo(other.imageData)
    }
    
    func isDataEqualTo(_ otherData: UserData) -> Bool {
        let dataEqual = self.userId == otherData.userId &&
            self.name == otherData.name
        return dataEqual
    }
    
    func isImageDataEqualTo(_ otherImageData: Data?) -> Bool {
        let imagesEqual = self.imageData == otherImageData ||
            (self.imageData != nil && otherImageData != nil && (self.imageData! == otherImageData!))
        return imagesEqual
    }
    
    
    mutating func updateWithData(_ other: UserData) {
        
        if self.userId != other.userId {
            self.userId = other.userId
        }
        
        if self.name != other.name {
            self.name = other.name
        }
        
        if !isImageDataEqualTo(other.imageData) {
            self.imageData = other.imageData
        }
    }
    
}

struct UserDataValue: UserData {
    
    var userId: String?
    
    var name: String?
    
    var imageData: Data?
    
}
