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

                VStack {
                    Text("“Welcome to the Symphony of Gamelan”.. Looks like we are in Gamelan's World now.  But, how to get back to our world? Hmm, let's just follow the path and visit them one by one then..")
                        .font(.title)
                }
                
                Spacer()

                NavigationLink(destination: StoryEpilogue1View()){
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

struct StoryClimaxTwoPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryPlot2View()            .previewInterfaceOrientation(.landscapeLeft)

    }
}
