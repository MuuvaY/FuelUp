<div class="blockreassurance_product">
    {foreach from=$blocks item=$block key=$key}
        <div{if $block['type_link'] !== $LINK_TYPE_NONE && !empty($block['link'])} style="cursor:pointer;" onclick="window.open('{$block['link']}')"{/if}>
            <span class="item-product">
                {if $block['icon'] != 'undefined'}
                    {if $block['custom_icon']}
                    <img {if $block['is_svg']}class="svg invisible" {/if}src="{$block['custom_icon']}">
                    {elseif $block['icon']}
                    <img class="svg invisible" src="{$block['icon']}">
                    {/if}
                {/if}&nbsp;
            </span>
            {if empty($block['description'])}
              <p class="block-title" style="color:{$textColor};">{$block['title']}</p>
            {else}
              <span class="block-title" style="color:{$textColor};">{$block['title']}</span>
              <p style="color:{$textColor};">{$block['description'] nofilter}</p>
            {/if}
        </div>
    {/foreach}
    <div class="clearfix"></div>
</div>
