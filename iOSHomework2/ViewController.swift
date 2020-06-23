//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = []
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        let functionCall = secretNameLetter(members: membersNamesArray)
       

        secretSocietyNameLabel.text = functionCall
        
            
        }
        // MARK: -   النهاية
        
        
   
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
      
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
      
        
        
        let functionCall = encrypWith(emoji: true, array: membersNamesArray)
        
    
        
        
        // MARK: -   النهاية
        
         secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter(members:[String])-> String{
       var secret = ""
        for member in members{
            secret += String (member.prefix(1)).uppercased()
            
        }
        return secret
      }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    
func =
    [
         "A": "😂",
              "B" :"😝",
              "C" : "😁",
              "D" : "😱",
              "E" :"👉",
              "F" :"🙌",
              "G" : "🍻",
              "H" : "🔥",
              "I": "🌈",
              "J":"☀",
              "K" : "🎈",
              "L" :"🌹",
              "M": "💄",
              "N": "🎀",
              "O": "⚽",
              "P": "🎾",
              "Q": "🏁",
              "R": "😡",
              "S" : "👿",
              "T" :"🐻",
              "U": "🐶",
              "V": "🐬",
              "W": "🐟",
              "X" : "🍀",
              "Y" : "👀",
              "Z": "🚗",
        ]
                  






    
    // MARK: -   النهاية
     
   // Bonus
    func encrypWith(emoji:Bool , array : [String])-> String{
        if emoji{
            return secretNameEmoji (array: array)
        }
        else{
            return secretNameLetter(members: array)
        }
}

    

