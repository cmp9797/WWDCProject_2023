//
//  StoryClimaxTwoPage.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct StoryPlot2View: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
//            Image("intro")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                Spacer()

                VStack (alignment: .center){
                    Image("story-plot")
                        .resizable()
                        .scaledToFit()
                    
                    VStack (alignment: .leading){
                        Text("“Welcome to the Symphony of Gamelan”.. Looks like we are in Gamelan's World now.  But, how to get back to our world? Hmm, let's just walk along the path...")
                            .font(.title)
                    }
                }
                
                Spacer()

                NavigationLink(destination: AboutGamelanView()){
                    Image(systemName: "arrowshape.forward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("myBrown"))
                        .opacity(1)
                        .frame(width: 70, height: 70)

                }
                .buttonStyle(.plain)
                .padding(.top, 10)

            }
            .padding([.horizontal, .top], 50)
            .padding(.bottom, 20)

        }
        .frame(maxWidth: .infinity)
        .foregroundColor(Color("myBrown"))
        .background(Color("myDarkBrown"))
    
    }
}

struct StoryClimaxTwoPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryPlot2View()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
