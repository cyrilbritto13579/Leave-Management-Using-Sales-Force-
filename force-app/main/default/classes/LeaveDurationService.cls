public class LeaveDurationService {

    public static String calculateCategory(Integer days) {

        if (days == null || days <= 0) {
            return null;
        }

        if (days <= 2) {
            return 'Short';
        } else if (days <= 5) {
            return 'Medium';
        } else {
            return 'Long';
        }
    }
}