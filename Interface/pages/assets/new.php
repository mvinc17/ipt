<?php get_header(); ?>
<div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-9">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">New Item</div>
								
	
				  			</div>
				  			<div class="content-box-large box-with-header">
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Member ID" readonly value="Asset ID: 12543">
                                </div>
                                <br>

				  				<div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Item ID">
                                </div>
                                
                            
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Purchase Date">
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