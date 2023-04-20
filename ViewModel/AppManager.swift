//
//  File.swift
//  
//
//  Created by Celine Margaretha on 19/04/23.
//

import Foundation

public class AppManager {
    private let instruments = ModelData().instrumentsData
    private var allColouredValue = false
    
    func setAllColouredValue(_ status:Bool) {
        allColouredValue = status
    }
    
    func getAllColouredValue() -> Bool {
        return allColouredValue
    }
    
    func getInstrument(_ name:String) {
        
    }
}
