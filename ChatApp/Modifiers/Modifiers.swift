//
//  Modifier.swift
//  ChatApp
//
//  Created by Pedro Thomas on 7/29/24.
//

import Foundation
import SwiftUI

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
