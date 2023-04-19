//
//  File.swift
//  
//
//  Created by Celine Margaretha on 18/04/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var instrumentsData = [Instrument]()
    
    init(){
        loadData()
    }
    
    //load data from json
    func loadData()  {
        guard let jsonFile = Bundle.main.url(forResource: "gamelan_instruments", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try! Data(contentsOf: jsonFile)
        let instruments = try! JSONDecoder().decode([Instrument].self, from: data)
        self.instrumentsData = instruments
    }
     
}
