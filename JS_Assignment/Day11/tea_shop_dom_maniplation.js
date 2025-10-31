  let selectedTea = "";

  function hideAll() {
    document.getElementById("home").style.display = "none";
    document.getElementById("menu").style.display = "none";
    document.getElementById("order").style.display = "none";
    document.getElementById("payment").style.display = "none";
    document.getElementById("thanks").style.display = "none";
  }

  function showMenu() {
    hideAll();
    document.getElementById("menu").style.display = "block";
  }

  function selectItem(item) {
    selectedTea = item;
    hideAll();
    document.getElementById("order").style.display = "block";
    document.getElementById("orderItem").innerText = "Selected Item: " + selectedTea;
  }

  function goHome() {
    hideAll();
    document.getElementById("home").style.display = "block";
  }

  function goToPayment() {
    hideAll();
    document.getElementById("payment").style.display = "block";
  }

  function completePayment() {
    hideAll();
    document.getElementById("thanks").style.display = "block";
  }