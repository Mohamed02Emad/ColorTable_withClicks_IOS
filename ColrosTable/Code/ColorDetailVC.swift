//
//  ColorDetailVC.swift
//  ColrosTable
//
//  Created by Mohamed Emad on 29/06/2023.
//

import UIKit

class ColorDetailVC: UIViewController {
    
    var color : UIColor? 

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.systemBackground 
    }
    

}
