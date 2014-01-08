<li class="job-listing container">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<h3><?php the_title( ) ; ?> - <?php the_job_type( ) ; ?></h3>
		</div>
		<div class="details col-md-9 col-sm-12">
			<div class="location"><?php the_job_location( false ) ; ?></div>
			<div class="salary-day-rate">
				<?php
					if ( ! empty( $post->_job_salary ) )
					{
						echo 'Salary: ' . $post->_job_salary ;
					}
					else if ( ! empty( $post->_job_day_rate ) )
					{
						echo 'Day Rate: ' . $post->_job_day_rate ;
					}
				?>
			</div>
		</div>
		<div class="link col-md-3 col-sm-12">
			<a href="<?php the_job_permalink( ) ; ?>">Tell me more</a>
		</div>
	</div>
</li>