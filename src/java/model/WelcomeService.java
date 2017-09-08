package model;

import java.util.Calendar;

/**
 *
 * @author Carson Schultz
 */
public class WelcomeService {

    private Calendar date;
    private final String ERROR = "Error: Value cannot be null";

    public WelcomeService() {
        setCurrentDateTime(Calendar.getInstance());
    }

    public final Calendar getDate() {
        return date;
    }

    public final void setCurrentDateTime(Calendar currentDateTime) throws
            IllegalArgumentException {
        if (currentDateTime == null) {
            throw new IllegalArgumentException(ERROR);
        }
        this.date = currentDateTime;
    }

    public final String determineTimeOfDay() {
        String timeOfDay = "unknown";
        if (date.before(getNoonStartTime())) {
            timeOfDay = "morning";
        }

        if (date.after(getNoonStartTime())
                && date.before(getEveningStartTime())) {
            timeOfDay = "afternoon";
        }

        if (date.after(getEveningStartTime())) {
            timeOfDay = "evening";
        }
        return timeOfDay;
    }

    public final String getGreeting(String name) throws
            IllegalArgumentException {
        if (name == null || name.isEmpty()) {
            throw new IllegalArgumentException(ERROR);
        }
        return "Good " + determineTimeOfDay()+" " + name + "!";
    }

    private Calendar getNoonStartTime() {
        Calendar noonStart = Calendar.getInstance();
        noonStart.set(Calendar.HOUR_OF_DAY, 12);
        noonStart.set(Calendar.MINUTE, 0);
        noonStart.set(Calendar.SECOND, 0);
        return noonStart;
    }

    private Calendar getEveningStartTime() {
        Calendar eveningStart = Calendar.getInstance();
        eveningStart.set(Calendar.HOUR_OF_DAY, 18);
        eveningStart.set(Calendar.MINUTE, 0);
        eveningStart.set(Calendar.SECOND, 0);
        return eveningStart;
    }
}
