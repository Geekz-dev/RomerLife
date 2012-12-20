<article class="res">
    <header>
        <div class="res-num"><%= resNum %></div>
        <div class="res-name"><%= userName %></div>
        <div class="header-bottom">
            <div class="res-userId"><%= userId %></div>
            <div class="res-createdAt"><%= createdAt %></div>
        </div>
    </header>
    <div class="res-text" data-res="res_<%= resNum %>">
        <%= resText %>
    </div>
</article>
