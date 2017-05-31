<td class="sf_admin_text sf_admin_list_td_title">
    <?php echo VtHelper::truncate($service->getTitle()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_summary">
    <?php echo VtHelper::truncate($service->getSummary()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_content">
    <?php echo VtHelper::trunicateHtmlToView($service->getContent()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_images">
    <img src="/uploads/services/<?php echo $service->getImages() ?>" class="img img-responsive" width="150em">
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
    <?php echo false !== strtotime($service->getUpdatedAt()) ? format_date($service->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
