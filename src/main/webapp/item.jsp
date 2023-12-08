<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Item | Online E-Store</title>

    <!-- CSS -->
    <link
         href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
    />
    <link rel="stylesheet" 
    	href="${pageContext.request.contextPath}/CSS/Global.css" />
    <link rel="stylesheet" 
    	href="${pageContext.request.contextPath}/CSS/AdminAdReview.css" />
    <link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/CSS/HeaderFooter.css">

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<jsp:include page="./Includes/Header.jsp" />
	
    <div class="container">
    	<div class="row">
        	<div class="col">
            	<h1 class="text-center my-5"> Item Review </h1>
            </div>
        </div>
        <div class="row">
            <div class="col">
            	<div class="card my-4">
                	<div class="row g-0">
                    	<div class="col-md-4">
							<img
								src="https://preview.thenewsmarket.com/Previews/ADID/StillAssets/800x600/554425_v4.jpg"
								class="list-thumbnail img-fluid rounded-start block mx-auto"
								alt="Thumbnail" />
						</div>
                        <div class="col-md-8">
                        	<div class="card-body">
                                <h3 class="card-title mt-2 mb-4">
                                	Adidas Yeezy 700 V3 Azael 2023 FW4980 Fashion Shoes
                                </h3>
                                <div class="d-flex mb-4">
                                	<span
                                    	class="badge bg-blue rounded-pill bg-primary fs-7 py-2 px-3 mx-1"
                                        >price: 4</span
                                   	>
                                    <span
                                        class="badge bg-blue rounded-pill bg-primary fs-7 py-2 px-3 mx-1"
                                        >Perches: 2</span
                                    >
                                    <span
                                        class="badge bg-blue rounded-pill bg-primary fs-7 py-2 px-3 mx-1"
                                        >Perches: 40</span
                                    >
                                </div>
                                <p class="card-text">
                                    Lorem ipsum dolor sit amet consectetur
                                    adipisicing elit. Vitae pariatur,
                                    officia odio debitis a quia adipisci
                                    illo sit autem sunt quasi ut? Reiciendis
                                    molestias dolor ad ...(Read More)
                                </p>
                                <a href="#">
                                    <button
                                    	class="property-btn btn btn-outline-blue w-25 my-4 mx-4">
                                        View item
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
            	<div class="card my-4">
                	<div class="row g-0">
                    	<div class="col-md-4">
                        	<img
                            	src="https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-pro-1.jpg"
                                class="list-thumbnail img-fluid rounded-start block mx-auto"
                                alt="Thumbnail"
                            />
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h3 class="card-title mt-2 mb-4">
                                	Apple iPhone 15 Pro 256GB
                                </h3>
                                <div class="d-flex mb-4">
                                    <span
                                    	class="badge bg-blue rounded-pill bg-primary fs-7 py-2 px-3 mx-1"
                                        >Perches: 40</span
                                    >
                                </div>
                                <p class="card-text">
                                	Lorem ipsum dolor sit amet consectetur
                                    adipisicing elit. Vitae pariatur,
                                    officia odio debitis a quia adipisci
                                    illo sit autem sunt quasi ut? Reiciendis
                                    molestias dolor ad ...(Read More)
                                </p>
                                <a href="#">
                                    <button
                                    	class="property-btn btn btn-outline-blue w-25 my-4 mx-4">
                                        View item
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="./Includes/Footer.jsp" />

</body>
</html>