var box=document.getElementById('verify_box');
var vimg=document.getElementById('vimg');
var xbox=document.getElementById('verify_xbox');
var element=document.getElementById('btn2');
var d=document.querySelector('.verify');
var kuai=document.querySelector('.kuai');
var kuai2=document.querySelector('.kuai2');
var b=Math.ceil(Math.random()*150);
var bx=Math.ceil(Math.random()*130+100);
var o=element.offsetWidth;
var arr = ["img/t1.png", "img/t2.png", "img/t3.png", "img/t4.png", "img/t5.png"];
var ra=Math.floor(Math.random()*arr.length);
vimg.style.background="url("+arr[ra]+")";
vimg.hidden=true;
kuai2.style.left=bx+"px";
kuai2.style.top=b+"px";
kuai.style.background="url("+arr[ra]+")";
kuai.style.top=kuai2.style.top;
kuai.style.backgroundPositionX=-bx+"px";
kuai.style.backgroundPositionY=-b+"px";
d.onmouseover=function(){
    vimg.hidden=false;
}
d.onmouseout=function(){
    vimg.hidden=true;
}
element.ondragstart = function() {
    return false;
};
element.onselectstart = function() {
    return false;
};
element.onmousedown = function(e) {
    var disX = e.clientX - element.offsetLeft;
    document.onmousemove = function (e) {
        var l = e.clientX - disX +o;
        if(l<o){
            l=o
        }
        if(l>d.offsetWidth){
            l=d.offsetWidth
        }
        xbox.style.width = l + 'px';
        kuai.style.left=l-o+"px";
    };
    document.onmouseup = function (e){
        var l = e.clientX - disX +o;
        if(Math.abs(l-o-bx)>10){
            l=o;
            d.nextElementSibling.innerText="验证失败";
            d.nextElementSibling.style.color="#f00";
            d.style.border='1px solid #f00'
            kuai.style.left="0px";
        }else{
            l=bx+o;
            xbox.innerHTML='<div id="btn2"><img style="margin-top:2px" class="img" src="img/d.svg"/></div>';
            d.nextElementSibling.innerText="验证通过";
            d.style.border='none';
            d.nextElementSibling.style.color="#090";
        }
        xbox.style.width = l + 'px';
        kuai.style.left=l-o+"px";
        document.onmousemove = null;
        document.onmouseup = null;
    };
}