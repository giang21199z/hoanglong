<td class="sf_admin_text sf_admin_list_td_name">
  <?php echo $category_news->getName() ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
  <?php echo false !== strtotime($category_news->getUpdatedAt()) ? format_date($category_news->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
