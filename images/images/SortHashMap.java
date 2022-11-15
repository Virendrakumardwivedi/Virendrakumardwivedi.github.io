package Q4;
import java.util.*;

public class SortHashMap {

    public Map<String,Student> sortByVal(Map map){
        Set <Map.Entry<String,Student>> set = map.entrySet();
        List<Map.Entry<String,Student>> list = new ArrayList<>(set);
        list.sort(new sortByMarks());

        Map<String,Student> link = new LinkedHashMap<>();
        for(Map.Entry<String,Student> sort : list){
            link.put(sort.getKey(),sort.getValue());
        }
        return link;
    }

    public static void main(String[] args) {
        Map<String,Student> map =  new HashMap<>();
        map.put("Raj",new Student(1,"Ankit",300));
        map.put("Mp",new Student(2,"Aman",400));
        map.put("Haryana",new Student(9,"Ajay",280));
        map.put("Guj",new Student(6,"Arun",420));
        map.put("Goa",new Student(7,"Gopal",600));

        SortHashMap sortHashMap = new SortHashMap();

        LinkedHashMap<String,Student> sorting = (LinkedHashMap<String, Student>) sortHashMap.sortByVal(map);
        Set<Map.Entry<String,Student>> setV = sorting.entrySet();

    for (Map.Entry<String,Student> val : setV){
        System.out.println(val.getKey() + "-" + val.getValue());
    }
    }
}
