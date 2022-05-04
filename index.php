<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD PDO</title>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/myscripts.js"></script>
</head>
<body>
    <main>
        <header>
            <h1>Produtos</h1>
            <button onclick="openModal()">Adicionar Produto</button>
        </header>
        <section id="product-list">
            <div class="product">
                <img src="https://a-static.mlcdn.com.br/618x463/controle-remoto-para-tv-philco-lelong/eletromassa/2874671827/4e6418407f869acc149138a57b937fce.jpg" alt="Fritadeira" width=150px height="150px">
                <h3>Controle remoto de carro</h3>
                <span>R$ 99,78</span>
            </div>
            <div class="product">
            </div>
            <div class="product">
            </div>
            <div class="product">
            </div>
            <div class="product">
            </div>
            <div class="product">
            </div>
        </section>
    </main>

    <div class="modal" id="modalAddProduct"  onclick="closeModal(event)">
        <main>
            <h1>Cadastrar produto</h1>
            <form>
                <label>Foto:</label><br>
                <input class="full" type="text" placeholder="URL da foto" name="photo"/><br>

                <label>Título:</label><br>
                <input class="full" type="text" placeholder="Título do Produto" name="title"/><br>

                <label>Preço: </label><br>
                <input type="text" placeholder="Preço do Produto" name="preco"/><br>

                <input type="submit" value="Adicionar Produto" />
            </form>
        </main>
    </div>

</body>
</html>