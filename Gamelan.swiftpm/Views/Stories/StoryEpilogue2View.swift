//
//  StoryEpilogue2View.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct StoryEpilogue2View: View {
    
    //pop navigation view
//    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
//            Image("intro")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                Spacer()

                VStack {
                    Text("Oh no.. It’s time to go home now.. Thanks for being through in our journey! See you soon!")
                        .font(.title)
                }
                
                Spacer()
            
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "house.fill")
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

struct StoryEpilogue2View_Previews: PreviewProvider {
    static var previews: some View {
        StoryEpilogue2View()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
