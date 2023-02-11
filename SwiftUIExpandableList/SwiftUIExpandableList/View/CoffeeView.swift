//
//  CoffeeView.swift
//  SwiftUIExpandableList
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct CoffeeView: View {
    var body: some View {
        List {
            ForEach(sampleMenuItems) { menuItem in
                Section(header:
                HStack {
                    Text(menuItem.name)
                        .font(.title3)
                        .fontWeight(.heavy)
                    Image(menuItem.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                .padding(.vertical)
                ){
                    OutlineGroup(menuItem.subMenuItems ?? [MenuItem](), children: \.subMenuItems) {  item in
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
                }
            }
        }
    }
}

struct CoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeView()
    }
}
