<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header">OUR TEAM - ALL </h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-facebook"></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Our Team> All
        </p>
    </div>
    <?php for ($i = 0; $i < count($doctors);): ?>
        <div class="row list-part">
            <?php
            $temp = $i;
            for ($j = $temp; $j < $temp + 3 && $j < count($doctors); $j++, $i++):?>

                <div class="col-xs-4 part">
                    <div class="row text-center">
                        <img src="/uploads/doctors/<?php echo $doctors[$j]['avatar']?>" class="img-circle img-responsive">
                    </div>
                    <div class="row text-center">
                        <p class=" no-margin name">
                            <?php echo $doctors[$j]['name']?>
                        </p>

                        <p class="work">
                            <?php echo $doctors[$j]['degree']?>
                        </p>

                        <p class="description">
                            <?php echo VtHelper::truncate($doctors[$j]['summary'], 50)?>
                        </p>
                        <button class="btn-readmore">
                            <p class="no-margin">
                                READ MORE
                            </p>
                        </button>
                    </div>
                </div>
            <?php endfor; ?>
        </div>
    <?php endfor; ?>
    <div class="row text-center paginations" style="margin-top: 25px;">
        <button class="pa-active">
            <p class="no-margin">
                1
            </p>
        </button>
        <button>
            <p class="no-margin">
                2
            </p>
        </button>
        <button>
            <p class="no-margin">
                3
            </p>
        </button>
        <button>
            <p class="no-margin">
                4
            </p>
        </button>
        <button>
            <p class="no-margin">
                5
            </p>
        </button>

    </div>
</div>
<!-- section end -->