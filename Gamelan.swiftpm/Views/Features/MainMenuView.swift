//
//  MainMenuView.swift
//  Gamelan
//
//  Created by Celine Margaretha on 15/04/23.
//

import SwiftUI

struct MainMenuView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing) {
                Image("bg-mainMenu")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .trailing){
                    //Info
                    HStack{
                        Button {
    //                                    self.isPopUpOpen = true
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("myBrown"))
                                .background(Color.black)
                                .clipShape(Circle())
                                .opacity(1)
                        }.frame(width: 50, height: 50)
                    }
                    
                    Spacer()
                    
                    //Logo Button
                    NavigationLink(destination: StoryIntroView()){
                            VStack {
                                Image("logo")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode:.fill)
//                                    .edgesIgnoringSafeArea(.top)
//                                    .edgesIgnoringSafeArea(.bottom)
                                    .frame(
                                        width: 502,
                                        height: 376)
                            }
                            .padding(5)
                            .hoverEffect(.lift)
                        
                    }
                    
                    VStack (alignment: .center) {
                        Text("by Celine Margaretha Pranoto")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("myDarkBrown"))
                    }
                    .frame(maxWidth: .infinity)
                    
                }
                .padding([.top], 30)
                .padding([.bottom, .trailing], 50)
                
                
            }

        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden()
        
       
    }
}

struct MainMenuView_Previews_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
