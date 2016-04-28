package CMC_Classes;

import java.util.*;

import dblibrary.project.csci230.*;

public class DataBaseHome{
 // private UniversityDBLibrary database;
//private DataBase database;
private UniversityDBLibrary dummydatabase;

public DataBaseHome(){
  dummydatabase = new UniversityDBLibrary("dropdataba", "dropdataba", "ccmt4");
 // dummydatabase = data; 
}

public User login(String username, String password){
	if(username.equals(""))
		throw new IllegalArgumentException();
	else if(password.equals(""))
		throw new IllegalArgumentException();
  String[][] users = dummydatabase.user_getUsers();
    for(int i=0; i< users.length ; i++){
      //System.out.println(users[i][2] + " " + users[i][3]);
    //	System.out.println(users[i][2] + " -- " + users[i][3]);
       if(username.equals(users[i][2]) && password.equals(users[i][3]))
         return new User(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0),'a' );
  }
    return null;
}

public User addUser(String firstname, String lastname, String username, String password, char type){
	if(type != 'a' && type != 'u')
		throw new IllegalArgumentException("type is not a or u");
	else if(firstname.equals(""))
		throw new IllegalArgumentException("empty argument");
	else if(lastname.equals(""))
		throw new IllegalArgumentException("empty argument");
	else if(username.equals(""))
		throw new IllegalArgumentException("empty argument");
	else if(password.equals(""))
		throw new IllegalArgumentException("empty argument");
	else if(type == ' ')
		throw new IllegalArgumentException("empty argument");
	
  if(dummydatabase.user_addUser(firstname,lastname,username,password, type) == -1)
	  throw new IllegalArgumentException("User couldnt be added to the system");
  return new User(firstname,lastname,username,password, type,'a');
}
    public ArrayList<User> getUsers(){
    String[][] temp = dummydatabase.user_getUsers();
    ArrayList<User> users = new ArrayList<User>();
    
    for(int i=0; i<temp.length;i++){
      users.add(new User(temp[i][0],temp[i][1],temp[i][2],temp[i][3],temp[i][4].charAt(0),temp[i][5].charAt(0)));
    }
      return users;
    }
    
    public User editUser(String firstname, String lastname, String username, String password, char type,char status){
    	if(type != 'a' && type != 'u')
    		throw new IllegalArgumentException("type is not a or u");
    	else if(firstname.equals(""))
    		throw new IllegalArgumentException("empty argument 1");
    	else if(lastname.equals(""))
    		throw new IllegalArgumentException("empty argument 2");
    	else if(username.equals(""))
    		throw new IllegalArgumentException("empty argument 3");
    	else if(password.equals(""))
    		throw new IllegalArgumentException("empty argument 4");
    	else if(status != 'Y' && status != 'N' )
    		throw new IllegalArgumentException("empty argument 5");
    	
      if(dummydatabase.user_editUser(username, firstname,lastname,password, type,status) == 0)
    	  throw new IllegalArgumentException("user not found in the database");
      return new User(firstname,lastname,username,password,type,status);
    }
    
    public User deactivateUser(int id){
      if(id < 0)
    	  throw new IllegalArgumentException("id can not be less than 0");
      String[][] temp = dummydatabase.user_getUsers();
      if(id >= temp.length)
    	  throw new IllegalArgumentException("id to large");
      dummydatabase.user_editUser(temp[id][2],temp[id][0],temp[id][1],temp[id][3],temp[id][4].charAt(0),'d');
                  return new User(temp[id][0],temp[id][1],temp[id][2],temp[id][3],temp[id][4].charAt(0),'d');
    }
    
    public ArrayList<School> getSchools(){
      String[][] temp = dummydatabase.university_getUniversities();
      ArrayList<School> ret = new ArrayList<School>();
      for(int i=1; i<temp.length; i++){
    	  School school = new School(temp[i][0],temp[i][1],temp[i][2],temp[i][3],Integer.parseInt(temp[i][4]),Double.parseDouble(temp[i][5]),Double.parseDouble(temp[i][6]),
                  Double.parseDouble(temp[i][7]),Double.parseDouble(temp[i][8]),Double.parseDouble(temp[i][9]),Integer.parseInt(temp[i][10]),
                  Double.parseDouble(temp[i][11]),Double.parseDouble(temp[i][12]),Integer.parseInt(temp[i][13]),
                  Integer.parseInt(temp[i][14]),Integer.parseInt(temp[i][15]));
          String[] emp = this.getSchoolEmphasisByID(i);
    	  for(int t=0; t<5; t++){
    		  school.addEmphasis(emp[t]);
    	  }
        ret.add( school);
      }
      return ret;
    }
   // Integer.parseInt(  Double.parseDouble(
                     
    public School getSchool(int id){
      String[][] temp = dummydatabase.university_getUniversities();
      return new School(temp[id][0],temp[id][1],temp[id][2],temp[id][3],Integer.parseInt(temp[id][4]),Double.parseDouble(temp[id][5]),Double.parseDouble(temp[id][6]),
              Double.parseDouble(temp[id][7]),Double.parseDouble(temp[id][8]),Double.parseDouble(temp[id][9]),Integer.parseInt(temp[id][10]),
              Double.parseDouble(temp[id][11]),Double.parseDouble(temp[id][12]),Integer.parseInt(temp[id][13]),
              Integer.parseInt(temp[id][14]),Integer.parseInt(temp[id][15]));
    }
    
    public School editSchool(String school,String state, String location, String control, int numStudents, double percentFemale, double satVerbal, double satMath,
                           double expenses, double percentFinAid, int numApplicants, double percentAdmitted, double percentEnrolled, int academicScale,
                           int socialScale, int qualOflife, String[] emphasis, int id){
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
	  	  /*
  	  if(school.equals("") || state.equals("") || location.equals("") || control.equals("") || numStudents<=0 || percentFemale<0 || 
			  percentFemale > 100 || satVerbal<=0 || satVerbal>800 || satMath<=0 || satMath>800 || expenses <= 0 || percentFinAid<=0 ||
			  percentFinAid>100 || numApplicants<=0 || percentAdmitted <= 0 || percentAdmitted > 100 || percentEnrolled <= 0 || percentEnrolled > 100 ||
			  academicScale<1 || academicScale>5 || socialScale>5 || socialScale<1 || qualOflife<1 || qualOflife>5)
		  throw new IllegalArgumentException();
		  */
      
   if(dummydatabase.university_editUniversity(school, state,location, control, numStudents, percentFemale, satVerbal, satMath,
      expenses, percentFinAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualOflife) == -1)
	   throw new IllegalArgumentException("university could not be changed in the database");
  /*
      String[][] temp = dummydatabase.university_getEmphases();
      for(int i=0; i<temp[id].length; i++){
       if(dummydatabase.university_removeUniversityEmphasis(school, temp[id][i]) == -1)
    	   System.out.println("emphasis is garbage removing"); 
      }
      for(int i=0; i<emphasis.length; i++){
       if(dummydatabase.university_addUniversityEmphasis(school, emphasis[i]) == -1)
    	   System.out.println("adding emphasis is complete garbage \n ----------"); 
      }
      */
      return new School(school,state,location,control,numStudents,satVerbal,satMath,numApplicants,
                        percentFemale,expenses,percentFinAid,percentAdmitted,percentEnrolled,
                        academicScale,socialScale,qualOflife,emphasis);
    }
    
  public School addSchool(String school, String state, String location, String control, int numStudents,
			double percentFemale, double satVerbal, double satMath, double expenses, double percentFinAid, int numApplicants,
			double percentAdmitted, double percentEnrolled, int academicScale, int socialScale, int qualOflife
			){
	  if(school.equals("") || state.equals("") || location.equals("") || control.equals("") || numStudents<=0 || percentFemale<0 || 
			  percentFemale > 100 || satVerbal<=0 || satVerbal>800 || satMath<=0 || satMath>800 || expenses <= 0 || percentFinAid<=0 ||
			  percentFinAid>100 || numApplicants<=0 || percentAdmitted <= 0 || percentAdmitted > 100 || percentEnrolled <= 0 || percentEnrolled > 100 ||
			  academicScale<1 || academicScale>5 || socialScale>5 || socialScale<1 || qualOflife<1 || qualOflife>5)
		  throw new IllegalArgumentException();
	  
	  if(dummydatabase.university_addUniversity(school, state, location, control, numStudents,percentFemale, satVerbal, satMath, expenses,
			  percentFinAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale,
				qualOflife) == -1)
		  throw new IllegalArgumentException("add university error in database home");
	  
	  return new School(school, state, location, control, numStudents,percentFemale, satVerbal, satMath, expenses,
			  percentFinAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale,
				qualOflife);
  }
  //ants, double percentAdmitted, double percentEnrolled, int academicsScale, int socialScale, int qualityOfLifeScale)
    public void removeSchool(String name){
    	dummydatabase.university_deleteUniversity(name);
    }
    public void removeUser(String name){
    	dummydatabase.user_deleteUser(name);
    }
    public void saveSchool(int id, String user){
    	dummydatabase.user_saveSchool(user, this.getSchool(id).getSchool());
    }
    public String[] getSchoolEmphasisByID(int id){
    	String school = this.getSchool(id).getSchool();
    	String[][] emphasis = dummydatabase.university_getNamesWithEmphases();
    	String[] retemp = new String[5];
    	int count = 0;
    	for(int i=0; i<emphasis.length; i++){
    		//System.out.print(emphasis[i][0] + ": " + emphasis[i][1]+ "\n");
    	}
    	for(int i=0; i<emphasis.length; i++){
    		if(school.equals(emphasis[i][0])){
    			retemp[count] = emphasis[i][1];
    			count ++;
    		}
    		if(count == 5)
    			i = 1000;
    	}
    	return retemp;
    }
    
    public void addEmphasis(String school, String emphasis){
    	if(dummydatabase.university_addUniversityEmphasis(school, emphasis) == -1)
    		throw new IllegalArgumentException("emphasis '"+emphasis+"' count not be added to school: "+ school+".");
    }
    
    public void addFullEmphasis(String school, String[] emphasis){
    	for(int i=0; i<emphasis.length/2; i++){
    		if(dummydatabase.university_removeUniversityEmphasis(school, emphasis[i+5]) == -1){
    			throw new IllegalArgumentException("emphasis '"+emphasis[i]+"' count not be removed from school: "+ school+".");
    		}
        	if(dummydatabase.university_addUniversityEmphasis(school, emphasis[i]) == -1)
        		throw new IllegalArgumentException("emphasis '"+emphasis[i]+"' count not be added to school: "+ school+".");
    	}
    }
}

