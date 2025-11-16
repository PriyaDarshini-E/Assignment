import Action from "./Action";
import Love from "./Love";
import Watched from "./Watched";

const  Cinema = () =>{

    return(
        <>
        <h2>This is About Cinema in Karnataka</h2>
        <ul>
            <li>The industry's beginnings date back to the early 1930s.</li>
            <li>The first Kannada talkie, Sati Sulochana, was released in 1934.</li>
            <li>Modern Kannada cinema is noted for its creative storytelling, music, and innovative ideas.</li>
            <li>The 2006 film Mungaru Male was the first to gross ₹50 crore, and the 2018 film K.G.F: Chapter 1 was the first to break the ₹100 crore milestone. </li>
        </ul>

        <Love/>

        <Action/>

        <Watched/>
        </>
    )
}
export  default Cinema;