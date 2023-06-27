//
//  productViewModel.swift
//  ecomm
//
//  Created by KCD on 1/8/23.
//

import Foundation



struct productModel: Codable {
    let id: Int?
    let title: String?
    let price: Double?
    let description, category: String?
    let image: String?
    let rating: Rating?
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double?
    let count: Int?
}
