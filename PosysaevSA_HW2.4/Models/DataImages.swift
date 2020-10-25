//
//  DataImages.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 25.10.2020.
//

struct PhotosSet {
    var photos: [String]
}

extension PhotosSet {
    static func addNameImages() -> [String] {
        let arrImages = ["scr1", "scr2", "scr3", "scr4", "scr5", "scr6", "scr7",
                         "scr8", "scr9", "scr10", "scr11", "scr12", "scr13",
                         "scr14", "scr15"]
        return arrImages
    }
}
