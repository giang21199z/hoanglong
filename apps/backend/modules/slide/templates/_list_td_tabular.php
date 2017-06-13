<td class="sf_admin_text sf_admin_list_td_link">
    <img src="/data1/images/<?php echo $slide->getImages() ?>" class="img-responsive" alt="Cinque Terre"
         style="width: 70%"><br>
</td>
<td class="sf_admin_text sf_admin_list_td_price">
    <?php echo $slide->getName() ?>
</td>
<script>
    $(document).ready(function () {
        $('li').removeClass('active');
        $('#slide').addClass('active');
    });
</script>