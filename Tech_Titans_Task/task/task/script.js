const books = [
  {
    title: "Bhagavad Gita",
    author: "Vyasa",
    year: "500 BCE",
    description: "A dialogue between Lord Krishna and Arjuna teaching Dharma, devotion, and self-realization.",
    image: "1.jpg"
  },
  {
    title: "Ramayana",
    author: "Valmiki",
    year: "400 BCE",
    description: "Epic story of Lord Rama’s journey to rescue Sita from Ravana, symbolizing virtue and sacrifice.",
    image: "2.jpg"
  },
  {
    title: "Mahabharata",
    author: "Vyasa",
    year: "400 BCE",
    description: "One of the longest epics, exploring family conflict, war, and moral duty in ancient India.",
    image: "3.jpg"
  },
  {
    title: "Vedas",
    author: "Ancient Rishis",
    year: "1500 BCE",
    description: "Sacred hymns and chants that form the foundation of Indian spiritual and philosophical knowledge.",
    image: "4.jpg"
  }
];

function displayBooks(bookList) {
  const container = document.getElementById("bookContainer");
  container.innerHTML = "";

  bookList.forEach((book, index) => {
    const card = document.createElement("div");
    card.className = "book-card";

    card.innerHTML = `
      <img src="${book.image}" alt="${book.title}">
      <h3>${book.title}</h3>
      <p><strong>Author:</strong> ${book.author}</p>
      <p><strong>Year:</strong> ${book.year}</p>
      <button class="details-btn" id="btn-${index}">More Details</button>
      <div class="book-details" id="details-${index}">${book.description}</div>
    `;

    container.appendChild(card);

    // Toggle details
    document.getElementById(`btn-${index}`).addEventListener("click", () => {
      const detailDiv = document.getElementById(`details-${index}`);
      detailDiv.style.display = (detailDiv.style.display === "block") ? "none" : "block";
    });
  });
}

// Display all books
displayBooks(books);

// Search
document.getElementById("searchBtn").addEventListener("click", () => {
  const query = document.getElementById("searchInput").value.toLowerCase();
  const filtered = books.filter(book =>
    book.title.toLowerCase().includes(query) ||
    book.author.toLowerCase().includes(query)
  );
  displayBooks(filtered);
});


// 🟢 FORM FUNCTIONALITY
const userBooks = [];

document.getElementById("openFormBtn").addEventListener("click", () => {
  document.getElementById("formPopup").style.display = "block";
});

document.getElementById("closeFormBtn").addEventListener("click", () => {
  document.getElementById("formPopup").style.display = "none";
});

document.getElementById("submitBtn").addEventListener("click", () => {
  const name = document.getElementById("userName").value.trim();
  const phone = document.getElementById("phone").value.trim();
  const bookName = document.getElementById("bookName").value.trim();
  const quote = document.getElementById("quote").value.trim();
  const image = document.getElementById("imageURL").value.trim();

  if (name && phone && bookName && quote && image) {
    const entry = { name, phone, bookName, quote, image };
    userBooks.push(entry);

    let message = "📚 Book Details Submitted:\n\n";
    userBooks.forEach((book, i) => {
      message += `#${i + 1}\n👤 Name: ${book.name}\n📞 Phone: ${book.phone}\n📘 Book: ${book.bookName}\n💬 Quote: "${book.quote}"\n🖼️ Image: ${book.image}\n\n`;
    });

    alert(message + "🙏 Thank you for sharing your favorite book!");

    document.getElementById("userName").value = "";
    document.getElementById("phone").value = "";
    document.getElementById("bookName").value = "";
    document.getElementById("quote").value = "";
    document.getElementById("imageURL").value = "";
    document.getElementById("formPopup").style.display = "none";
  } else {
    alert("⚠️ Please fill in all fields!");
  }
});
