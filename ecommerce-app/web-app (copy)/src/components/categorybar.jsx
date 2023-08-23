import { useDispatch } from 'react-redux'
import { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { logout } from '../features/authSlice'
import './categorybar.css';

function CategoryBar() {
  return (
    <nav className="navbar" style={{height:"40px",textAlign:"center",width:"100%"}}>
      <div className="navbar-item"><Link className='nav-link' to='/cart'>
                   Grocery
                </Link></div>
      <div className="navbar-item"><Link className='nav-link' to='/cart'>
                   Mobiles
                </Link></div>
      <div className="navbar-item"><Link className='nav-link' to='/cart'>
                   Fashion
                </Link></div>
      <div className="navbar-item"><Link className='nav-link' to='/cart'>
                   Electronics
                </Link></div>
      <div className="navbar-item"><Link className='nav-link' to='/cart'>
                   Appliances
                </Link></div>
    </nav>
  );
}

export default CategoryBar
