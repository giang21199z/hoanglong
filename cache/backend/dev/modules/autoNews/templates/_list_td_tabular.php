<td class="sf_admin_text sf_admin_list_td_title">
  <?php echo $news->getTitle() ?>
</td>
<td class="sf_admin_text sf_admin_list_td_summary">
  <?php echo $news->getSummary() ?>
</td>
<td class="sf_admin_text sf_admin_list_td_content">
  <?php echo $news->getContent() ?>
</td>
<td class="sf_admin_text sf_admin_list_td_images">
  <?php echo $news->getImages() ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
  <?php echo false !== strtotime($news->getUpdatedAt()) ? format_date($news->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
