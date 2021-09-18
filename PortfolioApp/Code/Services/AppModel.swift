//
//  AppModel.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 23/08/21.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Rizky mashudi", role: "Software Developer", description: "Currently learning and interest with IOS development and related technology, Web Development and UI/UX research enthusiast, and I'm still foolish tho", location: "Batam, Indonesia", skills: [
        Skill(id: UUID().uuidString, skillName: "HTML", image: "arrow.left.and.right"),
        Skill(id: UUID().uuidString, skillName: "CSS", image: "photo"),
        Skill(id: UUID().uuidString, skillName: "JavaScript", image: "desktopcomputer"),
        Skill(id: UUID().uuidString, skillName: "Laravel", image: "pc"),
        Skill(id: UUID().uuidString, skillName: "swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "UI/UX", image: "hand.tap.fill")
    ], experience: [
        Experience(id: UUID().uuidString, companyName: "Asta game", role: "Junior Web Developer", duration: "September 2019 - Febuary 2021")
    ], educations: [
        Educations(id: UUID().uuidString, collegeName: "Batam state polytechnic", concentration: "Informatics Engineering", duration: "2017-2021"),
        Educations(id: UUID().uuidString, collegeName: "Apple Developer Academy C2", concentration: "developer", duration: "Febuary 2021 - Present")
    ])
}
