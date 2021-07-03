window.addEventListener("DOMContentLoaded", function() {
      const priceInput = document.getElementById("item-price");
      const addTaxDom = document.getElementById("add-tax-price");
      const salesCommission = document.getElementById("profit");
      
      priceInput.addEventListener("input", () => {
      addTaxDom.innerHTML = Math.floor(priceInput.value / 10 ).toLocaleString();
      salesCommission.innerHTML = (priceInput.value - Math.floor(priceInput.value /10)).toLocaleString();

   })
});