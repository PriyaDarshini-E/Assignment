function startOrder() {
      alert("Welcome to our Tea Shop!");

      let teaType = prompt("Enter Tea Type (Masala/Ginger/Lemon/Green):");
      let qty = prompt("Enter Quantity:");

      let price = 0;
      if (teaType.toLowerCase() === "masala") {
        price = 15;
      } else if (teaType.toLowerCase() === "ginger") {
        price = 20;
      } else if (teaType.toLowerCase() === "lemon") {
        price = 25;
      } else if (teaType.toLowerCase() === "green") {
        price = 30;
      } else {
        alert("Sorry, we don't have that tea!");
        return;
      }

      let total = price * qty;
      alert("You ordered " + qty + " cup(s) of " + teaType + " Tea.");
      alert("Your total bill is ₹" + total);

      let payment = prompt("Enter Payment Amount (in ₹):");

      if (payment >= total) {
        let balance = payment - total;
        alert("Payment Successful! Balance: ₹" + balance);
        alert("Thank you for visiting our Tea Shop ☕");
      } else {
        alert("Insufficient payment! Please pay the full amount.");
      }
    }