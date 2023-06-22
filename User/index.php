<?php
session_start();
include '../conn.php';

if (isset($_POST['btn1'])) {
    $cat = $_POST['country'];
    $sub = $_POST['state'];
    
    $_SESSION["category"] = $cat;
    $_SESSION["subcategory"] = $sub;
    if (empty($cat) || empty($sub)) {
        echo "<script>
           
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'please select value in both dropdown!!!',
           
          })
        
    
</script>";
      
    } else {

        echo "<script> location.href='shooping.php'</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Ghanshyam Grocery Shop</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        .background {
            background-color: rgba(225, 228, 235, 255);
        }
        #gridview {
            text-align: center;
        }

        div.image {
            margin: 20px;
            display: inline-block;
        }
        a {
  text-decoration: none;
}
    </style>
    
</head>

<body>
    <!-- Spinner Start -->

    <!-- Spinner End -->


    <!-- Navbar Start -->

    <!-- Navbar End -->
    <?php
    include "nav.php";
    ?>

    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">

        <!-- Product Start -->
        <br>
        <br>
        <br>
        <div>
            <br>
            <br>
            <div class="container ">
                <form method="POST">
                    <div class="btn-group">
                        <select class="btn btn-lg dropdown-toggle " id="country" name="country">

                            <option value=""> Select category</option>
                            <?php

                            $query = "select * from category";
                            // $query = mysqli_query($con, $qr);
                            $result = $dbcon->query($query);
                            if ($result->num_rows > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {

                            ?>
                                    <option value="<?php echo $row['cat_id']; ?>"><?php echo $row['cat_name']; ?></option>
                            <?php
                                }
                            }   

                            ?>

                        </select>

                    </div>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <div class="btn-group">
                        <select class="btn btn-lg dropdown-toggle" id="state" name="state">
                            <option class="background" value="">Select Sub Category</option>

                        </select>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <input type="submit" name="btn1" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Find Product">

                    </div>
                </form>

            </div>
        </div>

        <div id="gridview">
            <?php
            

            
                $query = " SELECT * FROM product ORDER BY RAND() LIMIT 8";
                $result = mysqli_query($dbcon, $query);

                while ($data = mysqli_fetch_assoc($result)) {
            ?>

                    <div class="image" data-wow-delay="0.1s">

                        <div class="card border-white mb-3" style="width:25rem;">

                            <img class="card-img-bottom" src="../imgs/<?php echo $data['pro_image']; ?>" alt="Card image cap">

                            <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">New</div>
                            <div class="card-body">
                                <h5 name="name" class="card-title"><?php echo $data['pro_name']; ?></h5>
                            </div>
                            <ul class="list-group list-group-flush border-light mb-3">
                                <li name="price" class="list-group-item">Price:₹<?php echo $data['pro_price']; ?></li>
                                <li class="list-group-item"><?php echo $data['pro_desc']; ?></li>
                                <div class="card-footer p-1">
                                    <form method="POST">
                                        <div class="row p-2">
                                            <div class="col-md-6 py-1 pl-4">
                                                <b>Quantity : </b>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="number" name="pqty" class="form-control pqty" value="<?= $data['pro_qty'] ?>">
                                            </div>
                                        </div>
                                        <input type="hidden" name="pid" value="<?= $data['pro_id'] ?>">
                                        <input type="hidden" name="pname" value="<?= $data['pro_name'] ?>">
                                        <input type="hidden" name="pprice" value="<?= $data['pro_price'] ?>">
                                        <input type="hidden" name="pimage" value="<?= $data['pro_image'] ?>">
                                        <input type="hidden" name="pcode" value="<?= $data['pro_code'] ?>">


                                        <input type="submit" name="btn" value="Add to cart" class="btn btn-success btn-block addItemBtn">
                                        <br>
                                        <br>
                                        <input type="submit" name="buynow" value="Buy Now" class="btn btn-success btn-block addItemBtn">
                                        <br>
                                        <br>
                                        <button name="view"><a class="a" href="view.php?tegdtfg5453=<?= $data['pro_id']; ?>">View</a></button>



                                    </form>
                                </div>


                            </ul>



                        </div>
                    </div>
            <?php
                }
            
            ?>
        </div>
        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="img/about.jpg">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="display-5 mb-4">Best Organic Fruits And Vegetables</h1>
                        <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Tempor erat elitr rebum at clita</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Aliqu diam amet diam et eos</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Clita duo justo magna dolore erat amet</p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-3" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer End -->
        <?php
        include 'footer.php';
        ?>

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        <script>
            $(document).ready(function() {
                $("#country").on('change', function() {
                    var countryid = $(this).val();

                    $.ajax({
                        method: "POST",
                        url: "dd2.php",
                        data: {
                            id: countryid
                        },
                        datatype: "html",
                        success: function(data) {
                            $("#state").html(data);


                        }
                    });
                });

            });
        </script>
</body>

</html>

<?php

if (isset($_POST['btn'])) {
    $pid = $_POST['pid'];
    $pname = $_POST['pname'];
    $pprice = $_POST['pprice'];
    $pimage = $_POST['pimage'];
    $pcode = $_POST['pcode'];
    $pqty = $_POST['pqty'];
    $id = $_SESSION['id'];
    $total_price = $pqty * $pprice;
    $already = "SELECT pro_code FROM cart WHERE pro_code='$pcode'";
    $res = mysqli_query($dbcon, $already);
    $data = mysqli_fetch_array($res);
    if (empty($_SESSION['id'])) {
       
        echo "<script>
           
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'You Have To Login First!!!',
           
          }).then (function(){
            window.location='../login.php';
          });
        
    
</script>";
      
    } else {
        if (!$data) {



            $query = "INSERT INTO cart (pro_name,pro_price,pro_image,qty,total_price,pro_code,login_id) VALUES ('$pname','$pprice','$pimage','$pqty','$total_price','$pcode','$id')";
            $result = mysqli_query($dbcon, $query);

            echo "<script>
            Swal.fire(
                'Good job!',
                'Added Into Cart!',
                'success'
              )
            </script>";
        } else {
            echo "<script>
           
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Already There In Cart!'
              })
        
    </script>";
        }
    }
}


// byu now button clck event
if (isset($_POST['buynow'])) {
    $pid = $_POST['pid'];
    $pname = $_POST['pname'];
    $pprice = $_POST['pprice'];
    $pimage = $_POST['pimage'];
    $pcode = $_POST['pcode'];
    $pqty = $_POST['pqty'];
    $id = $_SESSION['id'];
    $total_price = $pqty * $pprice;
    $already = "SELECT pro_code FROM cart WHERE pro_code='$pcode'";
    $res = mysqli_query($dbcon, $already);
    $data = mysqli_fetch_array($res);
    if (empty($_SESSION['id'])) {
       
        echo "<script>
           
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'You Have To Login First!!!',
           
          }).then (function(){
            window.location='../login.php';
          });
        
    
</script>";
      
    } else {
        if (!$data) {



            $query = "INSERT INTO cart (pro_name,pro_price,pro_image,qty,total_price,pro_code,login_id) VALUES ('$pname','$pprice','$pimage','$pqty','$total_price','$pcode','$id')";
            $result = mysqli_query($dbcon, $query);

            echo '<script>location.href="cart.php"</script>';
        } else {
            echo "<script>
           
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Already There In Cart!'
              })
        
    </script>";
        }
    }
}


?>