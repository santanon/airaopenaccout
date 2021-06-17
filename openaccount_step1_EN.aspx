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
            <div class="head-page m-reverse">
                <div class="left-head">
                    <div class="title-main-page">Global Securities Trading</div>
                    <div class="desc-main-page">Foreign Securities Trading Account Application Form</div>
                </div>
                <div class="right-head">
                    <div class="step">
                        <ul>
                            <li class="active">step 1</li>
                            <li>step 2</li>
                            <li>step 3</li>
                            <li>step 4</li>
                        </ul>
                    </div>
                </div>
            </div>

            <form action="">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <div class="title-field">Name (English)<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="Name (English)">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <div class="title-field">Lastname (English)<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="Lastname (English)">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            

                <hr class="border-default">

                <div class="estimated">
                    <div class="field-input">
                        <div class="row d-flex align-item-center justify-content-between">
                            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                                <div class="title-field">Approximate Amount of Foreign Securities Investment<span class="req">*</span></div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                                <input type="text" class="inp-text" placeholder="0.00">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">1. Please Select Types of Securities that You Would Like to Invest:</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_1" type="checkbox"/>
                            <label for="list_1_1" class="text">Stocks</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_2" type="checkbox"/>
                            <label for="list_1_2" class="text">Bonds</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_3" type="checkbox"/>
                            <label for="list_1_3" class="text">ETFs</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_4" type="checkbox"/>
                            <label for="list_1_4" class="text">Unit Trusts</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_5" type="checkbox"/>
                            <label for="list_1_5" class="text">Warrants</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_6" type="checkbox"/>
                            <label for="list_1_6" class="text">Others</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">2. Investment Objectives :</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_1" type="checkbox"/>
                            <label for="list_2_1" class="text">Preservation of Capital</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_2" type="checkbox"/>
                            <label for="list_2_2" class="text">Trading Profits</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_3" type="checkbox"/>
                            <label for="list_2_3" class="text">Speculation</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_4" type="checkbox"/>
                            <label for="list_2_4" class="text">Income</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_5" type="checkbox"/>
                            <label for="list_2_5" class="text">Growth</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_6" type="checkbox"/>
                            <label for="list_2_6" class="text">Hedging</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">3. Years Trading (Stocks/ETFs/Warrants)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_1" type="radio" name="Q3"/>
                            <label for="list_3_1" class="text">1-5 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_2" type="radio" name="Q3"/>
                            <label for="list_3_2" class="text">6-10 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_3" type="radio" name="Q3"/>
                            <label for="list_3_3" class="text">> 10 years</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">4. Number of 
                            Transactions perYear (Stocks/ETFs/Warrants)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_4_1" type="radio" name="Q4"/>
                            <label for="list_4_1" class="text">1-50</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_4_2" type="radio" name="Q4"/>
                            <label for="list_4_2" class="text">51-100</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_4_3" type="radio" name="Q4"/>
                            <label for="list_4_3" class="text">> 100</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">5. Investment 
                            Knowledge (Stocks/ETFs/Warrants)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_5_1" type="radio" name="Q5"/>
                            <label for="list_5_1" class="text">Extensive</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_5_2" type="radio" name="Q5"/>
                            <label for="list_5_2" class="text">Good</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_5_3" type="radio" name="Q5"/>
                            <label for="list_5_3" class="text">Limited</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">6. Years Trading (Bonds)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_1" type="radio" name="Q6"/>
                            <label for="list_6_1" class="text">1-5 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_2" type="radio" name="Q6"/>
                            <label for="list_6_2" class="text">6-10 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_3" type="radio" name="Q6"/>
                            <label for="list_6_3" class="text">> 10 years</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">7. Number of 
                            Transactions perYear (Bonds)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_1" type="radio" name="Q7"/>
                            <label for="list_7_1" class="text">1-50</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_2" type="radio" name="Q7"/>
                            <label for="list_7_2" class="text">51-100</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_3" type="radio" name="Q7"/>
                            <label for="list_7_3" class="text">> 100</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">8. Investment 
                            Knowledge (Bonds)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_8_1" type="radio" name="Q8"/>
                            <label for="list_8_1" class="text">Extensive</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_8_2" type="radio" name="Q8"/>
                            <label for="list_8_2" class="text">Good</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_8_3" type="radio" name="Q8"/>
                            <label for="list_8_3" class="text">Limited</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">9. Financial Information (NET WORTH)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_1" type="radio" name="Q9"/>
                            <label for="list_9_1" class="text"> < 1,500,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_2" type="radio" name="Q9"/>
                            <label for="list_9_2" class="text">1,500,001 - 5,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_3" type="radio" name="Q9"/>
                            <label for="list_9_3" class="text">5,000,001 - 20,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_4" type="radio" name="Q9"/>
                            <label for="list_9_4" class="text"> 20,000,001 - 100,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_5" type="radio" name="Q9"/>
                            <label for="list_9_5" class="text">100,000,001 - 200,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_9_6" type="radio" name="Q9"/>
                            <label for="list_9_6" class="text"> > 200,000,000 Bht</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">10. Financial Information (LIQUID NET WORTH)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_1" type="radio" name="Q10"/>
                            <label for="list_10_1" class="text"> < 1,500,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_2" type="radio" name="Q10"/>
                            <label for="list_10_2" class="text">1,500,001 - 5,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_3" type="radio" name="Q10"/>
                            <label for="list_10_3" class="text">5,000,001 - 20,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_4" type="radio" name="Q10"/>
                            <label for="list_10_4" class="text"> 20,000,001 - 100,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_5" type="radio" name="Q10"/>
                            <label for="list_10_5" class="text">100,000,001 - 200,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_10_6" type="radio" name="Q10"/>
                            <label for="list_10_6" class="text"> > 200,000,000 Bht</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">11. Financial Information (ANNUAL INCOME)</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_1" type="radio" name="Q11"/>
                            <label for="list_11_1" class="text"> < 1,500,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_2" type="radio" name="Q11"/>
                            <label for="list_11_2" class="text">1,500,001 - 5,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_3" type="radio" name="Q11"/>
                            <label for="list_11_3" class="text">5,000,001 - 20,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_4" type="radio" name="Q11"/>
                            <label for="list_11_4" class="text"> 20,000,001 - 100,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_5" type="radio" name="Q11"/>
                            <label for="list_11_5" class="text">100,000,001 - 200,000,000 Bht</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_11_6" type="radio" name="Q11"/>
                            <label for="list_11_6" class="text"> > 200,000,000 Bht</label>
                        </div>
                    </div>
                </div>

                <button type="button" class="btn bg-red">Next</button>
            </form>
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