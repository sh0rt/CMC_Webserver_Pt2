package CMC_Classes;

import static org.junit.Assert.*;

import org.junit.Test;

public class emphasiscrap {
DataBaseHome home = new DataBaseHome();

	@Test
	public void test() {
		String[] emp = home.getSchoolEmphasisByID(3);
		System.out.println(emp[0]);
		System.out.println(emp[1]);
		System.out.println(emp[2]);
		System.out.println(emp[3]);
		System.out.println(emp[4]);
		
	}

}
