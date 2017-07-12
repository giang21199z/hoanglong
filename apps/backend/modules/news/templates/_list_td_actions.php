<td>
    <ul class="list-group">
        <?php echo $helper->linkToEdit($news, array('label' => 'Detail', 'params' => array(), 'class_suffix' => 'edit',)) ?>
        <?php
            echo $news->getPriority() == 2 ? '': $helper->linkToDelete($news, array('label' => 'Del', 'params' => array(), 'confirm' => 'Are you sure?', 'class_suffix' => 'delete',))
        ?>
    </ul>
</td>
