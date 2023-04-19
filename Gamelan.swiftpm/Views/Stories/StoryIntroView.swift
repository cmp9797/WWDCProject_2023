//
//  StoryIntroPage.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct StoryIntroView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
//            Image("intro")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                Spacer()

                VStack {
                    Text("Hello, Pelog's here! This is my lil bro called Slendro. Here we are together not doing anything in class... Slendro asked me to play magic coin scratch book that can show the hidden image by scratching the paper using a coin, so let’s play together!")
                        .font(.title)
                }
                
                Spacer()

                NavigationLink(destination: ScratchGamePageView()){
                    Image(systemName: "arrowshape.forward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("myBrown"))
                        .opacity(1)
                        .frame(width: 80, height: 80)

                }
                .buttonStyle(.plain)
                .padding(.top, 10)

            }
            .padding([.horizontal, .top], 50)
            .padding(.bottom, 10)

        }
        .frame(maxWidth: .infinity)
        .foregroundColor(Color("myBrown"))
        .background(Color("myDarkBrown"))
    }
}

struct StoryIntroPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryIntroView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
