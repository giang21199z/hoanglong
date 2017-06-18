<td class="sf_admin_text sf_admin_list_td_title">
    <?php echo VtHelper::truncate($news->getTitle(),200) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_summary" style="width: 40%">
    <?php echo VtHelper::truncate($news->getSummary(),200) ?>
</td>
<td class="sf_admin_text sf_admin_list_td_images" style="width: 15%">
    <img src="/uploads/news/<?php echo $news->getImages() ?>" class="img img-responsive" width="150em">
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at" style="width: 10%">
    <?php echo false !== strtotime($news->getUpdatedAt()) ? format_date($news->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
    <span class="<?php echo Constant::$Display_Homepage[$news->getPriority()]['class']?>"><?php echo Constant::$Display_Homepage[$news->getPriority()]['label']?></span>
</td>

