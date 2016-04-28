package CMC_Classes;

/** AdminHome
* @authors Megan Pekarek, Cassie Meyer, Tyler Weiss, Conor Lorsung
* @version March 15th, 2016
*/

import java.util.*;

public class AdminHome {

	private ArrayList<User> users;
	private ArrayList<School> schools;
	//private User thisUser;
	private DataBaseHome database;

	/**
	 * Sets parameters equal to correct variables
	 * 
	 * @param user,
	 *            database
	 */
	public AdminHome(User user) {
		super();
		this.database = new DataBaseHome();
	//	this.thisUser = user;

		this.users = database.getUsers();
		this.schools = database.getSchools();
	}

	/**
	 * gets schools from list
	 * 
	 * @return schools
	 */
	public ArrayList<School> getSchools() {
		return schools;
	}

	/**
	 * gets users from list
	 * 
	 * @return users
	 */
	public ArrayList<User> getUsers() {
		return database.getUsers();
	}

	/**
	 * Edits school by it's parameters
	 * 
	 * @param school,
	 *            state, location, control, numStudents, percentFemale
	 *            satVerbal, satMath, expenses, percentFinAid, numApplicants,
	 *            percentAdmitted percentEnrolled, academicScale, socialScale,
	 *            qualOflife, emphasis
	 * @return schools
	 */
	public School editSchool(String school, String state, String location, String control, int numStudents,
			double percentFemale, double satVerbal, double satMath, double expenses, double percentFinAid, int numApplicants,
			double percentAdmitted, double percentEnrolled, int academicScale, int socialScale, int qualOflife,
			String[] emphasis) {
	  	  if(school.equals("") || state.equals("") || location.equals("") || control.equals("") || numStudents<=0 || percentFemale<0 || 
				  percentFemale > 100 || (satVerbal<=0 && satVerbal !=-1) || satVerbal>800 || (satMath<=0 && satMath != -1) || satMath>800 || (expenses <= 0 && expenses != -1) ||
				  (percentFinAid<=0 && percentFinAid != -1) || percentFinAid>100 || (numApplicants<=0 && numApplicants != -1) || (percentAdmitted <= 0 && percentAdmitted != -1)
				  || percentAdmitted > 100 || percentEnrolled <= 0 || percentEnrolled > 100 || academicScale<1 || academicScale>5 || socialScale>5 || (socialScale<1 && socialScale != -1)
				  || qualOflife<1 || qualOflife>5){
			  if(school.equals("")){System.out.println("error with school: " + school);}
			  if(state.equals("")){System.out.println("error with state: " + state);}
			  if(location.equals("")){System.out.println("error with location: " + location);}
			  if(numStudents<=0){System.out.println("error with numStudentsl: " + numStudents);}
			  if(percentFemale<0 || percentFemale > 100){System.out.println("error with percentFemale: " + percentFemale);}
			  if(satVerbal<=0 || satVerbal>800){System.out.println("error with satVerbal: " + satVerbal);}
			  if(satMath<=0 || satMath>800){System.out.println("error with satMath: " + satMath);}
			  if(expenses <= 0 ){System.out.println("error with expenses: " + expenses);}
			  if(percentFinAid<=0 ||percentFinAid>100){System.out.println("error with percentFinAid: " + percentFinAid);}
			  if(numApplicants<=0){System.out.println("error with num Applicants: " + numApplicants);}
			  if(percentAdmitted <= 0 || percentAdmitted > 100){System.out.println("error with percentAdmitted: " + percentAdmitted);}
			  if(percentEnrolled <= 0 || percentEnrolled > 100){System.out.println("error with percentEnrolled: " + percentEnrolled);}
			  if(academicScale<1 || academicScale>5){System.out.println("error with academic scale: " + academicScale);}
			  if(socialScale>5 || socialScale<1){System.out.println("error with socialScale: " + socialScale);}
			  if(qualOflife<1 || qualOflife>5){System.out.println("error with qualOfLife: " + qualOflife);}
			  throw new IllegalArgumentException("something doesnt look right");

	  	  }
		int i = 0;
		while (i < schools.size() && !schools.get(i).getSchool().equals(school)) {
			i++;
		}
		if (i == schools.size())
			return null;
		else {
			database.editSchool(school, state,location, control, numStudents, percentFemale, satVerbal, satMath,
				      expenses, percentFinAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualOflife,emphasis,i);
			/*
			schools.get(i).setState(state);
			schools.get(i).setLocation(location);
			schools.get(i).setControl(control);
			schools.get(i).setNumStudents(numStudents);
			schools.get(i).setPercentFemale(percentFemale);
			schools.get(i).setSatVerbal(satVerbal);
			schools.get(i).setSatMath(satMath);
			schools.get(i).setExpenses(expenses);
			schools.get(i).setPercentFinAid(percentFinAid);
			schools.get(i).setNumApplicants(numApplicants);
			schools.get(i).setPercentAdmitted(percentAdmitted);
			schools.get(i).setPercentEnrolled(percentEnrolled);
			schools.get(i).setAcademicScale(academicScale);
			schools.get(i).setSocialscale(socialScale);
			schools.get(i).setQualOfLife(qualOflife);
			*/
		}
		return schools.get(i);

	}

	/**
	 * Adds new school by its parameters.
	 * 
	 * @param school,
	 *            state, location, control, numStudents, percentFemale
	 *            satVerbal, satMath, expenses, percentFinAid, numApplicants,
	 *            percentAdmitted percentEnrolled, academicScale, socialScale,
	 *            qualOflife, emphasis\
	 * @return schools
	 */
	public School addNewSchool(String school, String state, String location, String control, int numStudents,
			double percentFemale, double satVerbal, double satMath, double expenses, double percentFinAid, int numApplicants,
			double percentAdmitted, double percentEnrolled, int academicScale, int socialScale, int qualOflife,
			String[] emphasis) {

		  if(school.equals("") || state.equals("") || location.equals("") || control.equals("") || numStudents<=0 || percentFemale<0 || 
				  percentFemale > 100 || satVerbal<=0 || satVerbal>800 || satMath<=0 || satMath>800 || expenses <= 0 || percentFinAid<=0 ||
				  percentFinAid>100 || numApplicants<=0 || percentAdmitted <= 0 || percentAdmitted > 100 || percentEnrolled <= 0 || percentEnrolled > 100 ||
				  academicScale<1 || academicScale>5 || socialScale>5 || socialScale<1 || qualOflife<1 || qualOflife>5)
			  throw new IllegalArgumentException();
		  
		School temp = new School(school, state, location, control, numStudents, satVerbal, satMath, numApplicants,
				percentFemale, expenses, percentFinAid, percentAdmitted, percentEnrolled, academicScale, socialScale,
				qualOflife, emphasis);
		database.addSchool(school, state, location, control,numStudents,percentFemale,satVerbal, satMath, expenses, percentFinAid,
				numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualOflife);
		schools.add(temp);
		return temp;
	}
/*
 * java.lang.String school,
                                    java.lang.String state,
                                    java.lang.String location,
                                    java.lang.String control,
                                    int numberOfStudents,
                                    double percentFemales,
                                    double SATVerbal,
                                    double SATMath,
                                    double expenses,
                                    double percentFinancialAid,
                                    int numberOfApplicants,
                                    double percentAdmitted,
                                    double percentEnrolled,
                                    int academicsScale,
                                    int socialScale,
                                    int qualityOfLifeScale)
                                    
 */
	/**
	 * adds new user by completing its parameters
	 * 
	 * @param firstName,
	 *            lastName, username, password, type
	 * @return users
	 */
	public User addNewUser(String firstName, String lastName, String username, String password, char type) {
    	if(type != 'a' && type != 'u')
    		throw new IllegalArgumentException("type is not a or u");
    	else if(firstName.equals(""))
    		throw new IllegalArgumentException("empty argument 1");
    	else if(lastName.equals(""))
    		throw new IllegalArgumentException("empty argument 2");
    	else if(username.equals(""))
    		throw new IllegalArgumentException("empty argument 3");
    	else if(password.equals(""))
    		throw new IllegalArgumentException("empty argument 4");
		User temp = new User(firstName, lastName, username, password, type, 'a');
		users.add(temp);
		database.addUser(firstName, lastName, username, password, type);
		return temp;
	}

	/**
	 * edits a user by changing any of its parameters
	 * 
	 * @param firstName,
	 *            lastName, username, password, type, status
	 * @return user
	 */
	public User editUser(String firstName, String lastName, String username, String password, char type, char status) {
    	if(type != 'a' && type != 'u')
    		throw new IllegalArgumentException("type is not a or u");
    	else if(firstName.equals(""))
    		throw new IllegalArgumentException("empty argument 1");
    	else if(lastName.equals(""))
    		throw new IllegalArgumentException("empty argument 2");
    	else if(username.equals(""))
    		throw new IllegalArgumentException("empty argument 3");
    	else if(password.equals(""))
    		throw new IllegalArgumentException("empty argument 4");
    	else if(status != 'Y' && status != 'N')
    		throw new IllegalArgumentException("empty argument 5");
		int i = 0;
		while (i < users.size() && users.get(i).getUsername().equals(username)) {
			i++;
		}
		if (i == users.size())
			return null;
		else {
			users.get(i).setFirstName(firstName);
			users.get(i).setLastName(lastName);
			users.get(i).setType(type);
			users.get(i).setPassword(password);
			users.get(i).setStatus(status);
		}
		database.editUser(firstName, lastName, username, password, type, status);
		return users.get(i);
	}

	/**
	 * saves changes made to edit school/user
	 */
	public void save() {
		for (int i = 0; i < schools.size(); i++) {
			School temp = schools.get(i);
			database.editSchool(temp.getSchool(), temp.getState(), temp.getLocation(), temp.getControl(),
					temp.getNumStudents(), temp.getPercentFemale(), temp.getSatVerbal(), temp.getSatMath(),
					temp.getExpenses(), temp.getPercentFinAid(), temp.getNumApplicants(), temp.getPercentAdmitted(),
					temp.getPercentEnrolled(), temp.getAcademicScale(), temp.getSocialscale(), temp.getQualOfLife(),
					temp.getEmphasis(), i);
		}
		for (int i = 0; i < users.size(); i++) {
			User temp = users.get(i);
			database.editUser(temp.getFirstName(), temp.getLastName(), temp.getUsername(), temp.getPassword(),
					temp.getType(), temp.getStatus());

		}
	}

	/**
	 * gets user through ID
	 * 
	 * @param ID
	 * @return users ID
	 */
	public User getUser(int ID) {
		if(this.users.size() == ID || ID < 0)
			throw new IllegalArgumentException();
		return this.database.getUsers().get(ID);
	}
	
public String[] getEmphasis(int id){
	return database.getSchoolEmphasisByID(id);
}

public void setEmphasis(String school, String[] emphasis){
	database.addFullEmphasis(school, emphasis);
}
}
