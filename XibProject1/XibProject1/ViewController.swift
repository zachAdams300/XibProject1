//
//  ViewController.swift
//  XibProject1
//
//  Created by Zachary Adams on 1/14/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var cells: [CustomCellStruct]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TestCellTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        navigationItem.title = "HI"
//        tableView.register(TestCellTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    init() {
        cells = [
            CustomCellStruct(text: "Hi there", image: UIImage(systemName: "plus.circle") ?? nil),
            CustomCellStruct(text: "Hi there 2", image: UIImage(systemName: "smallcircle.circle.fill"))]
        
        super.init(nibName: "ViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        
//        if let indexPath = tableView.indexPathForSelectedRow {
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TestCellTableViewCell
        
        let guy = cells[indexPath.row]
        cell.setViewStuff(text: guy.text, image: guy.image)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = cells[indexPath.row]
        navigationController?.pushViewController(DetailViewController(textToShow: cell.text), animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

