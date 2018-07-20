//
//  DismissControllerSegue
//  ios-sandbox
//
//  Created by Hiromasa Ohno on 2018/07/06.
//  Copyright © 2018年 SONIC GARDEN INC. All rights reserved.
//

import UIKit

class DismissControllerSegue: UIStoryboardSegue {
    override func perform() {
        self.source.dismiss(animated: true, completion: nil)
    }
}
