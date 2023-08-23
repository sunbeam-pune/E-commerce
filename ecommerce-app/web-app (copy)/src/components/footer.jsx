import React from 'react';
import { Link } from 'react-router-dom';

function Footer(){

    return(
        <>
        <div style={{height:"50px", width:"100%",   marginBottom:"100"}}>
 <div class="container" >
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><Link to={"/About Us"} class="nav-link px-2 text-muted">Facebook</Link></li>
      <li class="nav-item"><Link to={"/Facebook"} class="nav-link px-2 text-muted">Instagram</Link></li>
      <li class="nav-item"><Link to={"/Instagram"} class="nav-link px-2 text-muted">About Us</Link></li>
      <li class="nav-item"><Link to={"/Help"} class="nav-link px-2 text-muted">Help</Link></li>
      <li class="nav-item"><Link to={"/Contact Us"} class="nav-link px-2 text-muted">Contact Us</Link></li>
    </ul>
    <p class="text-center text-muted">&copy; 2023 E-Shopping, Inc</p>
  </footer>
</div>
</div>
        </>
    );
}

export default Footer



// import React from 'react';
// import '../../node_modules/bootstrap/dist/css/bootstrap.css';
// import '../../node_modules/bootstrap/dist/js/bootstrap.js';
// import { Link } from 'react-router-dom';

// export default function Footer() {
//     return(
//         <>
// 		<div class="container">
//   <footer class="py-3 my-4">
//     <ul class="nav justify-content-center border-bottom pb-3 mb-3">
//       <li class="nav-item"><Link to={"/home"} class="nav-link px-2 text-muted">Home</Link></li>
//       <li class="nav-item"><Link to={"/booking"} class="nav-link px-2 text-muted">Features</Link></li>
//       <li class="nav-item"><Link to={"/gallery"} class="nav-link px-2 text-muted">Gallery</Link></li>
//       <li class="nav-item"><Link to={"/faqs"} class="nav-link px-2 text-muted">FAQs</Link></li>
//       <li class="nav-item"><Link to={"/about"} class="nav-link px-2 text-muted">About</Link></li>
//     </ul>
//     <p class="text-center text-muted">&copy; 2023 EventGuru, Inc</p>
//   </footer>
// </div>
//     </>
//     );
// }