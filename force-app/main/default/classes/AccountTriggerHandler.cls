/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 10-22-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class AccountTriggerHandler extends TriggerHandler {
    
    List<Account> lAccounts;
    
    public AccountTriggerHandler(){
        lAccounts = Trigger.new;
    }
    
    public override void beforeInsert() {
        AccountService.updateAccountStatus(lAccounts);
    }
    
    public override void beforeUpdate() {
        AccountService.updateAccountStatus(lAccounts);
    }
}