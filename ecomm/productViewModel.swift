//
//  productViewModel.swift
//  ecomm
//
//  Created by KCD on 1/8/23.
//

import Foundation


class productViewModel : ObservableObject{
    
    @Published var ProductModel : [productModel]?
    @Published var category : [String]?
    
//    init() {
//
//    }
    
    func getProducts(page : Int){
        pagination().pagination(page: page) { [self] data in
            
            print("-----------\n\(data)\n-------------")
            if data != nil{
                do {
                    let decoder = JSONDecoder()
                    let responseObject = try decoder.decode([productModel].self, from: data!)
                    print(responseObject)
                    DispatchQueue.main.async {
                        self.ProductModel = responseObject
                        for i in self.ProductModel?.indices ?? 0..<0{
                            print(self.ProductModel?[i].category ?? "")
                            self.category?.append(self.ProductModel?[i].category ?? "")
                        }
                        
                    }
                    print("--------\(category)")
                    debugPrint(type(of: responseObject))
                    if responseObject[0].title == "failed"{
                    }
                }catch{
                    print("Json parse error\(error)\n\(error._code)\n\(error._domain)\n\(error.localizedDescription)")
                }
            }else{
                
            }
        }
    }
    
}
