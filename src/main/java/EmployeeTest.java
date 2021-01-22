import models.Employee;

import java.util.Date;

public class EmployeeTest {
    public static void main(String[] args) {
        Employee chris  = new Employee();

        chris.setEmpNo(1L);
        chris.setFirst_name("Christian");
        chris.setLast_name("Parker");
        chris.setBirthDate(new Date());
        chris.setHireDate(new Date());
        chris.setGender('m');
        System.out.println("fullName = " + chris.getFirst_name()+ " " + chris.getLast_name());
    }
}
