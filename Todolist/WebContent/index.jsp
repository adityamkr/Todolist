<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

.todos
{
 text-align:center;
color:blue;
margin-top:30px;
}

.upperdiv
{
         width: 576px;
    height: 54px;
    /* border: 2px solid; */
    position: relative;
    left: -51px;
    position: absolute;
    top: 95px;
    margin-left: 549px;
    display: inline-block;
    /* text-align: center; */
}

.texty
{
         position: relative;
    top: 6px;
    border-radius: 30px;
    height: 37px;
    width: 288px;
    display: inline-block;
    left: 6px;
    padding-left: 16px;
    padding-right: 48px;
}
.add
{
       width: 24px;
    text-align: center;
    height: 23px;
    border-radius: 39px;
    border: 2px solid;
    position: relative;
    left: -33px;
    font-size: 16px;
    top: 7px;

}

.singledo
{
        height: 28px;
    margin-bottom: 13px;
    font-size: 20px;
    border: 2px solid;
    width: 414px;
    border-radius: 16px;
    padding-top: 6px;
    /* width: 30px; */
    padding-bottom: 5px;
    padding-right: 81px;
    padding-left: 19px;
    list-style-type: none;
    word-wrap: break-word;
}

#lists
{
       position: relative;
    width: 518px;
    border: 2px;
    display: inline-block;
    top: 96px;
    left: 455px;	

}

.delbtn
{
        position: relative;
    position: rw;
    left: 58px;
    width: 38px;
    top: 2px;
    height: 20px;
    float: right;
}
</style>
</head>
<body>
 <h1 class="todos">Plan Your Todo's</h1>
    <div class="upperdiv">
    <input type="text" placeholder="Enter your To-do" class="texty" id="tex">
    <button class="add" onclick="addtodo()">+</button>
    </div>
     
     <div id="lists">
     
     </div>
    
   <script>
    let arr=[];
       function addtodo()
       {
    	  
    	   arr.push(1);
    	   console.log(arr.length);
               let len=arr.length;
    		  let elem= document.createElement("li");
    		  elem.setAttribute("class","singledo");
       	    elem.setAttribute("id",len+"");
       	  let abc= document.getElementById("lists").appendChild(elem);
       	  // let x=document.getElementbyId("1").innerHTML;
       	   let x=document.getElementById("tex").value;
  			//console.log(x);
  			document.getElementById(len+"").innerHTML=x;
  			
  			let del = document.createElement("button");
  			del.setAttribute("class","delbtn");
  			del.setAttribute("id","btn"+len);
  			del.innerHTML="Del";
  			abc.appendChild(del);
  			//del.addEventListener("click",func(this.id),false);
  			document.getElementById("btn"+len).onclick=func;
       }
       
       function func(clicked)
       {
    	   console.log(this.id);
    	   document.getElementById(this.id);
    	   
    	   s=this.id.substring(3);
    	    document.getElementById(s).remove();
       }
       
       
   </script>
</body>

</html>