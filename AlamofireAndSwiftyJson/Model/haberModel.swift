//
//  haberModel.swift
//  AlamofireAndSwiftyJson
//
//  Created by tolga iskender on 11.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import Foundation

class HaberModel {
    var haberBaslik: String
    var haberTarih: String
    var haberResim: String
    var haberTitle: String
    var haberAciklama: String
    var totalResult : String
    
    init(haberBaslik: String, haberTarih: String, haberResim: String, haberTitle: String, haberAciklama: String, totalResult: String) {
        self.haberBaslik = haberBaslik
        self.haberTarih = haberTarih
        self.haberResim = haberResim
        self.haberTitle = haberTitle
        self.haberAciklama = haberAciklama
        self.totalResult = totalResult
    }
}
