<!--#include file="app/start.aspx"-->
<%@ OutputCache CacheProfile="AppCache1" VaryByParam="*" %>  
<!DOCTYPE html>
<!--[if lt IE 8]>      <html class="lt-ie10 lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie10 lt-ie9" lang="en"> <![endif]-->
<!--[if IE 9]>         <html class="lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>AIRA Securities Public Company Limited.</title>

<!--#include file="include/_inc_script.aspx"-->
<script type="text/javascript" src="js/addrow.js"  ></script>
<link rel="stylesheet" href="css/responsive-tables.css">
<style>
    .form_b_mac tr td:first-child{ text-align: right;width: 22%; padding-right: 10px;}
    .form_b_mac tr td{ padding: 10px 0; }
</style>

<link rel="stylesheet" href="css/openaccount.css">
</head>

<body>
<!--#include file="include/header.aspx"--> 
<div style="max-width:1280px; position:relative; margin:auto;">

<%
bool preview_tb_main_bg = false;
if(preview_check_admin == 1)
{
	if(Request.Form["preview_mod"] != null)
	{
		if(Request.Form["preview_mod"].ToString() == "tb_main_bg")
		{
			preview_tb_main_bg = true;
		} 
	}	 
} 

if(preview_tb_main_bg)
{
	preview_upload_folder = "upload_tmp";

	if(Request.Form["preview_id"] != null)
	{ 
		
		var r_preview = class1.q_api("SELECT * FROM tb_main_bg WITH (NOLOCK) WHERE id = '" + class1.o(Request.Form["preview_id"].ToString()) + "'");
		
		
		preview_upload_folder = "upload";
		preview_filename = class1.l(((IDictionary<string, object>)r_preview[0])["pb_img1"].ToString(),((IDictionary<string, object>)r_preview[0])["pb_en_img1"].ToString(),preview_lang);
		  
		
		 
	}
	
	image_field = class1.l("img1","en_img1",preview_lang);
	%>
	<!--#include file="app/save_file.aspx"-->    
    
    <div class="im_banner" style="">
           <img src="<%= preview_upload_folder %>/<%= preview_filename %>" title="<%= class1.l(Request.Form["title"].ToString(),Request.Form["en_title"].ToString(),preview_lang) %>" alt="<%= class1.l(Request.Form["title"].ToString(),Request.Form["en_title"].ToString(),preview_lang) %>" style=" width:100%; height:auto;">
    </div> 
	<%
}
else
{
	%>
     <div class="im_banner" style="">
           <img src="images/about/im_2.jpg" title="You Trusted Partner" alt="You Trusted Partner" style=" width:100%; height:auto;">
    </div> 
    <%
}
%>
	
   
    
    <div id="box_main">
        <div class="openaccount-wrapper">
            <div class="success-wrapper">
                <p class="text">Congratulation!!</p>
                <div class="image">
                    <img src="images/icon/icon-register-success.png" alt="image">
                </div>
            </div>
        </div>
	</div>
</div>  
    </div>
        
        </div>
         </div>
    		
    </div>
<%
	footer_banner = "5";
	%> 
 	<div class="slide-bottom">
     	<!--#include file="slide-bottom.aspx"--> 
        <!--iframe src="slide-bottom.aspx" width="100%"  height="70" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" allowTransparency="true"></iframe-->
    </div>
<!--#include file="include/footer.aspx"-->  
</div>



<link href="css/bg-slide.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css">
<link href="css/side-nav.css" type="text/css" rel="stylesheet">
<script src="js/jquery.carouFredSel-6.2.1-packed.js"></script>

<!-- custom script -->
<script src="js/jQuery.print.js"></script>
<script type="text/javascript">
$(function() {
		$(".print-link2").click(function(){
			//alert("ccc");
			$.print("#print");
		});


		// Fork https://github.com/sathvikp/jQuery.print for the full list of options
		});
		//]]>
</script>



<script src="js/jquery-ui-datepicker.min.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {
        $.datepicker.regional['th'] = {
            changeMonth: true,
            changeYear: true,
            showOn: "<%= class1.l("ปุ่ม","Button",Session["lang"].ToString()) %>",
            buttonImage: 'images/calendar.gif',
            buttonImageOnly: true,
            dateFormat: 'dd M yy',
            dayNames: [<%= class1.l("'อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสบดี', 'ศุกร์', 'เสาร์'","'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'",Session["lang"].ToString()) %>],
            dayNamesMin: [<%= class1.l("'อา', 'จ', 'อ', 'พ', 'พฤ', 'ศ', 'ส'","'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'",Session["lang"].ToString()) %>],
            monthNames: [<%= class1.l("'มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'","'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'",Session["lang"].ToString()) %>],
            monthNamesShort: [<%= class1.l("'ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.', 'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.', 'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.'","'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'",Session["lang"].ToString()) %>],
            constrainInput: true,
            yearRange: '-20:+0',
            buttonText: '<%= class1.l("เลือก","Choose",Session["lang"].ToString()) %>'
        };

        $.datepicker.setDefaults($.datepicker.regional['th']);
        $(function () {
            $("#datepicker").datepicker($.datepicker.regional["th"]);
            $("#firstdate").datepicker({
                changeMonth: true,
                changeYear: true,
                showOn: "button",
                buttonImage: "images/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date"
            });
	    $("#lastdate").datepicker({
                changeMonth: true,
                changeYear: true,
                showOn: "button",
                buttonImage: "images/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date"
            });
	    $("#workingdate").datepicker({
                changeMonth: true,
                changeYear: true,
                showOn: "button",
                buttonImage: "images/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date"
            });	 
	    $("#birthday").datepicker({
                changeMonth: true,
                changeYear: true,
                showOn: "button",
                buttonImage: "images/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date"
            });

        });
    });
</script>

<script>

$(document).ready(function () {
   $('#center_st1').hide();
   $('#center_st2').hide();
   $('#aa').hide();
   $('#aa02').hide();
   $('#top-01').click(function () {
       $('#center_st2').slideUp('slow');
        $('#center_st1').slideToggle('slow');
	;
   });
   $('#top-02').click(function () {
       $('#center_st1').slideUp('slow');
       $('#center_st2').slideToggle('slow');
	
   });
   $('#np-02').click(function () {
        $('#aa').slideToggle('slow');
	$('#aa02').slideUp('slow');
       
	
   });
    $('#np-06').click(function () {
        $('#aa02').slideToggle('slow');
	 $('#aa').slideUp('slow');
       
	
   });
     });

</script>
	   


<!-- responsive control js script  -->

<script src="js/responsive-tables.js"></script>

<script src="js/responsive-ctrl.js"></script>

</body>
</html>