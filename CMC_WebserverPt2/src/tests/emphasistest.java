package tests;
import CMC_Classes.*;

import static org.junit.Assert.*;

import org.junit.Test;

public class emphasistest {
DataBaseHome test = new DataBaseHome();
String[] emphasis = {"hoodrat-stuff", "crazy stuff", "maff", "baller", "dont-even-ask","hoodrat-stuff", "crazy stuff", "maff", "baller", "dont-even-ask"};
	@Test
	public void test() {
		//test.addFullEmphasis(test.getSchools().get(1).getSchool(), emphasis );
		test.removeAllEmphasis(test.getSchools().get(1).getSchool());
	}

}
