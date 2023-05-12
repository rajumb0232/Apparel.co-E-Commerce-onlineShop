<style>
html{
overflow-x: hidden;
}
*{
	margin: 0;
	outline:none;
	border:0;
	text-decoration: none;
	font-family: 'Poppins', sans-serif
}

.navbar{
	width:100%;
	display:flex;
	justify-content:space-between;
	align-items:center;
	border-bottom: 2px solid #ebe8e8;
	margin-bottom: .5rem;
}
.navbar h2{
	color:#292929;
	padding:.5rem 2rem;
	margin: .5rem 2rem;
	border:2px solid #fff;
	border-radius: 50px;
	
}

.navbar div a,.admin-logout{
	color:#525252;
	font-size:1.1rem;
	font-weight: 600;
	padding:.5rem 2rem;
	margin: .5rem 2rem;
	border:2px solid #fff;
	border-radius: 50px;
}
.navbar div a:nth-child(1){
	margin: .5rem 0rem;
}
.navbar div a:hover,.admin-logout:hover{
	border:2px solid #ebe8e8;
	border-radius: 50px;
}

.navbar a:nth-child(1){
	border-bottom:2px solid #fff;
}
.navbar a h2:nth-child(1):hover{
	color:#565656;
	border:2px solid #ebe8e8;
	border-radius: 50px;
}
</style>