package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class javaPracticeStepdefs {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }

    @Given("I print Hello Team.")
    public void iPrintHelloTeam() {
        System.out.println("Hello Team");
    }

    @Given("I compare {string} and {string}")
    public void iCompareAnd(String sWord1, String sWord2) {
        System.out.println("My first word is " + sWord1 + " and second word is " + sWord2);
        System.out.println("First char for both strings: " + sWord1.charAt(0) + ", " + sWord2.charAt(0));
        System.out.println("The length of each string: " + sWord1.length() + ", " + sWord2.length());
        System.out.println("Is First string equal to Second: " + sWord1.equals(sWord2));
        System.out.println("Is First string equal to Second using ignoring case " + sWord1.equalsIgnoreCase(sWord2));
        System.out.println("Is First string equal to Second using Upper case " + sWord1.equals(sWord2.toUpperCase()));
    }


    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sURL) {
//        if (sURL.equals("Google")) {
//            System.out.println("https://www.google.com/");
//        }else if (sURL.equals("wiki")) {
//            System.out.println("https://www.wiki.com/");
//        }
//        else {
//            System.out.println("No URL found");
//        }
        switch (sURL) {
            case "google":
                System.out.println("https://www.google.com/");
                break;
            case "amazon":
                System.out.println("https://www.amazon.com/");
                break;
            case "ebay":
                System.out.println("https://www.ebay.com/");
                break;
            case "wiki":
                System.out.println("https://www.wiki.com/");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Given("I practice with array operations")
    public void iPracticeWithArrayOperations() {
        int[] numbers = {5, 8, 5, 9, 1, 4};
        String[] cars = {"Ford", "Toyota", "BMW", "others"};
        System.out.println("The first car is " + cars[0]);

        for (int i = 0; i <= 3; i++) {
            System.out.println("Print cars " + cars[i]);
        }
        System.out.println("Amount of the cars " + cars.length);
        System.out.println("I have " + numbers[1] + cars[1]);
    }

    @Given("I practice with numbers {int} and {int}")
    public void iPracticeWithNumbersAnd(int iNum1, int iNum2) {
        int iSum = iNum1 + iNum2;
        int iDif = iNum1 - iNum2;
        int iProd = iNum1 * iNum2;
        int iQuot = iNum1 / iNum2;

        System.out.println(iNum1 + " + " + iNum2 + " = " + iSum);
        System.out.println(iNum1 + " - " + iNum2 + " = " + iDif);
        System.out.println(iNum1 + " * " + iNum2 + " = " + iProd);
        System.out.println(iNum1 + " / " + iNum2 + " = " + iQuot);
    }

    @Given("I check number {int}")
    public void iCheckNumber(int iNum) {
        int sum = iNum % 2;
        //boolean result=sum==0;
        System.out.println("Number " + iNum + " is even");
        System.out.println("Number 11 is odd");
    }


    @Given("I find the cost of {int} pounds of {string}")
    public void iFindTheCostOfPoundsOf(int x, String fruit) {
        int fru = x;
        double ap = x * 0.99;
        double cher = x * 2.99;
        double grf = x * 1.50;
        double or = x * 0.89;
        switch (fruit) {
            case "apple":
                System.out.println("Cost of apple = $ " + ap);
                break;
            case "cherries":
                System.out.println("Cost of cherries = $ " + cher);
                break;
            case "grapefruit":
                System.out.println("Cost of grapefruit = $ " + grf);
                break;
            case "orange":
                System.out.println("Cost of oranges = $ " + or);
                break;
            default:
                System.out.println("This product is unavailable");
        }

    }

    @Given("I print out all elements in the array")
    public void iPrintOutAllElementsInTheArray() {
        //declare array
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        //for loop to print element of array
        for (int i = 0; i < week.length; i++) {
            System.out.println(week[i]);
        }
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int iPer) {
        if (iPer >=90) {
            System.out.println("You passed with Grade A");
        } else if (iPer >=89) {
            System.out.println("You passed with Grade B");
        } else if (iPer >=70) {
            System.out.println("You passed with Grade C");
        } else if (iPer >=60) {
            System.out.println("You Grade is D, go to retest");
        } else if (iPer >=59) {
            System.out.println("You failed test ");
        } else {
            System.out.println("Not allowed for testing");
        }
    }

    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int iF) {
        //convert foot to centimeters
        int ft= iF;
        double c = iF* 30.48;
        System.out.println(iF+ " foot equals " + c + " centimeters");
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int iG) {
        //convert gallon to litres
        int gal = iG;
        double l = iG*3.79;
        System.out.println(iG+ " US gallon equal " +l+ " liters");
    }

    @And("I convert {int} Celcius to Fahrenheit")
    public void iConvertCelciusToFahrenheit(int iC){
        //convert C to F
        int cel =iC;
        int f=(iC*9/5)+32;
        System.out.println(iC+ " Celsius equals " +f+ " Fahrenheit");
    }
}



