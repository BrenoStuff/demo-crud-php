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
            <button onclick="openModal('#modalAddProduct')">Adicionar Produto</button>
        </header>

        <section id="product-list">

            <?php
                require('back-end\helpers\db-connect.php');

                try{

                    $stmt = $conn->prepare("SELECT * FROM produtos");
                    $stmt->execute();

                    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    //print_r($result);

                } catch(PDOException $e) {

                    echo "Error in searching product on DataBase: " . $e->getMessage();

                }
            ?>

            <?php foreach($result as $product){ ?>
                <div class="product">

                    <a href="back-end/delete-product.php?id=<?php echo $product['id']; ?>">
                        <div class="delete">
                            <img src="img/icon-trash.svg" width="15px" height="15px">
                        </div>
                    </a>

                    <div class="edit" onclick="                 
                        editProduct(
                        <?php echo $product['id']; ?>,
                        '<?php echo $product['photo']; ?>',
                        '<?php echo $product['title']; ?>',
                        '<?php echo $product['price']; ?>'
                        )">
                        <img src="img/icon-edit.svg" width="15px" height="15px">
                    </div>

                    <img src="<?php echo $product['photo']; ?>" alt="<?php echo $product['photo']; ?>" width=150px height="150px">
                    <h3><?php echo $product['title']; ?></h3>
                    <span><?php echo $product['price']; ?></span>

                </div>
            <?php } ?>

        </section>
    </main>

    <div class="modal" id="modalAddProduct"  onclick="closeModal(event)">
        <main>
            <h1>Cadastrar produto</h1>
            <form method="POST" action="back-end\insert-products.php">
                <label>Foto:</label><br>
                <input class="full" type="text" placeholder="URL da foto..." name="photo"/><br>

                <label>Título:</label><br>
                <input class="full" type="text" placeholder="Título do Produto..." name="title"/><br>

                <label>Preço: </label><br>
                <input type="text" placeholder="R$ 99,00..." name="price"/><br>

                <input type="submit" value="Adicionar Produto" />
            </form>
        </main>
    </div>

    <div class="modal" id="modalEditProduct" onclick="closeModal(event)">
		<main>
            <h1>Edit Product</h1>
            <form method="POST" action="back-end/edit-product.php">
                <input type="hidden" name="id" value=""/>

                <label>Photo:</label><br>
                <input class="full" type="text" placeholder="URL da foto..." name="photo" /><br>

                <label>Title:</label><br>
                <input class="full" type="text" placeholder="Título do Produto..." name="title" /><br>
                
                <label>Price:</label><br>
                <input type="text" placeholder="R$ 99,00..." name="price" /><br>
                
                <input type="submit" value="Editar Produto" />
            </form>
		</main>
	</div>

    

</body>
</html>