//
//  RemoteService.swift
//  CadaverLog
//
//  Created by Dave on 1/18/17.
//  Copyright © 2017 Dave. All rights reserved.
//

import Foundation

typealias UserDataResultBlock = (_ userData: UserData?, _ error: NSError?) -> Void
typealias ErrorResultBlock = (_ error: NSError?) -> Void

protocol RemoteService {
    
    var currentUser: UserData? {get}
    
    func createCurrentUser(_ userData: UserData? , completion: @escaping ErrorResultBlock)
    
    func updateCurrentUser(_ userData: UserData, completion: @escaping ErrorResultBlock)
    
    func fetchCurrentUser(_ completion: @escaping UserDataResultBlock )
    
}

