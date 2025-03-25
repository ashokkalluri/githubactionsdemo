@isTest
public class AccountListControllerTest {
    
    @testSetup
    static void setupTestData() {
        // Create test accounts
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i, Industry = 'Technology', Phone = '1234567890'));
        }
        insert accounts;
    }
    
    @isTest
    static void testGetAccountList() {
        Test.startTest();
        List<Account> result = AccountListController.getAccountlist();
        Test.stopTest();
        
        System.assertNotEquals(null, result, 'Account list should not be null');
        System.assert(result.size() > 0, 'Account list should contain records');
    }
    
    @isTest
    static void testGetAccountUpdatedList() {
        Account newAcc = new Account(Name = 'New Test Account', Industry = 'Finance', Phone = '9876543210');
        
        Test.startTest();
        AccountListController.getAccountupdatedlist(newAcc);
        AccountListController alc = new AccountListController();
        alc.testMethod3();
        Test.stopTest();
        
        // Verify that the account was inserted
        Account insertedAcc = [SELECT Id, Name FROM Account WHERE Name = 'New Test Account' LIMIT 1];
        System.assertNotEquals(null, insertedAcc, 'New account should be inserted');
    }
}
