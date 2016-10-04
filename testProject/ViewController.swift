//
//  ViewController.swift
//  testProject
//
//  Created by nguyen hula on 10/4/16.
//  Copyright © 2016 nguyen hula. All rights reserved.
//

import UIKit


struct Person {
    var name : String
    var age : Float
}

class Student {
    
    var major : String = ""
    var years : Float = 0.0
    
    init(_ major : String, yearInSchool years : Float) {
        self.major = major
        self.years = years
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testValue()
        testStruct()
        testClass()
    }

    
    func testClass() {
        let student1 = Student("IT", yearInSchool: 5)
        let student2 = student1
        
        student1.major += "software"
        student1.years += 10
        print("\(student1.major), \(student1.years)")
        print("\(student2.major), \(student2.years)")
    }
    
    
    func testStruct() {
        var person1 = Person(name: "Hula", age: 18)
        
        var person2 = person1
        
        person1.name += "nguyen"
        person1.age += 10
        print("\(person1)")
        print("\(person2)")
    }
    
    func testValue() {
        var a = 3
        var b = a
        
        a += 1
        
        print("Value of a = \(a)")
        print("Value of b = \(b)")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

