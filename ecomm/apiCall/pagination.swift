//
//  pagination.swift
//  ecomm
//
//  Created by KCD on 1/8/23.
//

import Foundation

class pagination {
    
    
    func pagination(page : Int, completionHandler : @escaping (_ data : Data?) -> ()){
        guard let baseUrl = URL(string: "https://fakestoreapi.com/products?limit=\(page)") else{
            return
        }
        
        print(baseUrl)
        
        let task = URLSession.shared.dataTask(with: baseUrl) { data, response, error in
            guard
                let data = data,
                error == nil,
                let res = response as? HTTPURLResponse,
                (res.statusCode >= 200 && res.statusCode < 300) else {
                    print("statusCode should be 2xx, but is")
                    return completionHandler(data)
                }

                print("================\n\(res)================")
            completionHandler(data)
        }
        task.resume()
    }
    
}
