public class AccountListController {
    //test deploy
    static Integer testint;
    @AuraEnabled
    public static list<Account> getAccountlist() {

        return [Select id, Name, Industry, Phone from Account Order by CreatedDate desc limit 10];

    }

    //test 1
    //ticket 123 changes
    public void testMethod3 () {
        Integer helloInt;
    }

    @AuraEnabled
    public static void getAccountupdatedlist(Account newAcc) {
        testint = 2;
        String str;
        insert newAcc ;
    }

}