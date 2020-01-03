//
//  ViewController.swift
//  JSONPostMethod
//
//  Created by sachin shinde on 03/01/20.
//  Copyright © 2020 sachin shinde. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ViewController: UIViewController {

    var userData : [UserDatum] = []
    @IBOutlet var btnPostCALL: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

   // let headers: HTTPHeaders = [
   // "Content-Type": "application/json"
    //]
    @IBAction func btnPostCallTapped(_ sender: Any) {
        
        let parameters: Parameters = ["name": "Prachi", "body": "Hello To Me", "Interests":"Dancing","number":"1"]
        
          
          let url = "https://jsonplaceholder.typicode.com/posts"
        AF.request(url, method:.post, parameters:parameters).validate().response { response in
              switch response.result {
              case .success:
                  debugPrint(response)
                  
              case .failure(let error):
                  print(error)
              }
    }
    
}
    
    
    @IBAction func btnGet(_ sender: UIButton) {
        let url = "https://jsonplaceholder.typicode.com/users"
        
        AF.request(url).validate().responseJSON { response in
                  switch response.result{
                        case .success:
                            print(response.data!)
                            print(response.response)
                            let decoder = JSONDecoder()
                                let responseValidated = try! decoder.decode([Json4Swift_Base].self, from: response.data!)
                            print(responseValidated)
                            for array in responseValidated {
                                print(array.name!)
                                print(array.address?.geo?.lat)
                    }
                        case .failure(let error):
                            print(error)
                        }
        }
    }
    
    @IBAction func getNewApiResponseTapped(_ sender: Any) {
        
        let url = "https://openlibrary.org/api/books?bibkeys=ISBN:9780980200447&jscmd=details&format=json"
        
        AF.request(url).validate().responseJSON(){
            response in switch response .result{
            case .success:
                print(response.data)
                print(response.response)
    let decoder = JSONDecoder()
            let responseValidated = try! decoder.decode(Bookdata.self, from: response.data!)
                    print(responseValidated)
               // print(responseValidated.isbn9780980200447.details.tableOfContents)
                for title in responseValidated.isbn9780980200447.details.tableOfContents{
                    print(title.title)
                }
                
            case .failure(let error):
                print(error)
                
            }
            
        }
        
        
    }
    
}
