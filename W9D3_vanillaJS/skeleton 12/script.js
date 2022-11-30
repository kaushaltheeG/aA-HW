document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  const placeForm = document.getElementById("add-to-list");
  console.log(placeForm)
  placeForm.addEventListener('submit', event => {
    event.preventDefault();
    // console.log(placeForm)

    const favPlaceInput = document.getElementById("place-name");
    const favPlace = favPlaceInput.value;
    // console.log(favPlaceInput);
    favPlaceInput.value = "";

    const favPlaceList = document.getElementById("sf-places");
    // console.log(favPlaceList);
    const li = document.createElement('li');
    li.textContent = favPlace;
    // console.log(li);
    favPlaceList.appendChild(li);
  })






  // adding new photos

  // --- your code here!
  const showPicForm = (e) => {
    const div = document.querySelector(".photo-form-container");
    if (div.className === "photo-form-container") {
      div.className = "photo-form-container hidden";
    } else {
      div.className = "photo-form-container";
    }
  } 




  const picShowToggle = document.querySelector(".photo-show-button");
  picShowToggle.addEventListener('click', showPicForm)

  const handlePhotoSubmission = (e) => {
    const urlInput = document.querySelector(".photo-url-input");
    const photoUrl = urlInput.value;

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhtoLi = document.createElement("li");
    newPhtoLi.appendChild(newImg);

    const dogUl = document.querySelector(".dog-photos") 
    dogUl.appendChild(newPhtoLi);

  }

  const picSubmit = document.querySelector(".photo-url-submit");
  picSubmit.addEventListener('click', handlePhotoSubmission);

});
