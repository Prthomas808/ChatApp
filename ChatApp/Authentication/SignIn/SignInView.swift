//
//  SignInView.swift
//  ChatApp
//
//  Created by Pedro Thomas on 7/29/24.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                
                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.red)
                
                TextField("Enter Your Email", text: $email)
                    .modifier(TextfieldModifier())
                
                SecureField("Enter Your Password", text: $password)
                    .modifier(TextfieldModifier())
                
                Button("Forgot Password?") {
                    print("forgot password")
                }
                .foregroundStyle(.red)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Button {
                    print("log in")
                } label: {
                    Text("Sign In")
                }
                .modifier(AuthButtonModifier())
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundStyle(.primary)
                    
                    Button("Create Account") {
                        
                    }
                    .foregroundStyle(.red)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    SignInView().preferredColorScheme(.dark)
}

struct TextfieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .frame(width: UIScreen.main.bounds.width - 30)
    }
}

struct AuthButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 360, height: 40)
            .background(Color(.red))
            .cornerRadius(10)
    }
}

