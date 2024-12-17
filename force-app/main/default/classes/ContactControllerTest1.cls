@isTest
public class ContactControllerTest1 {
    @isTest
    static void testGetContacts() {
        // Create test data
        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 5; i++) {
            testContacts.add(new Contact(FirstName = 'First' + i, LastName = 'Last' + i, Email = 'test' + i + '@example.com', Phone = '123456789' + i));
        }
        insert testContacts;
 
        // Call the method
        Test.startTest();
        List<Contact> result = ContactController1.getContacts();
        Test.stopTest();
 
        // Assert the results
        System.assertNotEquals(0, result.size(), 'Contacts should be fetched.');
        System.assertEquals(5, result.size(), 'All test contacts should be fetched.');
    }
}