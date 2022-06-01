async function loadProducts() {
	const url =
		'http://localhost/demo-crud-php/back-end-ajax/select-all-product.php'

    const response = await fetch(url)
    const products = await response.json()
    const productList = document.querySelector('#product-list')

			products.forEach(product => {
				let showProduct = `
        <div class="product">

            <div class="delete" onclick="deleteProduct(${product.id})">
              <img src="img/icon-trash.svg" alt="Delete Product" width="15px" height="15px">
            </div>

            <div class="edit" onclick="editProduct(
                ${product.id},
                '${product.photo}',
                '${product.title}',
                '${product.price}'
              )">
              <img src="img/icon-edit.svg" alt="Edit Product" width="15px" height="15px">
            </div>
            <img src="${product.photo}" alt="${product.title}" width="150px" height="150px"/>
            <h3>${product.title}</h3>
            <span>${product.price}</span>
          </div>
        `
				productList.innerHTML += showProduct
			})
		
}

async function insertProduct(event) {
  event.preventDefault()

  const photo = event.target.photo.value
  const title = event.target.title.value
  const price = event.target.price.value

  const formData = new FormData()
  formData.append('photo', photo)
  formData.append('title', title)
  formData.append('price', price)

  const url = 'http://localhost/demo-crud-php/back-end-ajax/insert-products.php'


  const response = await fetch(url, {
    method: 'POST',
    body: formData
  })
  const result = await response.json()

  if (result?.success.message) {
    alert(result.success.message)
    window.location.href = '/demo-crud-php/index-ajax.html'
  } else {
    alert('Erro ao Cadastrar Produto!')
  }
}

async function deleteProduct(id) {

  const url = 'http://localhost/demo-crud-php/back-end-ajax/delete-product.php?id=' + id


  const response = await fetch(url)
  const result = await response.json()

  if (result?.success.message) {
    alert(result.success.message)
    window.location.href = '/demo-crud-php/index-ajax.html'
  } else {
    alert('Erro ao deletar o Produto!')
  }
}

async function editFormProduct(event) {
  event.preventDefault()

  const id = event.target.id.value
  const photo = event.target.photo.value
  const title = event.target.title.value
  const price = event.target.price.value

  const formData = new FormData()
  formData.append('id', id)
  formData.append('photo', photo)
  formData.append('title', title)
  formData.append('price', price)

  const url = 'http://localhost/demo-crud-php/back-end-ajax/edit-product.php'


  const response = await fetch(url, {
    method: 'POST',
    body: formData
  })
  const result = await response.json()

  if (result?.success.message) {
    alert(result.success.message)
    window.location.href = '/demo-crud-php/index-ajax.html'
  } else {
    alert('Erro ao Cadastrar Produto!')
  }
}
