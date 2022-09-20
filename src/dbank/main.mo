import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank {
  stable var currentValue: Float = 300; 
  // Adds Orthogonal Persistence to the variable currentValue by adding the keyword 'stable' in front of the var.
  // Without the stable keyword, the expression 'var currentValue = 300;' is a flexible variable.
  currentValue := 300;
  Debug.print(debug_show(currentValue));


  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 234454325345643543654; 
  // Debug.print(debug_show(id)); 

  public func topUp(amount: Float){ // 'Nat' -> natural number.
    currentValue += amount;
    Debug.print(debug_show(currentValue));
    // 'debug_show()' used to print values other than string.
  };

  // Allows users to withdraw an amount from the currentValue
  // Decrease the currentValue by the amount 

  public func withdraw(amount: Float){
    let tempValue: Float = currentValue - amount;
    if (tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than zero.");
    }
  };

  // 'async' -> keyword used to run the function as an asynchronous function which means 
  // to run the function according to its compilation time and does not have to wait for 
  // other functions or expressions

  public query func checkBalance(): async Float {
    return currentValue;
  };
  
  public func compound(){
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }

}











