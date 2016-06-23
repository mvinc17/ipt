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
                                    <input type="text" class="form-control" placeholder="Member ID" readonly value="Item ID: 12543">
                                </div>
                                <br>

				  				<div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Item Name">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <select class="form-control">
                                        <option selected disabled>Item Category</option>
                                        <option>Category A</option>
                                        <option>Category B</option>
                                        <option>Category C</option>
                                        <option>Category D</option>
                                    </select>
                                </div>
                                <br>
                                <div class="well">
                                   <div class="row">
                                        <div class="col col-md-3">
                                            <div class="input-group" style="width:100%;">
                                                <input type="text" class="form-control input-sm" placeholder="Asset ID">
                                            </div>
                                        </div>
                                        <div class="col col-md-3">
                                            <span>Purchased: 01-10-2015</span>
                                        </div>
                                        <div class="col col-md-3">
                                            <span>Last Hired: <a href="/hires/details?hireID=123">01-10-2015</a></span>
                                        </div>
                                        <div class="col col-md-2">
                                            <span><a href="/assets/edit?assetID=123">Edit</a></span>
                                        </div>
                                        <div class="col col-md-1">
                                            <span><a class="btn btn-danger btn-block">X</a></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col col-md-3">
                                            <a class="btn btn-primary">Add Asset</a>
                                        </div>
                                    </div>
                                </div>
                            
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="">
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