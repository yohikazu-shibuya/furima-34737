window.addEventListener('DOMContentLoaded', () => {
   const priceInput = document.getElementById("item-price");
   priceInput.addEventListener("input", () => {
      const addTaxDom = document.getElementById("add-tax-price");
      addTaxDom.innerHTML = Math.floor(priceInput.value / 10 ).toLocaleString();
      const salesCommission = document.getElementById("profit");
      salesCommission.innerHTML = (priceInput.value - Math.floor(priceInput.value /10)).toLocaleString();

   })
});