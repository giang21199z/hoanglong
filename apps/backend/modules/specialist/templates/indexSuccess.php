<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
    #sortable li {
        list-style: none;
        margin-top: 10px;
        height: 40px;
    }
</style>
<?php use_helper('I18N', 'Date') ?>
<?php include_partial('specialist/assets') ?>

<div id="sf_admin_container">

    <?php include_partial('specialist/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('specialist/list_header', array('pager' => $pager)) ?>
    </div>


    <div id="sf_admin_container" style="width: 50%; float: left">
        <h1><?php echo __('Danh sách các chuyên khoa', array(), 'messages') ?></h1>
        <?php include_partial('specialist/list', array('pager' => $pager, 'sort' => $sort, 'helper' => $helper)) ?>
        <ul class="sf_admin_actions">
            <?php include_partial('specialist/list_batch_actions', array('helper' => $helper)) ?>
            <?php include_partial('specialist/list_actions', array('helper' => $helper)) ?>
        </ul>
    </div>
    <div id="sf_admin_container" style="width: 50%; float: left">
        <h1>Kéo thả để sắp xếp vị trí
            <button id="btn-order" class="btn btn-primary">Lưu</button>
        </h1>
        <ul id="sortable">
            <?php foreach ($pager->getResults() as $i => $specialist): ?>
                <li class="ui-state-default" id="<?php echo $specialist->getIdspecialist() ?>"><span
                        class="ui-icon ui-icon-arrowthick-2-n-s"></span><?php echo $specialist->getName() ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div id="sf_admin_footer">
        <?php include_partial('specialist/list_footer', array('pager' => $pager)) ?>
    </div>
</div>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(function () {
        $("#sortable").sortable();
        $("#sortable").disableSelection();
    });
    var arr = [];
    $(document).ready(function () {
        $("#sortable li").each(function (index) {
            var id = $(this).attr('id');
            arr.push({id: id, index: index});
        });
        $("#btn-order").click(function () {
            var kq = [];
            $("#sortable li").each(function (index) {
                var id = $(this).attr('id');
                var result = arr.filter(function (v) {
                    return v.id === id; // Filter out the appropriate one
                })[0]; // Get result and access the foo property
                if (index != result.index) {
                    kq.push({id: id, index: index});
                }
            });
            console.log(kq);
            $.ajax({
                type: 'POST',
                url: '<?php echo url_for("ajax_order_specialist")?>',
                data: {data: JSON.stringify(kq)},
                success: function ($msg) {

                }
            }).done(function ($msg) {
                if(JSON.parse($msg).status == 1){
                    location.reload();
                }else{
                    alert("Update false");
                }
            });
        });
    });
</script>