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
            
            VStack (alignment: .trailing){
                
                VStack (alignment: .center){
                    Image("story-intro")
                        .resizable()
                        .scaledToFit()
                    
                    VStack (alignment: .leading) {
                        Text("Hello, Pelog's here! This is my lil bro called Slendro. Slendro asked me to play magic coin scratch book that can show the hidden image, so let’s play together!")
                            .font(.title)
                    }
                }
                
                Spacer()

                NavigationLink(destination: ScratchGamePageView()){
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

struct StoryIntroPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryIntroView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
