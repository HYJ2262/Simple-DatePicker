//
//  ViewController.swift
//  Simpe DatePicker
//
//  Created by amadeus on 16/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UI의 지역화(locatization) -> ko_KO
        let locale = Locale(identifier: "ja_JA")
        myDatePicker.locale = locale
        
        // DatePicker 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.time
    }

    @IBAction func changeDatePicker(_ sender: Any) {
        //myDatePicker.date 이 데이트 부분을 countdown 이라던가 여러가지 있음
        let selectedData = myDatePicker.date
        print(selectedData)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()
        //formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.dateFormat = "a HH:mm"
        outLabel.text = formatter.string(from: selectedData)
    }
}

