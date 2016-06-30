var text_lorem = document.getElementById('lorem').innerHTML;

var rel = document.getElementById("release");
rel.style.border = "2px solid red";

var rel2 = document.getElementById("release1");

function simpleMessage() {
  alert(text_lorem);
  alert("Are you sure you are ready for this?");
  gifAppear();
}

function gifAppear() {
	document.getElementById("circles").style.visibility = "visible";
}


document.getElementById("circles").style.visibility = "hidden";

rel2.addEventListener("click", simpleMessage);

