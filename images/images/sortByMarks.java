package Q4;
import java.util.Map;


public class sortByMarks implements java.util.Comparator<Map.Entry<String, Student>> {

    public int compare(Map.Entry<String, Student> o1, Map.Entry<String, Student> o2) {
        return o1.getValue().getMarks() > o2.getValue().getMarks() ? +1:-1;
    }
}
