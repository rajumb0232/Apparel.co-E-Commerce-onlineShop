<style>
.add-product{
	width:100%;
	display: flex;
	justify-content: center;
	align-items: center;
}
.add-product-form{
	width:80%;
	height: 80%;
	display: flex;
	justify-content: center;
	border:2px solid #ebe8e8;
	border-radius: 10px;
}
.sec-one, .sec-two{
	width:50%;
	height:100%;
	padding:1rem;
	font-size:1.25rem;
	color:#565656;
	
}
.sec-two{
		padding-left:2rem;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: flex-end;
}
.sec-two label{
	width: max-content;
	margin-right: auto;
}
.product-name, .categories, .description{
	width:100%;
	font-size:1.25rem;
	border-bottom:2px solid #ebe8e8;
	margin:1rem;
	color:#565656;
	padding:.2em .5em;
	margin-bottom:1.5rem;
}
.checkbox{
	padding:.2em .5em;
	font-size:1.25rem;
	margin:1rem;
	margin-top:2rem;
	margin-bottom:2rem;
	color:#565656;
}
.price, .quantity{
	width:50%;
	font-size:1.25rem;
	border-bottom:2px solid #ebe8e8;
	margin:1rem;
	color:#565656;
	padding:.2em .5em;
}
.price-quantity{
	display: flex;
	align-items: center;
	margin-bottom:4.5rem;
}
.description{
	width:90%;
	height: 250px;
	font-size: 1.1rem;
	overflow-y:hidden;
	border:2px solid #ebe8e8;
}
.back{
	color:#a04af0;
	padding:.2em .5em;
}
.label{
	margin:1rem;
	width:100%;
	background-color: #ebe8e8;
	padding:.2em .5em;
}
.accept-file{
	margin-top:3rem;
	margin-bottom: 1rem;
	padding:.2em .5em;
}
.upload-image{
	padding:.5em 1em;
	border-radius: 10px;
	background-color: #fff;
	color:#565656;
	border:2px solid #565656;
	font-weight: 600;
	font-size:1.25rem;
	font-weight: 600;
}

input[type="file"]{
	display:none;
}
.submit{
	padding:.7em 1em;
	border-radius: 10px;
	background-color: #a04af0;
	color:#f6f6f6;
	border:2px solid #a04af0;
	font-size:1.25rem;
	font-weight: 600;
	margin-right: 1.1rem;

}


</style>