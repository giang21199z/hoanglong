<td class="sf_admin_text sf_admin_list_td_name text-center">
    <?php echo $doctor->getDegree() ?> - <?php echo $doctor->getName() ?><br>
    Chuyên khoa: <?php echo $doctor->getSpecialist()->getName() ?>

</td>
<td class="sf_admin_text sf_admin_list_td_avatar">
    <img src="/uploads/doctors/<?php echo $doctor->getAvatar() ?>" class="img img-circle">
</td>
<td class="sf_admin_text sf_admin_list_td_content">
    <?php echo VtHelper::truncate($doctor->getContent()) ?>
</td>
<td class="sf_admin_date sf_admin_list_td_updated_at">
    <?php echo false !== strtotime($doctor->getUpdatedAt()) ? format_date($doctor->getUpdatedAt(), "f") : '&nbsp;' ?>
</td>
