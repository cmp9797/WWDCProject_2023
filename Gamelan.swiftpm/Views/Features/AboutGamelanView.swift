//
//  SwiftUIView.swift
//  
//
//  Created by Celine Margaretha on 20/04/23.
//

import SwiftUI

struct AboutGamelanView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            VStack (alignment: .trailing){
                
                VStack {
                    Text("About Gamelan")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                    
                    ScrollView() {
                        VStack (alignment: .leading) {
                            Text("Gamelan is a type of Indonesian percussion and is known as \"Gangsa\". Gangsa is the Javanese name for \"bronze\", which is the material of the metallophones")
                                .font(.system(size: 30))
                                .padding(.bottom)
                            
                            Text("Gamelan is a custom set of instruments that are pitched together to the same tuning system. Different from the other music elements that show notes, a gamelan’s notes use numbers. There are two types of musical scales that tune a gamelan ensemble:")
                                .font(.system(size: 30))
                                .padding(.bottom)
                            
                            
                            VStack (alignment: .leading) {
                                Text("Pelog")
                                    .font(.system(size: 35))
                                    .bold()
                                
                                Text("Pelog is a newer scale with seven uneven pitches. Pelog scales feels calm and relaxed.")
                                    .font(.system(size: 30))
                                    .padding(.bottom)
                                    .padding(.leading, 30)
                                
                            }
                            
                            VStack (alignment: .leading) {
                                Text("Slendro")
                                    .font(.system(size: 35))
                                    .bold()
                                
                                Text("Slendro is an older scale with five even pitches (pentatonic). Slendro shows an energetic and cheerful emotion.")
                                    .font(.system(size: 30))
                                    .padding(.bottom)
                                    .padding(.leading, 30)
                            }
                            
                            VStack {
                                Image("scales")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(Color("myBrown"))
                                    .opacity(1)
                            }
                        }
                        .padding(30)
                    }
                    .background(Color.brown.opacity(0.1))
                    .cornerRadius(20)
                    
                        
                }
                
                Spacer()

                NavigationLink(destination: InstrumentsPageView()){
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

struct AboutGamelanView_Previews: PreviewProvider {
    static var previews: some View {
        AboutGamelanView()            .previewInterfaceOrientation(.landscapeLeft)

    }
}
