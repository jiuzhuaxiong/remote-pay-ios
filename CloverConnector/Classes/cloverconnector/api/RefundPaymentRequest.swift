/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */


import ObjectMapper

@objc
public class RefundPaymentRequest: NSObject, Mappable {

  /*
  * Amount to be refunded
   */
  public var amount:Int? = nil
  /*
  * Unique identifier
   */
  public var orderId:String
  /*
  * Unique identifier
   */
  public var paymentId:String
  public var fullRefund:Bool = true

    public init(orderId:String, paymentId:String, amount:Int?, fullRefund:Bool?) {
        self.orderId = orderId
        self.paymentId = paymentId
        self.amount = amount
        self.fullRefund = fullRefund ?? false
    }
    
    public init(orderId:String, paymentId:String, amount:Int) {
        self.orderId = orderId
        self.paymentId = paymentId
        self.amount = amount
        self.fullRefund = false
    }
    
    public init(orderId: String, paymentId:String, fullRefund:Bool) {
        self.orderId = orderId
        self.paymentId = paymentId
        self.amount = nil
        self.fullRefund = true
    }
    
    public required init?(_ map: Map) {
        orderId = ""
        paymentId = ""
        super.init()
    }
    
    public func mapping(map: Map) {
        amount <- map["amount"]
        orderId <- map["orderId"]
        paymentId <- map["paymentId"]
        fullRefund <- map["fullRefund"]
    }
}

