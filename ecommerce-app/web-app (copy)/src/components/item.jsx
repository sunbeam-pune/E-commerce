import "./item.css";

function Item() {
    return(
<div className="maindiv">

<div className="imgdiv"> 

</div>

<div className="itemdiv">
    <h3>Product Title</h3>
    <hr/>
    <h5>M.R.P ₹</h5>
    <h5 style={{display:'flex'}}>Add quantity
    &nbsp;
        <div className="incdec">
            <button className="dec">-</button>
            <div className="mid">1</div>
            <button className="inc">+</button>
        </div>
    </h5>
    <h6>Description About this product:-</h6>
    <p>Solid color polyester/linen full blackout thick sunscreen floor curtain Type: General Pleat Applicable Window Type: Flat Window Format: Rope Opening and Closing Method: Left and Right Biparting Open Processing Accessories Cost: Included Installation Type: Built-in Function: High Shading(70%-90%) Material: Polyester / Cotton Style: Classic Pattern: Embroidered Location: Window Technics: Woven Use: Home, Hotel, Hospital, Cafe, Office Feature: Blackout, Insulated, Flame Retardant Place of Origin: India Name: Curtain Usage: Window Decoration Keywords: Ready Made Blackout Curtain</p>


<button className="btn btn-primary">Buy Now</button>&nbsp;
<button className="btn btn-primary">Add to Cart</button>
</div>


</div>
    );
}

export default Item;