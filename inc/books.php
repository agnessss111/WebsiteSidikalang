<section class="page-section bg-dark" id="home">
	<div class="container">
		<h2 class="text-center">Informasi penduduk</h2>
	<div class="d-flex w-100 justify-content-center">
		<hr class="border-warning" style="border:3px solid" width="15%">
	</div>
	<div class="d-flex w-100">
		<?php
		$packages = $conn->query("SELECT * FROM `informasi` order by rand() ");
			while($row = $packages->fetch_assoc() ):
				$cover='';
				if(is_dir(base_app.'uploads/book_'.$row['id'])){
					$img = scandir(base_app.'uploads/book_'.$row['id']);
					$k = array_search('.',$img);
					if($k !== false)
						unset($img[$k]);
					$k = array_search('..',$img);
					if($k !== false)
						unset($img[$k]);
					$cover = isset($img[2]) ? 'uploads/book_'.$row['id'].'/'.$img[2] : "";
				}
				$row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
		?>
            <div class="card w-100 rounded-0">
            <a href="./?page=books&id=<?php echo md5($row['id']) ?>" class="btn btn-sm btn-flat btn-warning"><img class="card-img-top" src="<?php echo validate_image($cover) ?>" alt="<?php echo $row['title'] ?>" height="200rem" style="object-fit:cover"></a>
                <div class="card-body">
                <h5 class="card-title truncate-1"><?php echo $row['title'] ?></h5>
                <p class="card-text truncate"><?php echo $row['description'] ?></p>
                <div class="w-100 d-flex justify-content-end">
                    <i class="fa fa-arrow-right"></i>
                </div>
                </div>
            </div>
		<?php endwhile; ?>
	</div>
	<div class="d-flex w-100 justify-content-end">
		<a href="./?page=books" class="btn btn-flat btn-warning mr-4">Lihat Selengkapnya<i class="fa fa-arrow-right"></i></a>
	</div>
	</div>
</section>