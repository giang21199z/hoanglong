<?php use_helper('I18N', 'Date') ?>
<?php include_partial('service/assets') ?>
<link rel="stylesheet" href="/css/eTree.css">
<h1><?php echo __('List Service', array(), 'messages') ?></h1>
<div id="sf_admin_container" style="width: 30%; float: left">
    <div id="root" class="easy-tree">

        <ul>
            <?php foreach ($data as $value): ?>
                <li><?php echo $value['name'] ?>
                    <?php if (isset($value['child'])): ?>
                        <ul>
                            <?php foreach ($value['child'] as $child): ?>
                                <li>
                                    <?php
                                    if (isset($child['name'])) {
                                        echo VtHelper::truncate($child['name'], 100);
                                        echo '<ul>';
                                        foreach ($child['child'] as $child2):
                                            echo '<li>' . VtHelper::truncate($child2['title'], 100) . '</li>';
                                        endforeach;
                                        echo '</ul>';
                                    } else {
                                        echo VtHelper::truncate($child['title'], 100);
                                    } ?>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            <?php endforeach ?>
        </ul>
    </div>
</div>
<div id="sf_admin_container" style="width: 70%; display: inline-block">

    <?php include_partial('service/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('service/list_header', array('pager' => $pager)) ?>
    </div>

    <div id="sf_admin_bar">
        <?php include_partial('service/filters', array('form' => $filters, 'configuration' => $configuration)) ?>
    </div>

    <div id="sf_admin_content">
        <?php include_partial('service/list', array('pager' => $pager, 'sort' => $sort, 'helper' => $helper)) ?>
        <ul class="sf_admin_actions">
            <?php include_partial('service/list_batch_actions', array('helper' => $helper)) ?>
            <?php include_partial('service/list_actions', array('helper' => $helper)) ?>
        </ul>
    </div>

    <div id="sf_admin_footer">
        <?php include_partial('service/list_footer', array('pager' => $pager)) ?>
    </div>
</div>

<script src="/js/eTree.js"></script>
<script>
    (function ($) {
        function init() {
            $('.easy-tree').EasyTree({
                addable: false,
                editable: false,
                deletable: false
            });
        }

        window.onload = init();
    })(jQuery)
</script>
<script>
    $(document).ready(function () {
        $('.list-group-item').addClass('action-item').removeClass('list-group-item');
        $('.list-group').removeClass('list-group');
        $('a[href$="categoryService/0"]').hide();
    });
</script>