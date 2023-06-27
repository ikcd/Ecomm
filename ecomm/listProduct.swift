//
//  listProduct.swift
//  ecomm
//
//  Created by KCD on 1/14/23.
//

import SwiftUI

struct listProduct: View {
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                    ForEach(0..<3) { i in
//                        porductCard()
                            
                    }
                }
            }
        }
    }
}

struct listProduct_Previews: PreviewProvider {
    static var previews: some View {
        listProduct()
    }
}
