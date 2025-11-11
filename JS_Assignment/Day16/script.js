// ---------- REGISTER ----------
if (document.getElementById("registerForm")) {
  document.getElementById("registerForm").addEventListener("submit", function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();

    if (!username || !email || !password) {
      alert("Please fill all fields.");
      return;
    }

    let users = JSON.parse(localStorage.getItem("users")) || [];

    // Check if username already exists
    const userExists = users.some(user => user.username === username);
    if (userExists) {
      alert("Username already exists! Please choose another.");
      return;
    }

    users.push({ username, email, password });
    localStorage.setItem("users", JSON.stringify(users));

    alert("Registration successful! Redirecting to login...");
    window.location.href = "login.html";
  });
}

// ---------- LOGIN ----------
if (document.getElementById("loginForm")) {
  document.getElementById("loginForm").addEventListener("submit", function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value.trim();
    const password = document.getElementById("password").value.trim();

    const users = JSON.parse(localStorage.getItem("users")) || [];
    const user = users.find(u => u.username === username && u.password === password);

    if (user) {
      localStorage.setItem("loggedInUser", JSON.stringify(user));
      alert("Login successful!");
      window.location.href = "home.html";
    } else {
      alert("Invalid username or password!");
    }
  });
}

// ---------- HOME ----------
if (document.getElementById("userName")) {
  const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));

  if (!loggedInUser) {
    window.location.href = "login.html";
  } else {
    document.getElementById("userName").textContent = loggedInUser.username;
  }

  document.getElementById("logoutBtn").addEventListener("click", function () {
    localStorage.removeItem("loggedInUser");
    alert("Logged out successfully!");
    window.location.href = "login.html";
  });
}
