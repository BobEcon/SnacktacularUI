//
//  LoginView.swift
//  SnacktacularUI
//
//  Created by Robert Beachill on 12/06/2025.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
            
            Group {
                TextField("email", text: $email)
                SecureField("password", text: $password)
            }
            .textFieldStyle(.roundedBorder)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray.opacity(0.5), lineWidth: 2)
            }
            
            HStack {
                Button("Sign Up") {
                    //TODO: Action here
                }
                .padding(.trailing)
                Button("Log In") {
                    //TODO: Action here
                }
                .padding(.leading)
            }
            .buttonStyle(.borderedProminent)
            .tint(.snack)
            .font(.title2)
            .padding(.top)
        }
        .padding()
        .alert(alertMessage, isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("😡 LOGIN ERROR: \(error.localizedDescription)")
                alertMessage = "😡 LOGIN ERROR: \(error.localizedDescription)"
                showingAlert = true
            } else {
                print("😎 Registration success!")
                //TODO: Load ListView
            }
        }
    }
}

#Preview {
    LoginView()
}
