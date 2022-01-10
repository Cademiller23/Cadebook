//
//  LoginView.swift
//  Cadebook
//
//  Created by Cade Miller on 1/6/22.
//

import SwiftUI

struct LoginView: View {
    @State var password: String = ""
    @State var email: String = ""
    var body: some View {
        VStack {
        TextField("email text field", text: $email, prompt: Text("Email"))
            .padding(20.0)
        SecureField("Password text field", text: $password, prompt: Text("Password"))
        .padding(20.0)
            Button("Login", action: login)
        }
    }
    func login() {
        print("didselectlogin")
    }
}
struct Loginview_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
