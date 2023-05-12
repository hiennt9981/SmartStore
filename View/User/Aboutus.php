<?php
    $jsondata = file_get_contents("View\User\AboutUs.json");
    $json = json_decode($jsondata, true);
?>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            
           
            .container-aboutus{
            width: 1100px;
            margin: 0px auto;
            background-color : rgba(0,0,0,0.5);
            padding : 50px;
            }
            .content{
                overflow:hidden;
            }
            .row-aboutus{
                padding:0px 20px 0px;
            }
            .nameTeam{
            text-transform: uppercase;
            text-align: center;
            font-family: tahoma; 
            font-weight: bold;
            font-size: 45px; 
            color: #fff;
            }
            h4{margin:auto; padding: 5px; color: blue; font-size: 20px;}
           
            .col-sm-4{
                padding: 30px;
                position: relative;
                background-color:rgba(255,255,255,0.7);
                /* background:#fff; */
                background-clip: content-box;
                list-style: none; 
                font-size: 18px;
                margin: 0px auto;
                text-align: center;
                border-radius: 15%;
            }
            .imagestyle{
                padding: 10;
                display: block;
                border-radius: 50%;
                width: 185px;
                height: 190px;
                margin-left: auto;
                margin-right: auto;
            }
            
            .follow-us li{ 
                display:inline-block;
                margin: 0px 5px 0px;
            }
            .fa-facebook{
                font-size:20px;
                color: blue;
            }
            .fa-instagram{
                font-size:20px;
                color: #DD2A7B ;
            }
            .fa-youtube-play{
                font-size:24px;
                color:red;
            }

            .row-aboutus {
                display:flex;
                justify-content: center;
                text-align : center;
            }

            .row-aboutus > p {
                font-size: 20px;
                max-width: 800px;
                line-height: 1.8;
                display : flex;
                justify-content: center;
                text-align : center;
                color: #fff;
            }
        </style>
<section class="our-webcoderskull padding-lg">

    
<div class="container-aboutus">
    <div class="content">
    <h2 class="nameTeam" style="padding-bottom: 30px">ABOUT SMARTSTORE</h2>
        <div class="row-aboutus">
           <p>SmartStore là cửa hàng chuyên cung cấp các sản phẩm như bánh ngọt, kẹo, nước ngọt, sữa, … với giá cả tốt cho khách hàng.
SmartStore luôn cố gắng mỗi ngày để mang đến cho khách hàng những sản phẩm mới với chất lượng tốt nhất.
Chúng tôi mong muốn khách hàng đến SmartStore không chỉ mua hàng, mà còn được tư vấn, hỗ trợ tốt nhất để chọn được những sản phẩm phù hợp bản thân và gia đình.</p>
        </div>
    </div>
</div>
</section>
