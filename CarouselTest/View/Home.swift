//
//  Home.swift
//  CarouselTest
//
//  Created by Jeff Mason on 2/4/21.
//

import SwiftUI

struct Home: View {
    @State var selected : Int = 0
    
    var body: some View {
        TabView(selection: $selected) {
            
            // Images...
            ForEach(1...4,id: \.self){ index in
                
                Image("p\(index)")
                    .resizable()
                    .frame(width: 400.0, height: 400.0)
                    .aspectRatio(contentMode: .fill)

                    .cornerRadius(15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}


