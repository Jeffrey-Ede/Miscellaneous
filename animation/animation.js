var imgObj = null;
var animate;

function init(){
   imgObj = document.getElementById('myImage');
   imgObj.style.position= 'relative'; 
   imgObj.style.left = '0px'; 
}

function moveRight(){
   imgObj.style.left = parseInt(imgObj.style.left) + 10 + 'px';
   animate = setTimeout(moveRight,20); // call moveRight in 20msec
}

function moveLeft(){
	imgObj.style.left = parseInt(imgObj.style.left) - 10 + 'px';
	animate = setTimeout(moveLeft,20); // call moveLeft in 20msec
}

window.onload =init;