//
//  ViewController.swift
//  MVC
//
//  Created by Trung on 14/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "Mark", lastName: "Zuckerberg", gender: "Male", age: 35, weight: 78, height: 177)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
    }
    
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let weight: Double
    let height: Double
   }

