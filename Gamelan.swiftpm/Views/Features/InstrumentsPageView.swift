//
//  PlayGamelanView.swift
//  Gamelan
//
//  Created by Celine Margaretha on 17/04/23.
//

import SwiftUI

struct InstrumentsPageView: View {
    @State private var isPresented = false
    @State private var tappedInstrument = 0
    @State private var instrument: Instrument!
    
    @ObservedObject var modelData = ModelData()
    
    //observable object
//    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            VStack (alignment: .trailing){
                VStack {
                    Spacer()

                    HStack {
                        Spacer()

                        //intstrument: kenong
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 8)

                        Spacer()

                        VStack (alignment: .leading){

                            HStack {
                                //intstrument: gong
                                InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 11)
                            }
                            HStack {
                                Spacer()
                                    .frame(maxWidth: 25)

                                //music notation explaination
                                Image("alat-paper")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)

                                //intstrument: kendang
                                InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 6)

                            }
                        }

                        Spacer()

                    }

                    Spacer()
                        .frame(maxHeight: 25)

                    HStack {
                        //intstrument: saronPenerus
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 3)

                        Spacer()

                        //intstrument: saronBarung
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 2)

                        Spacer()

                        //intstrument: demung
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 4)

                        Spacer()

                        //intstrument: slenthem
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 5)
                    }

                    Spacer()
                        .frame(maxHeight: 25)

                    HStack {
                        //intstrument: bonangBarung
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 0)

                        Spacer()

                        //intstrument: bonangPenerus
                        InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, id: 1)
                    }
                    .frame(maxHeight: 150)


                }

                Spacer()

                if tappedInstrument == 9 && isPresented == false{
                    NavigationLink(destination: StoryEpilogue1View()){
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


            }
            .padding([.horizontal], 50)
            .padding(.top, 20)
            .padding(.bottom, 10)

        }
//        .onAppear{
//            instruments = ModelData().instrumentsData
//            print(instruments)
//        }
        .frame(maxWidth: .infinity)
        .foregroundColor(Color("myBrown"))
        .background(Color("myDarkBrown"))
        
    }
}

struct PlayGamelanView_Previews: PreviewProvider {
    static var previews: some View {
//        InstrumentsPageView()
//            .environmentObject(ModelData())
//            .previewInterfaceOrientation(.landscapeLeft)
        InstrumentsPageView()
            .environmentObject(ModelData())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



//intstrument: kenong
//                        Button (action:{
//                            isPresented.toggle()
//                        }, label: {
//                            Image("alat-kenong")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                        })
//                        .hoverEffect(.lift)
//                        .sheet(isPresented: $isPresented, content: {
//                            InstrumentDetailView.init()
//                                .padding(.horizontal)
//                        })
