//
//  TableViewController.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 10/28/20.
//

import UIKit

class TableViewController: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table : UITableView!

    var songs = [Song]()
    override func awakeFromNib() {
        super.awakeFromNib()
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //configure the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //present the player
        let position = indexPath.row
        //songs
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

struct Song {
    let name : String
    let albumName : String
    let 
}
