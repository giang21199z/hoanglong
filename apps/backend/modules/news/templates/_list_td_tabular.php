<td class="sf_admin_text sf_admin_list_td_title">
    <?php echo VtHelper::truncate($news->getTitle()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_summary">
    <?php echo VtHelper::truncate($news->getSummary()) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_images">
    <img src="/uploads/news/<?php echo $news->getImages() ?>" class="img img-responsive" width="150em">
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
    <?php echo false !== strtotime($news->getUpdatedAt()) ? format_date($news->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
    <span class="<?php echo Constant::$Display_Homepage[$news->getPriority()]['class']?>"><?php echo Constant::$Display_Homepage[$news->getPriority()]['label']?></span>
</td>

