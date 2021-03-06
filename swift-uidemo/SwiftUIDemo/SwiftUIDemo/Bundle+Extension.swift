//
//  Bundle+Extension.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/10.
//

import Foundation

extension Bundle{
    func decode<T:Codable>(_ filename:String) -> T {
        guard let url = self.url(forResource:filename , withExtension: nil) else{
            fatalError("Failed to locate\(filename) in the bundle!")
        }
        
        let data:Data
        do{
            data = try Data(contentsOf: url)
        } catch{
            fatalError("Failed to load \(filename) from bundle \n \(error)")
        }
        
        let decoder = JSONDecoder()
        do{
            return try decoder.decode(T.self, from: data)
        }catch{
            fatalError("Failed to decode \(filename) from bundle \n \(error)")
        }
        
        
    }
}
