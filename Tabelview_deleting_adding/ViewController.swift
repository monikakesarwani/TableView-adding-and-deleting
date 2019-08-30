//
//  ViewController.swift
//  Tabelview_deleting_adding
//
//  Created by Anil on 7/20/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

//https://www.youtube.com/watch?v=4MOiU_Qop-0
//source code: https://github.com/yogeshpatelios/Swift-4-Xcode-9---Custom-TableView-With-Data-Passing-Deleting-Cell-in-iOS-Latest-2017-Hindi.

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabelView: UITableView!
    
    var array1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]
    var arrimage = [#imageLiteral(resourceName: "27-274372_dhruva-rakul-preet-singh-heroine-wallpaper-instagram-rakul"), #imageLiteral(resourceName: "1526584935-1253"), #imageLiteral(resourceName: "14600"), #imageLiteral(resourceName: "3f4d0cae375dfb6246fa368633e98fda"), #imageLiteral(resourceName: "Attractive-picture-of-heroine-download-for-FB-500x567."), #imageLiteral(resourceName: "Katrina-Kaif-Bollywood-Heroine-Wide-Wallpaper-680x425"), #imageLiteral(resourceName: "wp2622263"), #imageLiteral(resourceName: "South-actress-full-hd-wallpaper20")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    // numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
        
    }
    
    //cellForRowAt indexPath
    
    /*
     property of TableViewCell
     
     Identifier = cell
     IndexPath = indexpath
     
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = arrimage[indexPath.row]
        
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
//
//        cell.textLabel?.text = array1[indexPath.row]
//        cell.detailTextLabel?.text = array2[indexPath.row]
        return cell
    }
    
    //heightForRowAt indexPath
    // set row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    
    
    
    //DetailViewController
    //navigationController
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        self.navigationController?.pushViewController(detail, animated: true)
        detail.strlbl1 = array1[indexPath.row]
        detail.strlbl2 = array2[indexPath.row]
        detail.strimg = arrimage[indexPath.row]
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrimage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

