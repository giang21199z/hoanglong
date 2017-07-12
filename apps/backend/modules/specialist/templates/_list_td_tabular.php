<td class="sf_admin_text sf_admin_list_td_order_item">
  <?php echo $specialist->getOrderItem()+1 ?>
</td>
<td class="sf_admin_text sf_admin_list_td_name">
  <?php echo $specialist->getName() ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
  <?php echo false !== strtotime($specialist->getUpdatedAt()) ? format_date($specialist->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
