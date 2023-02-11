//
//  FaqView.swift
//  SwiftUIExpandableList
//
//  Created by Marble Interactive SL on 11/2/23.
//

import SwiftUI

struct FaqView: View {
    @State var showContent = Array(repeating: false, count: dataSource.count)
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dataSource.indices, id: \.self) { index in
                    DisclosureGroup(
                        isExpanded: $showContent[index],
                        content: {
                            Text(dataSource[index].answer)
                                .font(.body)
                                .fontWeight(.light)
                        },
                        label: {
                            Text("\(index + 1). \(dataSource[index].question)")
                                .font(.body)
                                .bold()
                        }
                    )
                    .padding()
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("FAQ")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        if (showContent.contains(true)) {
                            showContent = showContent.map({ _ in false })
                        } else {
                            showContent = showContent.map({ _ in true })
                        }
                       
                    }, label: {
                        if (showContent.contains(true)) {
                            Text("Close all")
                        } else {
                            Text("Show all")
                        }
                       
                    })
                }
            }
        }

    }
}

struct FaqView_Previews: PreviewProvider {
    static var previews: some View {
        FaqView()
    }
}
