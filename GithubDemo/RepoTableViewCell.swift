//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Matthew Lee on 2/6/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var forks: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            name.text = repo.name
            owner.text = repo.ownerHandle
            photoImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            descriptionLabel.text = repo.repoDescription
            stars.text = "\(repo.stars!)"
            forks.text = "\(repo.forks!)"
        }
    }
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //manually setting the max layout width
        //name.preferredMaxLayoutWidth = name.frame.size.width
    }
    
    //for rotation
    override func layoutSubviews() {
        super.layoutSubviews()
        //name.preferredMaxLayoutWidth = name.frame.size.width

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
