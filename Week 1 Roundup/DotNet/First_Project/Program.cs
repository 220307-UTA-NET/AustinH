//Try not to declare variables at top. DECLARE THEM AS LOCALLY AS POSSIBLE
// Indicates a comment
//Utility is Console; WriteLine is a dot method
//Objects are a way to thin about everything in code as things. This allows us to describe it
//We can use the properties of the object to describe it
//C# is object oriented. 
//C# is case sensitive
//Variables have a history. 
//Variable types dont change

string variable;           //create variable
variable = "hi Amin!";     //put content in object (or can do so on initialization)
Console.WriteLine("This is text!");
Console.WriteLine(variable);


variable = "let's reuse this variable";
Console.WriteLine(variable);


variable = Console.ReadLine(); //Takes what comes in (always a string) and store in variable
Console.WriteLine(varible);

int number = 5; //Integers accept only whole number
double number2 = 5.5;
float number3 = 5.5665433F; //F makes literal declaration

Console.WriteLine("This is an nt: " + number);
Console.WriteLine("This is a float: " + number2); //concatination: Takes string literal in qutoes and display. The '+' then appens the value to that string
Console.WriteLine("This is a double: " + number3);
Console.WriteLine("Let's add strings! " + variable);

int x, y, z; //declare variables
x = 2;
y = 3;
z = 4;

Console.WriteLine(x);


z = x + y;
Console.WriteLine(z);

if(z > y){
  Console.WriteLine("Z is greater than y");
}else if{
    Console.WriteLine("z is less than y");
}else{
  Console.WriteLine("z is equal to y");
}
