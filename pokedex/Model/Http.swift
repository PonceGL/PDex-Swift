//
//  Http.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 01/07/24.
//

import Foundation


final class Http: ObservableObject {
    private let urlSession = URLSession.shared
    
    func get<T: Decodable>(url: URL, type: T.Type, completionHandler: @escaping (T) -> Void, errorHandler: @escaping (String) -> Void) {
       
       urlSession.dataTask(with: url) { (data, response, error) in
           guard let data = data, error == nil else {
               print(error as Any)
               errorHandler(error?.localizedDescription ?? "Error!")
               return
           }
           
           if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
               print("status code is not 200")
               errorHandler("Status code is not 200")
               print(response as Any)
           }
           
           if let mappedResponse = try? JSONDecoder().decode(T.self, from: data) {
               completionHandler(mappedResponse)
           }
       }.resume()
   }
}
