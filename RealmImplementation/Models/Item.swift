//
//  Item.swift
//  RealmImplementation
//
//  Created by Timotius Leonardo Lianoto on 24/12/22.
//

import RealmSwift

final class Item: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name = LoremIpsum.randomName()
    @Persisted(originProperty: "items") var group: LinkingObjects<Group>
}
