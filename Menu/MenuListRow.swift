//
//  MenuListRow.swift
//  Menu
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-07.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
       
        HStack {
            
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
            
        }.listRowSeparator(.hidden)
            .listRowBackground(
                Color.brown
                    .opacity(0.1)
            )
    }
}

#Preview {
    MenuListRow(
        item: MenuItem(
            name: "test item",
            price: "20.00",
            imageName: "tako-sushi"
        )
    )
}
