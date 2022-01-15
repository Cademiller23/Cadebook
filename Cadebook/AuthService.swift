//
//  AuthService.swift
//  Cadebook
//
//  Created by Cade Miller on 1/13/22.
//

import Foundation
import UIKit

class AuthService {
    init() {}
    func login(email: String, password: String) async throws {
        
        let url: URL = URL(string: "https://vapor-base.herokuapp.com/auth/login")!
        
        var request: URLRequest =  URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue(getBasicHeaderValue (email,password), forHTTPHeaderField: "Autherization")
      await  request.setValue(UIDevice.current.identifierForVendor?.uuidString, forHTTPHeaderField: "Device-ID")
        
        
        do {
            let(data, _) =  try await URLSession.shared.data(for: request)
            let loginRepsonse = try JSONDecoder().decode(LoginResponse.self, from: data)
            print(loginRepsonse)
        } catch {
            "Handle Error Here"
        }
    }
    func getBasicHeaderValue(_ email: String,
                             _ password: String) -> String {
        let emailPasswordString = "\(email):\(password)"
        let base64EncodedEmailPasswordString = Data(emailPasswordString.utf8).base64EncodedString()
        return "Basic \(base64EncodedEmailPasswordString)"
        
    }
    
}

