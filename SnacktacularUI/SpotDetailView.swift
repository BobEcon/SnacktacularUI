//
//  SpotDetailView.swift
//  SnacktacularUI
//
//  Created by Robert Beachill on 15/07/2025.
//

import SwiftUI

struct SpotDetailView: View {
    @State var spot: Spot // pass in value from ListView
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Group {
                TextField("name", text: $spot.name)
                    .font(.title)
                TextField("address", text: $spot.address)
                    .font(.title2)
            }
            .textFieldStyle(.roundedBorder)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray.opacity(0.5), lineWidth: 2)
            }
            .padding(.horizontal)
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    //TODO: Add save code here
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SpotDetailView(spot: Spot())
    }
}
