public class Employee implements Comparable {
	
    public Long id;
    public String name;
    public String phone;
    
    public Employee(Long id, String name, String phone) {
        this.id = id;
        this.name = name;
        this.phone = phone;
    }
    
    public Integer compareTo(Object compareTo) {
        Employee compareToEmp = (Employee)compareTo;
        if(id == compareToEmp.id)
            return 0;
        if(id > compareToEmp.id)
            return 1;
        return -1;
    }
    
}