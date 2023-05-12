<style>
*{
	margin: 0;
	outline:none;
	border:0;
	text-decoration: none;
	font-family: 'Poppins', sans-serif;
	list-style: none;
}
html{
	overflow-x:hidden; 
}
body{
	width: 100vw;
	display:flex;
	flex-direction:column;
	justify-content: center;
	
}
.products{
	width:100%;
	display:flex;
}
.filter{
	width:20%;
	padding: 1rem;
	border-right: 2px solid #ebe8e8;
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: flex-end;
}
.filter div {
	width:100%;
	margin:1rem .5rem;
	display: flex;
	
}
.filter div a{
	padding:.5em 1em;
	font-size:1.25rem;
	color:#f6f6f6;
	font-weight:600;
	background-color:#353535;
	margin-left: auto;
	border:2px solid #353535;
	border-radius: 50px;
}
.filter div a:hover{
	border:2px solid #565656;
	background-color:#565656;
}
.filter h3{
	font-size:2rem;
	color:#252525;
	padding:.2em .4em .2em 3em;
	background-color: #ebe8e8;
}
.filter ul {
	text-align: right;
	width:100%;
	padding:1rem;
}
.filter ul li{
	margin:1rem;
	padding:.5rem;
	width:100%;
}
.filter ul li a{
	font-size:1.25rem;
	color:#565656;
	padding:.5em 1em;
	border:2px solid #fff;
	border-radius: 50px;
}
.filter ul li a:hover{
	border:2px solid #ebe8e8;
	border-radius: 50px;
}
.product-cards{
	width:80%;
	height:max-content;
	display:flex;
	justify-content:center;
	flex-wrap:wrap;
}
.product-card{
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items:center;
	margin:1rem;
	padding:0;
	width:21%;
	height:max-content;
	border: 2px solid #fff;
	border-radius: 10px;
	background-color: #fff;
	text-align: center;
}
.product-card:hover{
	border: 2px solid #ebe8e8;
}

.image-sec{
	width:90%;
	height: 180px;
	overflow: hidden;
	display:flex;
	justify-content: center;
}
.image-sec img{
	height:100%;
}
.desc-sec{
	width:90%;
	height:75%;
	padding: .5rem 1rem;
	color:#252525;
}
.desc-sec h2{
	font-size: 1.25rem;
}
.desc-sec div{
	margin-top:1rem;
	display:flex;
	justify-content:space-between;
	align-items: center;
	margin-bottom: 1rem;
}

.desc-sec h3{
	color: #b6b6b8;
	font-weight: 500;
	font-size: 1rem;
	margin-top: .5rem;
}
.desc-sec div h3{
	color:#565656;
	font-size:1.6rem;
	font-weight: 600;
}
.desc-sec div h4{
	font-weight: 500;
}
.manage{
	width:90%;
	display: flex;
	justify-content:flex-end;
	align-items: center;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}
.manage a{
	font-size: 1.25rem;
	margin:.3em;
	color: #565656;
	font-weight: 600;
}
.manage a:hover{
	color: #a04af0;
}
</style>