package _01_intro_to_static;

public class Athlete {
    static int nextBibNumber;
    static String raceLocation = "New York";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
    }

    public static void main(String[] args) {
        //create two athletes
    	Athlete bob = new Athlete("bob", 10);
    	Athlete dave = new Athlete("dave", 20);
    	
        //print their names, bibNumbers, and the location of their race.
    	System.out.println(bob.name + " " + bob.speed + " " + bob.nextBibNumber + " " + bob.raceLocation);		
    	raceLocation = "California";
    	System.out.println(dave.name + " " + dave.speed + " " + dave.bibNumber + " " + dave.raceLocation);
    	System.out.println(bob.raceStartTime);
    	raceStartTime = "12.00pm";
    	System.out.println(dave.raceStartTime);
    }
}
