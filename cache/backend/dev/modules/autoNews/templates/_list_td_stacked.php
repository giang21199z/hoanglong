<td colspan="5">
  <?php echo __('%%title%% - %%summary%% - %%content%% - %%images%% - %%updated_at%%', array('%%title%%' => $news->getTitle(), '%%summary%%' => $news->getSummary(), '%%content%%' => $news->getContent(), '%%images%%' => $news->getImages(), '%%updated_at%%' => false !== strtotime($news->getUpdatedAt()) ? format_date($news->getUpdatedAt(), "f") : '&nbsp;'), 'messages') ?>
</td>
