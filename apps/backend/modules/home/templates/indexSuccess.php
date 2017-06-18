<div class="row">
    <div class="col-lg-6">
        <h3>Danh sách khách đặt hẹn khám mới nhất</h3>
        <table class="table table-responsive">
            <thead>
            <tr>
                <td> Họ tên</td>
                <td> Điện thoại</td>
                <td>Địa chỉ</td>
                <td>Ngày hẹn</td>
                <td>Tin nhắn</td>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($schedule as $value): ?>
                <tr>
                    <td> <?php echo $value['fullname']?></td>
                    <td> <?php echo $value['phone']?></td>
                    <td> <?php echo $value['address']?></td>
                    <td> <?php echo $value['date']?></td>
                    <td title="<?php echo $value['description']?>"> <?php echo VtHelper::truncate($value['description'])?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="col-lg-6">
        <h3>Lượng khách đặt hẹn tính đến <?php echo date("d/m/Y") ?></h3>
        <canvas id="mybarChart"></canvas>
    </div>

</div>
<script src="/js/Chart.js/dist/Chart.min.js"></script>
<script>
    var ctx = document.getElementById("mybarChart");
    var mybarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6"],
            datasets: [{
                label: 'Số lượng khách đặt hẹn theo tháng',
                backgroundColor: "#26B99A",
                data: [51, 30, 40, 28, 92, 50]
            }]
        },

        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

</script>