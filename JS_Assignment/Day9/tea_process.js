 // Tea shop menu array
    const teaMenu = [
      { name: "Masala Tea", price: 15, type: "milk" },
      { name: "Ginger Tea", price: 20, type: "milk" },
      { name: "Lemon Tea", price: 18, type: "non-milk" },
      { name: "Green Tea", price: 25, type: "non-milk" },
      { name: "Black Tea", price: 22, type: "non-milk" },
      { name: "Cardamom Tea", price: 30, type: "milk" }
    ];

    const menuDiv = document.getElementById("menu");
    const outputDiv = document.getElementById("output");

    // 1️⃣ forEach() – display all teas
    teaMenu.forEach((tea, index) => {
      menuDiv.innerHTML += `
        <div class="item">
          <span>${index + 1}. ${tea.name} - ₹${tea.price}</span>
          <button onclick="order('${tea.name}', ${tea.price})">Order</button>
        </div>
      `;
    });

    // 2️⃣ map() – get all tea names
    const teaNames = teaMenu.map(t => t.name);
    console.log("Available Teas:", teaNames);

    // 3️⃣ filter() – get only milk-based teas
    const milkTeas = teaMenu.filter(t => t.type === "milk");
    console.log("Milk-based teas:", milkTeas);

    // 4️⃣ find() – find a tea by name
    const findGreenTea = teaMenu.find(t => t.name === "Green Tea");
    console.log("Found:", findGreenTea);

    // 5️⃣ reduce() – calculate total cost of all teas
    const totalMenuPrice = teaMenu.reduce((sum, t) => sum + t.price, 0);
    console.log("Total menu value:", totalMenuPrice);

    // 6️⃣ some() – check if any tea is above ₹25
    const hasExpensiveTea = teaMenu.some(t => t.price > 25);
    console.log("Any expensive tea?", hasExpensiveTea);

    // 7️⃣ every() – check if all teas are above ₹10
    const allAbove10 = teaMenu.every(t => t.price > 10);
    console.log("All teas above ₹10?", allAbove10);

    // 8️⃣ sort() – sort teas by price
    const sortedByPrice = [...teaMenu].sort((a, b) => a.price - b.price);
    console.log("Sorted by price:", sortedByPrice);

    // Function for ordering
    function order(name, price) {
      outputDiv.innerHTML = "";

      // map() used to display order info
      const orderInfo = [`You selected: ${name}`, `Price: ₹${price}`]
        .map(line => `<p>${line}</p>`)
        .join("");

      outputDiv.innerHTML += orderInfo;

      // filter() to check valid price
      const validOrder = [price].filter(p => p > 0);
      if (validOrder.length > 0) {
        outputDiv.innerHTML += "<p>Processing Payment...</p>";
      }

      // reduce() for calculating total (simulation)
      const total = validOrder.reduce((acc, val) => acc + val, 0);
      outputDiv.innerHTML += `<p>Total Paid: ₹${total}</p>`;

      // some() check
      if ([price].some(p => p >= 20)) {
        outputDiv.innerHTML += "<p>Bonus: Free biscuit added 🍪</p>";
      }

      // every() check
      if ([price].every(p => p > 10)) {
        outputDiv.innerHTML += "<p>Thanks for ordering premium tea ☕</p>";
      }

      alert(`Payment Successful! Enjoy your ${name}!`);
    }
