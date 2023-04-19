//
//  StoryClimaxOnePage.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct StoryPlot1View: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
//            Image("intro")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                Spacer()

                VStack {
                    Text("Where are we??!! Why everything is all black and white? Why everything we passed through become colored? That’s strange…")
                        .font(.title)
                }
                
                Spacer()

                NavigationLink(destination: StoryPlot2View()){
                    Image(systemName: "arrowshape.forward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("myBrown"))
                        .opacity(1)

                }
                .buttonStyle(.plain)
                .frame(width: 50, height: 50)

            }
            .padding(50)

        }
        .frame(maxWidth: .infinity)
        .foregroundColor(Color("myBrown"))
        .background(Color("myDarkBrown"))
    }
    
}

struct StoryPlot1View_Previews: PreviewProvider {
    static var previews: some View {
        StoryPlot1View()            .previewInterfaceOrientation(.landscapeLeft)

    }
}
