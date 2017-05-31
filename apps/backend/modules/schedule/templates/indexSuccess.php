<?php use_helper('I18N', 'Date') ?>
<?php include_partial('schedule/assets') ?>

<div id="sf_admin_container">
    <h1><?php echo __('Danh sách đặt lịch', array(), 'messages') ?></h1>

    <?php include_partial('schedule/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('schedule/list_header', array('pager' => $pager)) ?>
    </div>

    <div id="sf_admin_bar">
        <?php include_partial('schedule/filters', array('form' => $filters, 'configuration' => $configuration)) ?>
    </div>

    <div id="sf_admin_content">
        <?php include_partial('schedule/list', array('pager' => $pager, 'sort' => $sort, 'helper' => $helper)) ?>
        <ul class="sf_admin_actions">
            <?php include_partial('schedule/list_batch_actions', array('helper' => $helper)) ?>
            <?php include_partial('schedule/list_actions', array('helper' => $helper)) ?>
        </ul>
    </div>

    <div id="sf_admin_footer">
        <?php include_partial('schedule/list_footer', array('pager' => $pager)) ?>
    </div>
</div>

<script>
    $(document).ready(function () {
        var id;
        var content;
        $('span').click(function () {
            if ($(this).text() === 'Đã liên lạc') {
                swal("Đã liên lạc với khách hàng!","","error");
                return;
            }
            id = this.id;
            swal({
                title: "Thay đổi trạng thái",
                text: "Bạn có muốn thay đổi trạng thái lịch hẹn không?",
                type: "info",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                console.log(id);
                $.ajax({
                    type: 'POST',
                    url: '<?php echo url_for("update_status_schedule")?>',
                    data: {
                        idschedule: id
                    }
                }).done(function () {
                    $(".admin_" + id + " span").removeClass('label-warning').addClass('label-success').html('Đã liên lạc');
                    swal("Đã liên lạc với khách hàng!","","success");
                });
            });
        });

    })
    ;
</script>