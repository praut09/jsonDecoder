//
//  UserStruct.swift
//  JSONPostMethod
//
//  Created by sachin shinde on 03/01/20.
//  Copyright © 2020 sachin shinde. All rights reserved.
//

import Foundation
// MARK: - UserDatum
struct UserDatum: Codable {
    let id: Int
    let name, username, email: String
    let phone, website: String
}

typealias UserData = [UserDatum]
