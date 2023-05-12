<style>
.apparel{
	width:100vw;
	margin-top: 1rem;
	display: flex;
	justify-content: center;
	flex-direction:column;
	align-items: center;

}
.banner{
	margin:.5rem;
	width:90%;
	height:80vh;
	display: flex;
	justify-content: center;
	align-items: center;
}
.one{
	margin:.5rem;
	width: 70%;
	height:100%;
	background-image: url("/other-imgs/bgc2.jpg");
	background-size: cover;
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-items: flex-end;
	
}
.one p{
	width:70%;
	padding-right:.7em;
	text-align: right;
	font-size: 6rem;
	color: #565656;
	text-transform: uppercase;
}

.one p span{
	font-size: 8rem;
	color: #fff;
}

.two{
	margin:.5rem;
	margin-left:0;
	width: 30%;
	height:100%;
	display: flex;
	flex-direction:column;
	justify-content:center;
	align-items: center;
}
.two a{
	width: 100%;
	height:50%;
	overflow: hidden;
}
.two a div{
	width: 100%;
	height:100%;
	background-size: cover;
	display:flex;
	justify-content: center;
	align-items: flex-end;
}
.two a div:hover{
 	transition: ease-in-out;
    transition-timing-function: 1s;
    transition-duration: 1s;
    padding-bottom: 5rem;
}
.two a:nth-child(1) div{
	margin-bottom:.5rem;
	background-image: url("/other-imgs/menbtn.jpg");
}
.two a:nth-child(2) div{
	margin-top:.5rem;
	background-image: url("/other-imgs/womenbtn.jpg");
}
.two a div p{
	font-size: 3rem;
	color: #fff;
	background-color: #00000031;
	border: 2px solid #fff;
	border-bottom: 0;
}
.two a div p span{
	background-color: #fff;
	color: #252525;
	
}
.head{
	width:100%;
	margin:.5rem 1rem;
	margin-top:2rem;
	border-bottom: 2px solid #ebe8e8;
}
.head h1{
	margin:.5rem;
	font-size: 2rem;
	color: #272727;
	font-weight: 100;
}
.male-filter, .female-filter{
	width:100%;
	display: flex;
	justify-content: center;
	align-items:center;
	flex-wrap: wrap;
	
}
.female-filter{
	width:100%;
}

.male-filter a,.female-filter a{
	width:23%;
	height:340px;
	text-align: center;
	margin:2rem .5rem;
	color:#fff;
	display: flex;
	font-size:2.5rem;
	
}
.female-filter a{
	width:18%;
}
.category-card{
	display: flex;
	flex-direction:column;
	justify-content:flex-end;
	width:100%;
	height:100%;
	
}
.category-card:hover{
	background-color: #00000031;
}
.male-filter a:nth-child(1) {background-image: url("/other-imgs/t-shirts.jpg");}
.male-filter a:nth-child(2) {background-image: url("/other-imgs/shirt.jpg");}
.male-filter a:nth-child(3) {background-image: url("/other-imgs/jeans.jpg");}
.male-filter a:nth-child(4) {background-image: url("/other-imgs/shorts.jpg");}
.male-filter a:nth-child(5) {background-image: url("/other-imgs/trousers.jpg");}
.male-filter a:nth-child(6) {background-image: url("/other-imgs/jacket.jpg");}
.male-filter a:nth-child(7) {background-image: url("/other-imgs/track.jpg");}
.male-filter a{
	background-size: cover;
}
.female-filter a:nth-child(1) {background-image: url("/other-imgs/kurti.jpg");}
.female-filter a:nth-child(2) {background-image: url("/other-imgs/salwar.jpg");}
.female-filter a:nth-child(3) {background-image: url("/other-imgs/dress.jpg");}
.female-filter a:nth-child(4) {background-image: url("/other-imgs/tees.jpg");}
.female-filter a:nth-child(5) {background-image: url("/other-imgs/fjeans.jpg");}

.female-filter a{
	background-size: cover;
}


footer{
width:100%;
height:40vh;
background-color: #565656;
}
</style>