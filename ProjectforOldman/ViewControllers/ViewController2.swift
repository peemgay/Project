//
//  ViewController2.swift
//  ProjectforOldman
//
//  Created by Peem on 21/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["ช้างน้อย รีสอร์ท","Novotel Hua Hin Cha Am Beach","ทอแสง ซิตี้","โฆษะ","โรงแรม อโมรา ท่าแพ เชียงใหม่","มิราเคิล แกรนด์ คอนเวนชั่น","ไอบิส กรุงเทพ ริเวอร์ไซด์","โกลเด้นทิวลิป ซอฟเฟอรีน โฮเทล","เซ็นทารา พัทยา โฮเทล","ไมด้า เดอ ซี หัวหิน","โรงแรมโกลเด้น บีช ชะอำ","ธารามันตรา ชะอำ รีสอร์ท"]
    var price = ["1800","1900","1400","1000","1200","1300","1500","1600","1700","1900","1300","1100","1200"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension ViewController2: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
       // return price.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableCell
        cell.nameLBL2.text = name[indexPath.row]
        cell.price.text = price[indexPath.row]
        cell.imgVIew2.image = UIImage(named: name[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "payment") as? MainViewController
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        vc?.price = price[indexPath.row]
   self.navigationController?.pushViewController(vc!, animated: true)
    }
   /* func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
    }*/
    
    
}
