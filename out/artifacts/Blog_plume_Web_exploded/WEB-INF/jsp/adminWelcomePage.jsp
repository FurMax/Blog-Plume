<%--
  Created by IntelliJ IDEA.
  User: Fur
  Date: 2021/9/20
  Time: 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>欢迎点击侧边菜单进而进行后台信息管理~</h3>
<hr>
<div id="box">1</div>
<%--这里有问题，似乎没有加载echarts图 换成普通网页应该就可以了。。--%>
<script src="https://cdn.jsdelivr.net/npm/echarts@5.2.0/dist/echarts.min.js"></script>
<script type="text/javascript">
    // 初始化一个echarts实例对象
    window.onload = function () {
        options = {
            title:{
                text:'博客类型'
            },
            tooltip:{},
            legend:{
                data:['篇数']
            },
            xAxis: {
                data: ["Java","Python","嵌入式","考研","LifeStyles","其他资源"]
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                //data应该来自于后端
                data: [5, 20, 36, 10, 10, 20]
            }]
    }
    var myChart = echarts.init(document.querySelector('#box'));
    myChart.setOption(options);

};



    //将配置项设置给echarts实例对象
</script>
</body>
</html>
