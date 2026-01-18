// Input focus styling
document.querySelectorAll("input, select").forEach((el) => {
  el.addEventListener("focus", () => {
    el.style.borderColor = "#38bdf8";
  });
});

// Predict Another button functionality
document.addEventListener("DOMContentLoaded", function () {
  const predictAnotherBtn = document.getElementById("predictAnotherBtn");

  if (predictAnotherBtn) {
    predictAnotherBtn.addEventListener("click", function () {
      // Reset the form
      const form = document.getElementById("predictionForm");
      if (form) {
        form.reset();
      }

      // Scroll back to prediction form
      document.getElementById("predict").scrollIntoView({ behavior: "smooth" });
    });
  }
});
