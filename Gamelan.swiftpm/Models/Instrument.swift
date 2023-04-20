//
//  Instrument.swift
//  Gamelan
//
//  Created by Celine Margaretha on 18/04/23.
//

import Foundation

struct Instrument: Identifiable, Codable, Hashable {
    var id: Int
    var name: String = ""
    var isClicked: Bool = false
    var alias: String = ""
    var role: String = ""
    var form: String = ""
    var material: String = ""
    var notationSymbol: String = ""
    var desc: String = ""

    var imageBtn: String = ""
    var imageDetail: String = ""
}

//Codable -> interact w/ json
