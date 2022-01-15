//
//  Loginresponse.swift
//  Cadebook
//
//  Created by Cade Miller on 1/13/22.
//

import SwiftUI

struct User: Codable {
    let email: String
    let id: String
    let lastName: String
    let profilePhotoUrl: String
    let createdAt: String
    let isEmailVerified: Bool
    let username: String
    let isAdmin: Bool
    let updatedAt: String
    let firstName: String
}
struct LoginResponse: Codable {

    let requireEmailVerification: Bool
    let id: String
    
    let token: String
    let user: User
    
    
}


