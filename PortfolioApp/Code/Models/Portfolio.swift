//
//  Portfolio.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 23/08/21.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Educations: Identifiable {
    var id: String
    let collegeName: String
    let concentration: String
    let duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experience: [Experience]
    let educations: [Educations]
}
