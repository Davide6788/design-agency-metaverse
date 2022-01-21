const underlineCategoriesNavbar = () => {
  console.log('hii');
  let categories = document.querySelector('.nav-item-underlined');
  categories.addEventListener('click', (event) => {
    console.log('hello')
    categories.classList.toggle('active')
  }
  )};

export { underlineCategoriesNavbar }
