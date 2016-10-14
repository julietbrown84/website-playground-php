<div class="navigation">
    <ul class="navigation__list">
        <% loop $Menu(1) %>
            <li class="navigation__list-item $LinkingMode"><a class="navigation__link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
        <% end_loop %>
    </ul>
</div>