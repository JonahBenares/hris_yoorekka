<?php 
include('../template/header.php'); 
include('../includes/connection.php'); 
include('../template/navbar.php'); 
include('../includes/functions.php');

 $today=date("Y-m-d");
?>  

<style type="text/css">
    rect{
        background: #fff2!important;
    }
</style>
<section class="content">
    <div class="content__inner">
        <header class="content__title">
            <h1>Gender Statistics GRAPH</h1>
            <small>Welcome to the New HRIS web app experience!</small>
        </header> 
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-6">
                                <select name='type' id='change-type' class='form-control'>
                                    <option value=''>Select</option>
                                    <option value='Company Division'>Company Division</option>
                                    <option value='Department'>Department</option>
                                    <option value='Location'>Location</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-lg-12 p-t-20 p-b-20" style="background: #fff">
                                <div id="barchart_material" style="width: 100%; height: 600px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    
    </div>
</section>

<?php 
include('../template/footer.php'); 
?>  
<script type="text/javascript" src="../assets/js/graph.js"></script>
<script type="text/javascript">
$('#change-type').on('change',function(){    
     if(this.value=='Company Division'){       
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Company Division', 'Male', 'Female'],
             <?php
              $get = $con->query("SELECT * FROM business_unit");
              while($fetch = $get->fetch_array()){
                echo "['".$fetch['bu_name']."',".getGenderCount($con, $fetch['bu_id'], 'current_bu', 'Male').",".getGenderCount($con, $fetch['bu_id'],'current_bu', 'Female')."],";
              } ?>
    
            ]);               
            var options = {
              chart: {

                title: 'Gender Statistics Report',
                subtitle: 'Gender Statistics per Company Division',
              },
              bars: 'horizontal' // Required for Material Bar Charts.
            };

            var chart = new google.charts.Bar(document.getElementById('barchart_material'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
          } 
      }
      if(this.value=='Department'){       
        google.charts.load('current', {'packages':['bar']});
         google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                      ['Department', 'Male', 'Female'],
                     <?php
                      $get = $con->query("SELECT * FROM department");
                      while($fetch = $get->fetch_array()){
                        echo "['".$fetch['dept_name']."',".getGenderCount($con, $fetch['dept_id'], 'current_dept', 'Male').",".getGenderCount($con, $fetch['dept_id'],'current_dept', 'Female')."],";
                      } ?>
            
                    ]);
               
            var options = {
              chart: {
                title: 'Gender Statistics Report',
                subtitle: 'Gender Statistics per Department',
              },
              bars: 'horizontal' // Required for Material Bar Charts.
            };

            var chart = new google.charts.Bar(document.getElementById('barchart_material'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
          } 
      }
      if(this.value=='Location'){       
        google.charts.load('current', {'packages':['bar']});
         google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                      ['Location', 'Male', 'Female'],
                     <?php
                      $get = $con->query("SELECT * FROM location");
                      while($fetch = $get->fetch_array()){
                        echo "['".$fetch['location_name']."',".getGenderCount($con, $fetch['location_id'], 'current_location', 'Male').",".getGenderCount($con, $fetch['location_id'],'current_location', 'Female')."],";
                      } ?>
            
                    ]);
               
            var options = {
              chart: {
               title: 'Gender Statistics Report',
                subtitle: 'Gender Statistics per Location',
              },
              bars: 'horizontal' // Required for Material Bar Charts.
            };

            var chart = new google.charts.Bar(document.getElementById('barchart_material'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
          } 
      }
      
    });
  google.charts.load('current', {'packages':['bar']});
         google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                      ['Company Division', 'Male', 'Female'],
                     <?php
                      $get = $con->query("SELECT * FROM business_unit");
                      while($fetch = $get->fetch_array()){
                        echo "['".$fetch['bu_name']."',".getGenderCount($con, $fetch['bu_id'], 'current_bu', 'Male').",".getGenderCount($con, $fetch['bu_id'],'current_bu', 'Female')."],";
                      } ?>
            
                    ]);
               
            var options = {
              chart: {
                title: 'Gender Statistics Report',
                subtitle: 'Gender Statistics per Company Division',
              },
              bars: 'horizontal' // Required for Material Bar Charts.
            };

            var chart = new google.charts.Bar(document.getElementById('barchart_material'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
          } 
   
</script>