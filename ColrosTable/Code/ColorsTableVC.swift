//
//  ColorsTableVC.swift
//  ColrosTable
//
//  Created by Mohamed Emad on 29/06/2023.
//

import UIKit

class ColorsTableVC: UIViewController  {
    
    var colors : [UIColor] = [ ]

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    func createRandomColors(){
        
        for _ in 0..<100 {
            colors.append(createRandomColor())
        }
        
    }
    
    func createRandomColor () -> UIColor {
        let randomColor = UIColor (red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        
        return randomColor
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc = segue.destination as! ColorDetailVC
        destVc.color =  sender as? UIColor
    }

}

extension ColorsTableVC: UITableViewDelegate ,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        let color = colors[indexPath.row]
        cell?.backgroundColor = color
       return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: " ToColorDetails", sender: color)
    }
    
}
  
