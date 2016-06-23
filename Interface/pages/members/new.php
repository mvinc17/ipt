<?php get_header(); ?>
<div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-9">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">New Member</div>
								
	
				  			</div>
				  			<div class="content-box-large box-with-header">
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Member ID" readonly value="Member ID: 12543">
                                </div>
                                <br>

				  				<div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Name">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="datetime" class="form-control" placeholder="Date of Birth (dd-mm-yyyy)">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Join Date (<?php echo date("d-m-Y"); ?>)">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Phone Number">
                                </div>
                                <br>
                                <a class="btn btn-block btn-success">Save</a>
							</div>
		  				</div>
		  			</div>
		  		</div>
		  	</div>
		  </div>
		</div>
        <script>
            $(document).ready(function() {
                $("#searchTable").DataTable();
            });
        </script>
        <?php get_footer(); ?>