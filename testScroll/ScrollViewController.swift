//
//  ScrollViewController.swift
//  testScroll
//
//  Created by leon on 2022/4/20.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ImageTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInsetAdjustmentBehavior = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.alpha = 0
        setNavigationBar()
    }

}



extension ScrollViewController: UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
        return cell
    }
    
        
    func setNavigationBar(){
        
        navigationItem.backButtonTitle = ""
        navigationItem.title = ""
        navigationItem.title = "果思設計"
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let contenOffset = scrollView.contentOffset.y
        let alpha = contenOffset / 200
        print("contenOffset is: \(contenOffset), magicOffset is: \(alpha)")
        
        switch contenOffset {
            
        case ...40:
            print("hide nav bar")
            navigationController?.navigationBar.alpha = 0
            
        case ...245:
            navigationController?.navigationBar.alpha = alpha
            
        case 230...:
            navigationController?.navigationBar.backgroundColor = UIColor.white

        default:
            print("offset is: \(contenOffset)")
        }
    }
}
