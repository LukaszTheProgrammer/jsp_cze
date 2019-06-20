<style>
    .current {
        font-weight: bold;
        color: indianred;
    }
</style>
<div class="menu">
    <a href ="index.jsp" class="${param.menu == 'home'? 'current': ''}">Home</a>
    <a href ="el.jsp" class="${param.menu == 'el'? 'current': ''}">EL</a>
    <a href ="use_bean.jsp" class="${param.menu == 'use_bean'? 'current': ''}">Use Bean</a>
</div>