//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
    graphQLMap = ["id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var empId: Int {
    get {
      return graphQLMap["empID"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "empID")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["lastName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var phoneNumber: String? {
    get {
      return graphQLMap["phoneNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var assignmentId: Int? {
    get {
      return graphQLMap["assignmentID"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assignmentID")
    }
  }

  public var homeOffice: String? {
    get {
      return graphQLMap["homeOffice"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "homeOffice")
    }
  }
}

public struct UpdateMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, email: String, empId: Int? = nil, firstName: String? = nil, lastName: String? = nil, password: String? = nil, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
    graphQLMap = ["id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var empId: Int? {
    get {
      return graphQLMap["empID"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "empID")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var password: String? {
    get {
      return graphQLMap["password"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var phoneNumber: String? {
    get {
      return graphQLMap["phoneNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var assignmentId: Int? {
    get {
      return graphQLMap["assignmentID"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assignmentID")
    }
  }

  public var homeOffice: String? {
    get {
      return graphQLMap["homeOffice"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "homeOffice")
    }
  }
}

public struct DeleteMyModelTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, email: String) {
    graphQLMap = ["id": id, "email": email]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }
}

public struct TableMyModelTypeFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIDFilterInput? = nil, email: TableStringFilterInput? = nil, empId: TableIntFilterInput? = nil, firstName: TableStringFilterInput? = nil, lastName: TableStringFilterInput? = nil, password: TableStringFilterInput? = nil, phoneNumber: TableStringFilterInput? = nil, assignmentId: TableIntFilterInput? = nil, homeOffice: TableStringFilterInput? = nil) {
    graphQLMap = ["id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice]
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: TableStringFilterInput? {
    get {
      return graphQLMap["email"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var empId: TableIntFilterInput? {
    get {
      return graphQLMap["empID"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "empID")
    }
  }

  public var firstName: TableStringFilterInput? {
    get {
      return graphQLMap["firstName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: TableStringFilterInput? {
    get {
      return graphQLMap["lastName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var password: TableStringFilterInput? {
    get {
      return graphQLMap["password"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var phoneNumber: TableStringFilterInput? {
    get {
      return graphQLMap["phoneNumber"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var assignmentId: TableIntFilterInput? {
    get {
      return graphQLMap["assignmentID"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assignmentID")
    }
  }

  public var homeOffice: TableStringFilterInput? {
    get {
      return graphQLMap["homeOffice"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "homeOffice")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public final class CreateMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMyModelType($input: CreateMyModelTypeInput!) {\n  createMyModelType(input: $input) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var input: CreateMyModelTypeInput

  public init(input: CreateMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(CreateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMyModelType: CreateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMyModelType": createMyModelType.flatMap { $0.snapshot }])
    }

    public var createMyModelType: CreateMyModelType? {
      get {
        return (snapshot["createMyModelType"] as? Snapshot).flatMap { CreateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMyModelType")
      }
    }

    public struct CreateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class UpdateMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMyModelType($input: UpdateMyModelTypeInput!) {\n  updateMyModelType(input: $input) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var input: UpdateMyModelTypeInput

  public init(input: UpdateMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMyModelType: UpdateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMyModelType": updateMyModelType.flatMap { $0.snapshot }])
    }

    public var updateMyModelType: UpdateMyModelType? {
      get {
        return (snapshot["updateMyModelType"] as? Snapshot).flatMap { UpdateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMyModelType")
      }
    }

    public struct UpdateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class DeleteMyModelTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMyModelType($input: DeleteMyModelTypeInput!) {\n  deleteMyModelType(input: $input) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var input: DeleteMyModelTypeInput

  public init(input: DeleteMyModelTypeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMyModelType", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMyModelType: DeleteMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMyModelType": deleteMyModelType.flatMap { $0.snapshot }])
    }

    public var deleteMyModelType: DeleteMyModelType? {
      get {
        return (snapshot["deleteMyModelType"] as? Snapshot).flatMap { DeleteMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMyModelType")
      }
    }

    public struct DeleteMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class GetMyModelTypeQuery: GraphQLQuery {
  public static let operationString =
    "query GetMyModelType($email: AWSEmail!) {\n  getMyModelType(email: $email) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMyModelType", arguments: ["email": GraphQLVariable("email")], type: .object(GetMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMyModelType: GetMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMyModelType": getMyModelType.flatMap { $0.snapshot }])
    }

    public var getMyModelType: GetMyModelType? {
      get {
        return (snapshot["getMyModelType"] as? Snapshot).flatMap { GetMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMyModelType")
      }
    }

    public struct GetMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class ListMyModelTypesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMyModelTypes($filter: TableMyModelTypeFilterInput, $limit: Int, $nextToken: String) {\n  listMyModelTypes(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      email\n      empID\n      firstName\n      lastName\n      password\n      phoneNumber\n      assignmentID\n      homeOffice\n    }\n    nextToken\n  }\n}"

  public var filter: TableMyModelTypeFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableMyModelTypeFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMyModelTypes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMyModelTypes: ListMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMyModelTypes": listMyModelTypes.flatMap { $0.snapshot }])
    }

    public var listMyModelTypes: ListMyModelType? {
      get {
        return (snapshot["listMyModelTypes"] as? Snapshot).flatMap { ListMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMyModelTypes")
      }
    }

    public struct ListMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelTypeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelTypeConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MyModelType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .nonNull(.scalar(String.self))),
          GraphQLField("phoneNumber", type: .scalar(String.self)),
          GraphQLField("assignmentID", type: .scalar(Int.self)),
          GraphQLField("homeOffice", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
          self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var empId: Int {
          get {
            return snapshot["empID"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "empID")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String {
          get {
            return snapshot["lastName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var password: String {
          get {
            return snapshot["password"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var phoneNumber: String? {
          get {
            return snapshot["phoneNumber"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var assignmentId: Int? {
          get {
            return snapshot["assignmentID"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "assignmentID")
          }
        }

        public var homeOffice: String? {
          get {
            return snapshot["homeOffice"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "homeOffice")
          }
        }
      }
    }
  }
}

public final class OnCreateMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMyModelType($id: ID, $email: AWSEmail, $empID: Int, $firstName: String, $lastName: String) {\n  onCreateMyModelType(\n    id: $id\n    email: $email\n    empID: $empID\n    firstName: $firstName\n    lastName: $lastName\n  ) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var id: GraphQLID?
  public var email: String?
  public var empID: Int?
  public var firstName: String?
  public var lastName: String?

  public init(id: GraphQLID? = nil, email: String? = nil, empID: Int? = nil, firstName: String? = nil, lastName: String? = nil) {
    self.id = id
    self.email = email
    self.empID = empID
    self.firstName = firstName
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["id": id, "email": email, "empID": empID, "firstName": firstName, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMyModelType", arguments: ["id": GraphQLVariable("id"), "email": GraphQLVariable("email"), "empID": GraphQLVariable("empID"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName")], type: .object(OnCreateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMyModelType: OnCreateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMyModelType": onCreateMyModelType.flatMap { $0.snapshot }])
    }

    public var onCreateMyModelType: OnCreateMyModelType? {
      get {
        return (snapshot["onCreateMyModelType"] as? Snapshot).flatMap { OnCreateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMyModelType")
      }
    }

    public struct OnCreateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class OnUpdateMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMyModelType($id: ID, $email: AWSEmail, $empID: Int, $firstName: String, $lastName: String) {\n  onUpdateMyModelType(\n    id: $id\n    email: $email\n    empID: $empID\n    firstName: $firstName\n    lastName: $lastName\n  ) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var id: GraphQLID?
  public var email: String?
  public var empID: Int?
  public var firstName: String?
  public var lastName: String?

  public init(id: GraphQLID? = nil, email: String? = nil, empID: Int? = nil, firstName: String? = nil, lastName: String? = nil) {
    self.id = id
    self.email = email
    self.empID = empID
    self.firstName = firstName
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["id": id, "email": email, "empID": empID, "firstName": firstName, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMyModelType", arguments: ["id": GraphQLVariable("id"), "email": GraphQLVariable("email"), "empID": GraphQLVariable("empID"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName")], type: .object(OnUpdateMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMyModelType: OnUpdateMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMyModelType": onUpdateMyModelType.flatMap { $0.snapshot }])
    }

    public var onUpdateMyModelType: OnUpdateMyModelType? {
      get {
        return (snapshot["onUpdateMyModelType"] as? Snapshot).flatMap { OnUpdateMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMyModelType")
      }
    }

    public struct OnUpdateMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}

public final class OnDeleteMyModelTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMyModelType($id: ID, $email: AWSEmail, $empID: Int, $firstName: String, $lastName: String) {\n  onDeleteMyModelType(\n    id: $id\n    email: $email\n    empID: $empID\n    firstName: $firstName\n    lastName: $lastName\n  ) {\n    __typename\n    id\n    email\n    empID\n    firstName\n    lastName\n    password\n    phoneNumber\n    assignmentID\n    homeOffice\n  }\n}"

  public var id: GraphQLID?
  public var email: String?
  public var empID: Int?
  public var firstName: String?
  public var lastName: String?

  public init(id: GraphQLID? = nil, email: String? = nil, empID: Int? = nil, firstName: String? = nil, lastName: String? = nil) {
    self.id = id
    self.email = email
    self.empID = empID
    self.firstName = firstName
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["id": id, "email": email, "empID": empID, "firstName": firstName, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMyModelType", arguments: ["id": GraphQLVariable("id"), "email": GraphQLVariable("email"), "empID": GraphQLVariable("empID"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName")], type: .object(OnDeleteMyModelType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMyModelType: OnDeleteMyModelType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMyModelType": onDeleteMyModelType.flatMap { $0.snapshot }])
    }

    public var onDeleteMyModelType: OnDeleteMyModelType? {
      get {
        return (snapshot["onDeleteMyModelType"] as? Snapshot).flatMap { OnDeleteMyModelType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMyModelType")
      }
    }

    public struct OnDeleteMyModelType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyModelType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("empID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("assignmentID", type: .scalar(Int.self)),
        GraphQLField("homeOffice", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, empId: Int, firstName: String, lastName: String, password: String, phoneNumber: String? = nil, assignmentId: Int? = nil, homeOffice: String? = nil) {
        self.init(snapshot: ["__typename": "MyModelType", "id": id, "email": email, "empID": empId, "firstName": firstName, "lastName": lastName, "password": password, "phoneNumber": phoneNumber, "assignmentID": assignmentId, "homeOffice": homeOffice])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var empId: Int {
        get {
          return snapshot["empID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "empID")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var password: String {
        get {
          return snapshot["password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var assignmentId: Int? {
        get {
          return snapshot["assignmentID"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "assignmentID")
        }
      }

      public var homeOffice: String? {
        get {
          return snapshot["homeOffice"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homeOffice")
        }
      }
    }
  }
}