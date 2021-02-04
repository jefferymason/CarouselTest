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
                
                // Geometry reader for parralax effect
                
                GeometryReader{ read in
                    
                    Image("p\(index)")
                        .resizable()
                        .frame(width: 400.0, height: 400.0)
                        .aspectRatio(contentMode: .fill)

                }
                .frame(height: 400.0)
                .cornerRadius(15)
                .padding(10)
                .background(Color.white)
                .cornerRadius(15)
                //
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5 )
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5 )
                // decreasing width by padding
                // so outer view only decreased
                // inner image will be full width
                .padding(.horizontal,25)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}


