import { useState } from 'react'

function Cart() {
  const [cartitems, setcartitems] = useState(4);
  return (
    <div>
      <center><h3>Your Cart ({cartitems})</h3></center>
      
      <table class="table table-borderless">
  <thead>
    <tr>
      <th colSpan={2} scope="col">Items Description</th>
      <th colSpan={2} scope="col">Items Image</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Apple Iphone</td>
      <td></td>
      <td>₹</td>
      <td>
      <div className="incdec">
            <button className="dec">-</button>
            <div className="mid">1</div>
            <button className="inc">+</button>
        </div>
      </td>
    </tr>
  </tbody>
</table>
    </div>
  )
}

export default Cart
