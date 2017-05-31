<td class="sf_admin_text sf_admin_list_td_fullname">
    Họ tên: <b><?php echo $schedule->getFullname() ?> - <?php echo $schedule->getAge() ?> </b> tuổi<br>
    Địa chỉ: <i><?php echo $schedule->getAddress() ?></i><br>
    Số đt:  <b><?php echo $schedule->getPhone() ?></b>
</td>
<td class="sf_admin_text sf_admin_list_td_status admin_<?php echo $schedule->getIdschedule()?>">
  <span id="<?php echo $schedule->getIdschedule() ?>" class="<?php echo Constant::$Status_Booking[$schedule->getStatus()]['class']?>"><?php echo Constant::$Status_Booking[$schedule->getStatus()]['label']?></span>
</td>
<td class="sf_admin_date sf_admin_list_td_date">
  <?php echo false !== strtotime($schedule->getDate()) ? format_date($schedule->getDate(), "d") : '&nbsp;' ?>
</td>
<td class="sf_admin_text sf_admin_list_td_description">
  <?php echo $schedule->getDescription() ?>
</td>
