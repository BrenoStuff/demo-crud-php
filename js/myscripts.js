function openModal(){
    const modal = document.querySelector('#modalAddProduct')
    modal.style.display = 'flex'
}

function closeModal(event){

    console.log(event)
    if (event.target.id === 'modalAddProduct'){
        const modal = document.querySelector('#modalAddProduct')
    modal.style.display = 'none'
    }
}