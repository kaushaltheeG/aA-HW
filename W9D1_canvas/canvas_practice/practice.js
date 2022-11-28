document.addEventListener("DOMContentLoaded", function(){
    //Phase 1: Setting up your Canvas Element
    const canvas = document.getElementById("mycanvas");
    //set h & w within canvus tag 
    const ctx = canvas.getContext("2d");

    //Phase II: Draw a Rectangle 
    ctx.fillStyle = 'red';
    ctx.fillRect(40, 10, 200, 400);

    //Phase III: Draw a Circle 
    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.strokeStyle = "white";
    ctx.fillStyle = "blue";
    ctx.fill();
    ctx.stroke();
});
