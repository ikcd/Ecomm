//
//  ContentView.swift
//  ecomm
//
//  Created by KCD on 1/8/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var ProductViewModel = productViewModel()
    @State var pagination : Int = 5					    	
    
//    @State var 
    
    var body: some View {
        VStack {
            
            HStack{
                ScrollView(.horizontal) {
//                    ForEach()
                    Text("-----")
                }
            }
            ScrollView{
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                    ForEach(ProductViewModel.ProductModel?.indices ?? 0..<0, id: \.self) { i in
                        porductCard(imageURL: ProductViewModel.ProductModel?[i].image ?? "", rating: "\(ProductViewModel.ProductModel?[i].rating?.rate ?? 0)", count: "\(ProductViewModel.ProductModel?[i].rating?.count ?? 0)", productName: ProductViewModel.ProductModel?[i].title ?? "", price: "\(ProductViewModel.ProductModel?[i].price ?? 0)")
//                            .environmentObject(ProductViewModel)
                    }
                }
                HStack{
                    Spacer()
                    ProgressView()
                        .onAppear(){
                            pagination += 5
                            ProductViewModel.getProducts(page: pagination)
                        }
                    Spacer()
                }
            }
//            ProgressView()
//                .onReceive(ProductViewModel.$ProductModel) { i in
//
//                }
            
        }.onAppear(){
            ProductViewModel.getProducts(page: pagination)
        }
//        .padding()
        .foregroundColor(.white)
        .background(.white)
//        .navigationBarTitleDisplayMode()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
