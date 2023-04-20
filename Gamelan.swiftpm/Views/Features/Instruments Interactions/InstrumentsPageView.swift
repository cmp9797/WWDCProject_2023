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
    @State private var instrument: Instrument = ModelData().instrumentsData[0]
    
    var body: some View {
       
        ZStack(alignment: .bottomTrailing) {
            VStack (alignment: .trailing){
                VStack {
                    Spacer()

                    HStack {
                        Spacer()

                        //intstrument: kenong
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 8)
                        }

                        Spacer()

                        VStack (alignment: .leading){

                            HStack {
                                //intstrument: gong
                                VStack {
                                    InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 11)
                                }
                            }
                            HStack {
                                Spacer()
                                    .frame(maxWidth: 25)

                                //music notation explaination
                                Image("alat-paper")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)

                                //intstrument: kendang
                                VStack {
                                    InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 6)
                                }

                            }
                        }

                        Spacer()

                    }

                    Spacer()
                        .frame(maxHeight: 25)

                    HStack {
                        //intstrument: saronPenerus
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 3)
                        }

                        Spacer()

                        //intstrument: saronBarung
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 2)
                        }

                        Spacer()

                        //intstrument: demung
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 4)
                        }

                        Spacer()

                        //intstrument: slenthem
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 5)
                        }
                    }

                    Spacer()
                        .frame(maxHeight: 25)

                    HStack {
                        //intstrument: bonangBarung
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 0)
                        }

                        Spacer()

                        //intstrument: bonangPenerus
                        VStack {
                            InstrumentComponent(tappedInstrument: $tappedInstrument, isPresented: $isPresented, instrument: $instrument, id: 1)
                        }
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
                            .frame(width: 70, height: 70)
                    }
                    .buttonStyle(.plain)
                    .padding(.top, 10)
                }


            }
            .padding([.horizontal], 50)
            .padding(.top, 10)
            .padding(.bottom, 20)

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
