//
//  DetailViewController.swift
//  Tabelview_deleting_adding
//
//  Created by Anil on 7/26/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var dimg: UIImageView!
    
    
    @IBOutlet weak var dlbl1: UILabel!
    
    @IBOutlet weak var dlbl2: UILabel!
    
    
    var strlbl1:String!
    var strlbl2: String!
    var strimg:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dlbl1.text = strlbl1
        dlbl2.text = strlbl2
        dimg.image = strimg

        // Do any additional setup after loading the view.
    }
    

    

}
