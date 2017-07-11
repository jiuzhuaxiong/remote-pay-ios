/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

/*
The request sent to the Auth method. 'amount' is the only field required.
 */
public class AuthRequest:TransactionRequest {
    public var allowOfflinePayment:Bool?
    public var approveOfflinePaymentWithoutPrompt:Bool?
    public var disableCashback:Bool?
    public var taxAmount:Int?
    public var tippableAmount:Int?
    public var forceOfflinePayment:Bool?
    
    public override var type:TransactionType {
        get {
            return TransactionType.PAYMENT
        }
        set {
            // do nothing
        }
    }
    
    public required override init(amount:Int, externalId:String) {
        super.init(amount:amount, externalId:externalId);
    }
    
    public required init?(_ map: Map) {
        super.init(map)
    }
    
    public override func mapping(map: Map) {
        disableCashback <- map["disableCashback"]
        tippableAmount <- map["tippableAmount"]
        taxAmount <- map["taxAmount"]
        allowOfflinePayment <- map["allowOfflinePayment"]
        approveOfflinePaymentWithoutPrompt <- map["approveOfflinePaymentWithoutPrompt"]
        forceOfflinePayment <- map["forceOfflinePayment"]
    }

}

