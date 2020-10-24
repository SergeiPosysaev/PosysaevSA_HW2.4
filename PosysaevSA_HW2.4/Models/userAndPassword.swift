//
//  userAndPassword.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 23.10.2020.
//

struct UserAndPassword {
    let name: String
    let password: String    
}

extension UserAndPassword {
    static func setNameAndPassword() -> (String, String) {
        (userName: "Username", password: "Password")
    }
}
