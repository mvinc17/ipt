<?php get_header(); ?>
<div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-9">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">Asset Search</div>
								
	
				  			</div>
				  			<div class="content-box-large box-with-header">
				  				<table id="itemsTable">
                                    <thead>
                                        <tr>
                                            <td>Asset ID</td>
                                            <td>Purchase Date</td>
                                            <td>Last Hired</td>
                                            <td>Condition</td>
                                            <td>Parent Name</td>
                                            <td>Parent Category</td>
                                            <td>More Details</td>
                                            <td>Edit</td>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>001</td>
                                        <td>01-10-2014</td>
                                        <td>12-06-2016</td>
                                        <td><span class="label label-primary">Fair</span></td>
                                        <td>Some Item</td>
                                        <td>Category A</td>
                                        <td><a href="/item/details?itemID=001">More Details</a></td>
                                        <td><a href="/item/edit?itemID=001">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>002</td>
                                        <td>01-10-2014</td>
                                        <td>12-06-2016</td>
                                        <td><span class="label label-danger">Poor</span></td>
                                        <td>Some Item</td>
                                        <td>Category A</td>
                                        <td><a href="/item/details?itemID=001">More Details</a></td>
                                        <td><a href="/item/edit?itemID=001">Edit</a></td>
                                    </tr>
                                    <tr>
                                        <td>003</td>
                                        <td>01-10-2014</td>
                                        <td>12-06-2016</td>
                                        <td><span class="label label-success">Good</span></td>
                                        <td>Some Item</td>
                                        <td>Category A</td>
                                        <td><a href="/item/details?itemID=001">More Details</a></td>
                                        <td><a href="/item/edit?itemID=001">Edit</a></td>
                                    </tr>
                                </table>
							</div>
		  				</div>
		  			</div>
		  		</div>

		  		<div class="col-md-3">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">Asset Search</div>
								
					
				  			</div>

                              
				  			<div class="content-box-large box-with-header">
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Asset ID">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Item ID">
                                </div>
                                <br>

				  				<div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Item Name">
                                </div>
                                <br>

				  				<div class="input-group" style="width:100%;">
                                    <input type="text" class="form-control" placeholder="Purchase Date (dd-mm-yyyy)">
                                </div>
                                <br>
                                <div class="input-group" style="width:100%;">
                                    <select class="form-control">
                                        <option selected disabled>Asset Condition</option>
                                        <option>Good</option>
                                        <option>Fair</option>
                                        <option>Poor</option>
                                        <option>Broken</option>
                                    </select>
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
                                <a class="btn btn-block btn-success">Search</a>
                                

							</div>
		  				</div>
		  			</div>
		  		</div>
		  	</div>
		  </div>
		</div>
        <script>
            $(document).ready(function() {
                $("#itemsTable").DataTable();
            });
        </script>
        <?php get_footer(); ?>