package model;
import java.util.HashMap;
import java.util.Map;

public class UserMap {
    public static final Map<String, User> myMap;
    static
    {
        myMap = new HashMap<String, User>();
        myMap.put("Rakesh", new User("Rakesh","123"));
        myMap.put("Jack", new User("Jack","123"));
        myMap.put("Jenni", new User("Jenni","123"));
    }
}
