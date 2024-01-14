//
//  TestCellTableViewCell.swift
//  XibProject1
//
//  Created by Zachary Adams on 1/14/24.
//

import UIKit

class TestCellTableViewCell: UITableViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var boopImage: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setViewStuff(text: String, image: UIImage?) {
        label.text = text
        boopImage.image = image
    }
    
}
