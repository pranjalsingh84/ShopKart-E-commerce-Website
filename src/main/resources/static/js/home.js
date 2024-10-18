// Get the profile button and profile form
const profileBtn = document.getElementById("profile-btn");
const profileForm = document.getElementById("profile-form");
const updateBtn = document.getElementById("update-btn");

// Toggle the profile form when the button is clicked
profileBtn.addEventListener("click", () => {
    // Toggle the 'open' class to slide the form in and out
    profileForm.classList.toggle("open");
});

// Close the profile form when the update button is clicked
updateBtn.addEventListener("click", () => {
    // You can add any logic to update profile info here
    console.log("Profile updated!"); // Placeholder for actual update logic
    // Slide the form out
    profileForm.classList.toggle("slide-out");
    // Close the form after a short delay
    setTimeout(() => {
        profileForm.classList.remove("open", "slide-out");
    }, 300); // Match the duration of the CSS transition
});