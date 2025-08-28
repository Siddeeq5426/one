// Product data
const mobiles = [
  {name: "iPhone 14", price: 79999, img: "https://source.unsplash.com/400x400/?iphone"},
  {name: "Samsung Galaxy S23", price: 74999, img: "https://source.unsplash.com/400x400/?samsung-phone"},
  {name: "OnePlus 11", price: 59999, img: "https://source.unsplash.com/400x400/?oneplus"},
  {name: "Xiaomi 13 Pro", price: 56999, img: "https://source.unsplash.com/400x400/?xiaomi"},
  {name: "Google Pixel 7", price: 65999, img: "https://source.unsplash.com/400x400/?google-phone"},
  {name: "Realme GT Neo", price: 28999, img: "https://source.unsplash.com/400x400/?realme"},
  {name: "Vivo X90", price: 49999, img: "https://source.unsplash.com/400x400/?vivo-phone"},
  {name: "Oppo Reno 10", price: 38999, img: "https://source.unsplash.com/400x400/?oppo-phone"},
  {name: "iQOO 11", price: 42999, img: "https://source.unsplash.com/400x400/?iqoo"},
  {name: "Motorola Edge 30", price: 34999, img: "https://source.unsplash.com/400x400/?motorola"}
];

const laptops = [
  {name: "MacBook Air M2", price: 109999, img: "https://source.unsplash.com/400x400/?macbook"},
  {name: "Dell XPS 13", price: 99999, img: "https://source.unsplash.com/400x400/?dell-laptop"},
  {name: "HP Spectre x360", price: 89999, img: "https://source.unsplash.com/400x400/?hp-laptop"},
  {name: "Lenovo ThinkPad X1", price: 84999, img: "https://source.unsplash.com/400x400/?thinkpad"},
  {name: "Asus ROG Strix", price: 119999, img: "https://source.unsplash.com/400x400/?gaming-laptop"},
  {name: "Acer Predator", price: 94999, img: "https://source.unsplash.com/400x400/?acer-laptop"},
  {name: "MSI Stealth 15", price: 105999, img: "https://source.unsplash.com/400x400/?msi-laptop"},
  {name: "Microsoft Surface", price: 95999, img: "https://source.unsplash.com/400x400/?surface-laptop"},
  {name: "Samsung Galaxy Book", price: 79999, img: "https://source.unsplash.com/400x400/?samsung-laptop"},
  {name: "LG Gram", price: 75999, img: "https://source.unsplash.com/400x400/?lg-laptop"}
];

const clothes = [
  {name: "Men's T-Shirt", price: 999, img: "https://source.unsplash.com/400x400/?tshirt"},
  {name: "Men's Jeans", price: 1999, img: "https://source.unsplash.com/400x400/?jeans"},
  {name: "Men's Jacket", price: 3999, img: "https://source.unsplash.com/400x400/?jacket"},
  {name: "Women's Dress", price: 2499, img: "https://source.unsplash.com/400x400/?dress"},
  {name: "Women's Saree", price: 3499, img: "https://source.unsplash.com/400x400/?saree"},
  {name: "Men's Shoes", price: 2999, img: "https://source.unsplash.com/400x400/?shoes"},
  {name: "Women's Handbag", price: 4999, img: "https://source.unsplash.com/400x400/?handbag"},
  {name: "Kids Wear", price: 1499, img: "https://source.unsplash.com/400x400/?kids-clothes"},
  {name: "Men's Formal Shirt", price: 1299, img: "https://source.unsplash.com/400x400/?shirt"},
  {name: "Women's Top", price: 999, img: "https://source.unsplash.com/400x400/?top"}
];

function renderProducts(products, elementId) {
  const container = document.getElementById(elementId);
  products.forEach(p => {
    container.innerHTML += `
      <div class="product">
        <img src="${p.img}" alt="${p.name}">
        <h3>${p.name}</h3>
        <p>₹ ${p.price.toLocaleString()}</p>
        <button>Add to Cart</button>
      </div>
    `;
  });
}

// Render sections
renderProducts(mobiles, "mobiles-list");
renderProducts(laptops, "laptops-list");
renderProducts(clothes, "clothes-list");
