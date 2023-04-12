//
//  searchwatersport.swift
//  applefound
//
//  Created by caren lorenza on 06/04/23.
//

import Foundation

struct Watersportmodel {
    let id: Int
    let name: String
    let image: String
    let description: String
    let owner: String
    let ownerimage: String
}
let watersportList = [
    Watersportmodel(
            id: 145,
            name: "Bali Indah & Watersport",
            image: "image",
            description: """
    Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be
    """,
            owner: "Bali Indah & Watersport",
            ownerimage: "logo"
        ),
    Watersportmodel(
            id: 146,
            name: "BMR Dive & Watersport",
            image: "dua",
            description: """
    Established in 1985, Benoa Marine Recreation (BMR) is one of the first and leading water sports in Tanjung Benoa
    """,
            owner: "BMR Dive & Watersport",
            ownerimage: "icon 2"
        ),
    
    Watersportmodel(
            id: 147,
            name: "Mekar Sari Dive & Watersport",
            image: "tiga",
            description: """
    Mekarsari Dive and Watersport offers a wide selection of water games that you can do with friends and family such as Scuba Diving, Sea Walker, Snorkeling, ...
    """,
            owner: "Mekar Sari Dive & Watersport",
            ownerimage: "icon 3"
        ),
    
    Watersportmodel(
            id: 148,
            name: "Pandan Sari Watersport",
            image: "empat",
            description: """
    Pandan Sari Water Sport provides water activities such as snorkeling, sea walker, parasailing, jet ski, donut slider, flying fish, fly board, diving, ...
    """,
            owner: "Pandan Sari Watersport",
            ownerimage: "icon 4"
        ),
    Watersportmodel(
            id: 149,
            name: "Zooka Dive & Watersport",
            image: "lima",
            description: """
    Bali Water Sport and scuba dive provider, Located in the Tanjung Benoa, Nusa Dua, South Bali. Offers a high quality of water sport activities and scuba dive ...
    """,
            owner: "Zooka Dive & Watersport",
            ownerimage: "icon 5"
        ),
]
