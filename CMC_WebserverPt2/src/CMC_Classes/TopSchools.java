package CMC_Classes;
import java.util.*;

public class TopSchools {
public ArrayList<School> 
	cheapest, expensive,
	largest,
	smallest,
	lowestAdmitted, mostAdmitted;

	public TopSchools() {
		ArrayList<School> schools = new DataBaseHome().getSchools();
		this.getCheapest(schools);
		this.getExpensive(schools);
		this.lowestAdmitted(schools);
		this.mostAdmitted(schools);
		this.largest(schools);
		this.smallest(schools);
	}

public void getCheapest(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getExpenses() < retval.get(f).getExpenses()){
				System.out.println("cheaper");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.cheapest = retval;
}

public void getExpensive(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			//System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getExpenses() > retval.get(f).getExpenses()){
				System.out.println("expensive");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.expensive = retval;
}

public void lowestAdmitted(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			//System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getPercentAdmitted() < retval.get(f).getPercentAdmitted()){
				System.out.println("expensive");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.lowestAdmitted = retval;
}

public void mostAdmitted(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			//System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getPercentAdmitted() > retval.get(f).getPercentAdmitted()){
				System.out.println("expensive");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.mostAdmitted = retval;
}

public void largest(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			//System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getNumStudents() > retval.get(f).getNumStudents()){
				System.out.println("expensive");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.largest = retval;
}

public void smallest(ArrayList<School> schools){
	ArrayList<School> retval = new ArrayList<School>();
	//ArrayList<String> retval = new ArrayList<String>();
	for(int i=0; i<10; i++){
		retval.add(schools.get(i));
	}
	System.out.println(schools.size());
	
	for(int i=10; i<schools.size(); i++){
		for(int f=0; f<10; f++){
			//System.out.println(schools.get(i).getExpenses() +" < " + retval.get(f).getExpenses());
			if(schools.get(i).getNumStudents() < retval.get(f).getNumStudents()){
				System.out.println("expensive");
				retval.add(f,schools.get(i));
				f = 10;
			}
			if(retval.size() > 10)
				retval.remove(retval.size()-1);
		}
	}
	this.smallest = retval;
}

public ArrayList<String> getPageInfo(char top){
	ArrayList<String> retval = new ArrayList<String>();
	switch(top){
	case 'a':
		retval.add("Top 10 Largest Schools");
		for(int i=0; i<10; i++){
			retval.add(largest.get(i).getSchool());
		}
		break;
	case 'b':
		retval.add("Top 10 Smallest Schools");
		for(int i=0; i<10; i++){
			retval.add(smallest.get(i).getSchool());
		}
		break;
	case 'c':
		retval.add("Top 10 Cheapest Schools");
		for(int i=0; i<10; i++){
			retval.add(cheapest.get(i).getSchool());
		}
		break;
	case 'd':
		retval.add("Top 10 Expensive Schools");
		for(int i=0; i<10; i++){
			retval.add(expensive.get(i).getSchool());
		}
		break;
	case 'f':
		retval.add("Top 10 Schools with the Lowest Admission rates");
		for(int i=0; i<10; i++){
			retval.add(lowestAdmitted.get(i).getSchool());
		}
		break;
	case 'g':
		retval.add("Top 10 Schools with the highest Admission rates");
		for(int i=0; i<10; i++){
			retval.add(mostAdmitted.get(i).getSchool());
		}
		break;
	}
	return retval;
}

public static void main(String[] args){
TopSchools top = new TopSchools();
System.out.println();
System.out.println("cheapest:");
for(int i=0; i<10; i++){
	System.out.println(top.cheapest.get(i).getSchool());
}
System.out.println();
System.out.println("expensive:");
for(int i=0; i<10; i++){
	System.out.println(top.expensive.get(i).getSchool());
}
System.out.println();
System.out.println("lowestAdmitted:");
for(int i=0; i<10; i++){
	System.out.println(top.lowestAdmitted.get(i).getSchool());
}
System.out.println();
}
}
