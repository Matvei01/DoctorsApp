//
//  Extension+Text.swift
//  DoctorsApp
//
//  Created by Matvei Khlestov on 29.07.2024.
//

import SwiftUI

extension Text {
    func headerStyle(size: CGFloat) -> some View {
        self.font(.system(size: size, weight: .bold))
    }
    
    func boldFont(size: CGFloat, color: Color? = nil) -> some View {
        self.font(.system(size: size, weight: .bold))
            .foregroundStyle(color ?? Color.black)
    }
    
    func mediumFont() -> some View {
        self.font(.system(size: 14, weight: .medium))
            .foregroundStyle(.appGray)
    }
}
