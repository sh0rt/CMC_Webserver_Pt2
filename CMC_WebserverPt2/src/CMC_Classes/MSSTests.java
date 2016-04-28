package CMC_Classes;
import java.util.*;


public class MSSTests {

	public static void main(String[] args) {
		ArrayList<School> schools = new ArrayList<School>();
		School sch = new School("", null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		User u = new User("Name", "Name", "user", "pass", 'a', 'y');
		StudentHome sh = new StudentHome(u);
		DataBaseHome dbh = new DataBaseHome();

		schools.add(sch);
		u.setSchools(schools);
		dbh.getSavedSchools("aaa");
		System.out.println("*****************************************");
		sh.getSavedSchools("luser");
	}

}
