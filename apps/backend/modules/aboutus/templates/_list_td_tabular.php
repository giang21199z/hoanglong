<td class="sf_admin_text sf_admin_list_td_title">
    <?php echo $about_us->getTitle()?>
</td>
<td class="sf_admin_text sf_admin_list_td_images">
    <img src="/uploads/aboutus/<?php echo $about_us->getImages() ?>" class="img img-responsive" width="100em">
</td>
<td class="sf_admin_text sf_admin_list_td_summary">
    <?php echo VtHelper::truncate($about_us->getSummary()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_content">
    <?php echo VtHelper::trunicateHtmlToView($about_us->getContent()) ?>
</td>