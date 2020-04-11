//
//  Model.swift
//  ToDoListExample
//
//  Created by Panagiotis Kapsalis Skoufos on 11/4/20.
//  Copyright © 2020 Panagiotis Kapsalis Skoufos. All rights reserved.
//

import Foundation
import CoreData
import SwiftUI

public class Item:NSManagedObject,Identifiable
{
    @NSManaged var itemID:UUID
    @NSManaged var itemDescription:String
    @NSManaged var checked:Bool
    
    
}


extension Item
{
    
    public static func fetchAllItems() ->NSFetchRequest<Item>
    {
        let req:NSFetchRequest<Item> = NSFetchRequest<Item>(entityName: "Item")
        req.shouldRefreshRefetchedObjects = true
        return req
    }
}
