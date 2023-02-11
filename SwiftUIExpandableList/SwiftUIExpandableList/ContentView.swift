//
//  ContentView.swift
//  SwiftUIExpandableList
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(sampleMenuItems, children: \.subMenuItems) { item in
            HStack {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                Text(item.name)
                    .font(.system(.title3, design: .rounded))
                    .bold()
            }
            
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
