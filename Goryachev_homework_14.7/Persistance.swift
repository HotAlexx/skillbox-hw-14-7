//
//  Persistance.swift
//  Goryachev_homework_14.7
//
//  Created by Alex Goriachev on 10.02.2022.
//

import Foundation

class Persistance{
    static let shared = Persistance()
    
    private let kFirstNameKey = "Persistance.kFirstNameKey"
    private let kLastNameKey = "Persistance.kLastNameKey"
    
    var firstName: String? {
        set { UserDefaults.standard.set(newValue, forKey: kFirstNameKey) }
        get { return UserDefaults.standard.string(forKey: kFirstNameKey) }
    }
    
    var lastName: String? {
        set { UserDefaults.standard.set(newValue, forKey: kLastNameKey) }
        get { return UserDefaults.standard.string(forKey: kLastNameKey) }
    }
}
