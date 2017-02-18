// 封装一个用class取元素的方法
function getByclass(clsName,parent){
    var oParent=parent?document.getElementById(parent):document,
        eles=[],
        elements=oParent.getElementsByTagName('*');
    for(var i=0,l=elements.length;i<l;i++){
        if(elements[i].className==clsName){
            eles.push(elements[i]);
        }
    }
    return eles;
}
window.onload=drag;
function drag() {
    var oTitle=getByclass('login_logo_webqq','loginPanel')[0];
    //拖曳
    oTitle.onmousedown=fnDown;
    //关闭
    var oClose=document.getElementById('ui_boxyClose');
    oClose.onclick=function () {
        document.getElementById('loginPanel').style.display='none';
    }
    //切换状态
    var loginState=document.getElementById('loginState'),
        stateList=document.getElementById('loginStatePanel'),
        lis=stateList.getElementsByTagName('li'),
        stateTxt=document.getElementById('login2qq_state_txt'),
        loginStateShow=document.getElementById('loginStateShow');
    loginState.onclick=function (e) {//点击登陆面板的时候应该让整个ul显示出来

        e=e||window.event;
        stateList.style.display='block';
        if(e.stopPropagation){
            e.stopPropagation();
        }else{
            e.cancelBubble=true;
        }//同理，这儿也要设置阻止事件冒泡，否则会跟下面设置的document.onclick中的display＝none冲突。
        // 就是不管点哪，这个列表都不出来了。
    }
    //鼠标滑过。离开和点击状态列表时
    for(var i=0,l=lis.length;i<l;i++){
        lis[i].onmouseover=function () {
            this.style.background='#567';
        }
        lis[i].onmouseout=function () {
            this.style.background='#fff';
        }
        lis[i].onclick=function (e) {
            e=e||window.event;
            //如果不阻止事件冒泡的话，点击列表元素之后这整个列表就不会隐藏起来，
            // 因为即使设置了stateList.style.display='none';，
            // 该事件会从li冒泡到ul再冒泡到div与上面设置的stateList.style.display='block';有冲突。
            // 所以在这儿要阻止事件冒泡，以防触发div中让列表显示的代码。
            if(e.stopPropagation){
                e.stopPropagation();
            }else{
                e.cancelBubble=true;
            }
            var id=this.id;//把点的那个元素的id就取到了.
            stateList.style.display='none';
            stateTxt.innerHTML=getByclass('stateSelect_text',id)[0].innerHTML;
            loginStateShow.className='';
            loginStateShow.className='login-state-show '+id;//注意login-state-show后面有一个空格是一定要有的

        }

    }
    document.onclick=function () {
        stateList.style.display='none';
    }
}
function fnDown(event) {
    //clientX,clientY表示事件发生时鼠标指针在视口中的水平和垂直坐标，即光标的x，y坐标

    event=event||window.event;
    var oDrag=document.getElementById('loginPanel');
    //光标摁下时光标和面板之间的距离
    disX=event.clientX-oDrag.offsetLeft,
        disY=event.clientY-oDrag.offsetTop;
    //移动
    document.onmousemove=function (event) {
        event=event||window.event;
        fnMove(event,disX,disY);
    }
    //释放鼠标
    document.onmouseup=function () {
        document.onmousemove=null;
        document.onmouseup=null;
    }
}
function fnMove(e,posX,posY) {
    var oDrag=document.getElementById('loginPanel'),
    l=e.clientX-posX,
        t=e.clientY-posY;
    winW=document.documentElement.clientWidth||document.body.clientWidth;
    winH=document.documentElement.clientHeight||document.body.clientHeight;
    maxW=winW-oDrag.offsetWidth-10,
        maxH=winH-oDrag.offsetHeight;
    if(l<0){
        l=0;

    }else if(l>maxW){
        l=maxW
    }
    if(t<0){
        t=10;
    }else if(t>maxH){
        t=maxH;
    }
    oDrag.style.left=l+'px';
    oDrag.style.top=t+'px';
}