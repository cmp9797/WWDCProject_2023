//
//  StoryClosing1View.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct StoryEpilogue1View: View {
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
//            Image("intro")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                Spacer()

                VStack {
                    Text("Wow, we're backk!! We realize that Indonesia have such a wonderful musical instruments! Can't wait to get back there and try to play it!")
                        .font(.title)
                }
                
                Spacer()

                NavigationLink(destination: StoryEpilogue2View()){
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

struct StoryEpilogue1View_Previews: PreviewProvider {
    static var previews: some View {
        StoryEpilogue1View()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}

