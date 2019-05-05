import React from "react";

export default ({outfit, handleClick}) => {
  return (
    <div>
      <img id={outfit.id} style={{width:'20%'}} src={outfit.image} />
      <i className="fas fa-heart" outfit={outfit} id={outfit.id} style={{color: outfit.selected ? 'red' : 'black'}} onClick={handleClick}></i>
    </div>
  )
}

