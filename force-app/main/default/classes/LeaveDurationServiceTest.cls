@isTest
private class LeaveDurationServiceTest {

    @isTest
    static void testShortLeave() {
        System.assertEquals(
            'Short',
            LeaveDurationService.calculateCategory(2)
        );
    }

    @isTest
    static void testMediumLeave() {
        System.assertEquals(
            'Medium',
            LeaveDurationService.calculateCategory(4)
        );
    }

    @isTest
    static void testLongLeave() {
        System.assertEquals(
            'Long',
            LeaveDurationService.calculateCategory(7)
        );
    }

    @isTest
    static void testInvalidDays() {
        System.assertEquals(
            null,
            LeaveDurationService.calculateCategory(null)
        );
    }
}