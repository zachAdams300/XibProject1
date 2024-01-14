//
//  DetailViewController.swift
//  XibProject1
//
//  Created by Zachary Adams on 1/14/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var textToShow: String
    
    init(textToShow: String) {
        self.textToShow = textToShow
        
        super.init(nibName: "DetailViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = textToShow
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
