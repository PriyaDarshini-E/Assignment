let form = document.getElementById("myform")
let img = document.getElementById("images")
let submit = document.getElementById("submit_btn")
let actress_Keerthy = document.getElementById("Keerthy")

form.addEventListener("click", (e) => {
    e.preventDefault();

    // const actress = document.getElementById("actress").value

    const query = document.getElementById('actress').value;
        // if (!query) {
        //     alert('Please select an option');
        //     return
        // }
    // } else if (query === actress_Keerthy) {
    //     img.src = "../Day12/Image/keerthy1.jpg"
    // }
})

    for(let i=1;i<=10;i++)
    {
        const image =document.createElement("img")
        image.src = `images/${keerthy1}/${i}`;
    // img.alt = `${actress} image ${i}`;
    imageContainer.appendChild(img);
    }
