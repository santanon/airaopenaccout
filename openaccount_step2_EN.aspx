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
                    <div class="desc-main-page">Customer  Suitability Assessment</div>
                </div>
                <div class="right-head">
                    <div class="step">
                        <ul>
                            <li class="active">step 1</li>
                            <li class="active">step 2</li>
                            <li>step 3</li>
                            <li>step 4</li>
                        </ul>
                    </div>
                </div>
            </div>

            <form action="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">
                            1. Have you ever attended a seminar/a training session/ listened to any explanation regarding the foreign 
                            securities trading?
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_1" type="radio" name="Q1"/>
                            <label for="list_1_1" class="text">Attended/listened to explanation</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_2" type="radio" name="Q1"/>
                            <label for="list_1_2" class="text">Not attended/have not listened to any explanation</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">2. Period of investment: How many years will you be able to invest?</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_1" type="radio" name="Q2"/>
                            <label for="list_2_1" class="text">1-2 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_2" type="radio" name="Q2"/>
                            <label for="list_2_2" class="text">3-5 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_3" type="radio" name="Q2"/>
                            <label for="list_2_3" class="text">6-10 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_4" type="radio" name="Q2"/>
                            <label for="list_2_4" class="text">> 10 years</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">3. Age:</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_1" type="radio" name="Q3"/>
                            <label for="list_3_1" class="text">ต่ำกว่า 30 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_2" type="radio" name="Q3"/>
                            <label for="list_3_2" class="text">31-40 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_3" type="radio" name="Q3"/>
                            <label for="list_3_3" class="text">41-50 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_4" type="radio" name="Q3"/>
                            <label for="list_3_4" class="text">51-60 years</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_5" type="radio" name="Q3"/>
                            <label for="list_3_5" class="text">> 60 years</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">4. Do you have any other reserve in case of emergency other than the fund to be used for this 
                            investment, and what degree of risk will you be able to accept for the investment?</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_1" type="radio" name="Q4"/>
                            <label for="list_4_1" class="text">Have a few reserves, the stability of the principle is crucial and the principle must be maintained.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_2" type="radio" name="Q4"/>
                            <label for="list_4_2" class="text">Have some reserves, could accept some risks in exchange for the return from the investment.
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_3" type="radio" name="Q4"/>
                            <label for="list_4_3" class="text">Have sufficient amount of reserves, could accept high risk, and willing to invest long-term in order to 
                                proliferate the fund.</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">5. How do you estimate your liquidity? Is it necessary to suspend the investment regularly in order to 
                            bring the fund back to Thailand?</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_1" type="radio" name="Q5"/>
                            <label for="list_5_1" class="text">It is necessary to continuously withdraw the fund from investment portfolio.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_2" type="radio" name="Q5"/>
                            <label for="list_5_2" class="text">Cash flow is stable.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_3" type="radio" name="Q5"/>
                            <label for="list_5_3" class="text">Have sufficient cash flow.</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">6. Within 3-5 years, do you anticipate to withdraw a large amount of fund from the investment portfolio?</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_1" type="radio" name="Q6"/>
                            <label for="list_6_1" class="text">Necessary to withdraw the entire investment fund.</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_2" type="radio" name="Q6"/>
                            <label for="list_6_2" class="text">Often withdraw the investment fund.</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_3" type="radio" name="Q6"/>
                            <label for="list_6_3" class="text">Withdraw the investment fund from time to time.</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_4" type="radio" name="Q6"/>
                            <label for="list_6_4" class="text">Will not withdraw the investment fund.</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">7. Is it necessary to use the return generated from your investment portfolio for daily routine expenses?</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_1" type="radio" name="Q7"/>
                            <label for="list_7_1" class="text">Very necessary</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_2" type="radio" name="Q7"/>
                            <label for="list_7_2" class="text">Often necessary</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_3" type="radio" name="Q7"/>
                            <label for="list_7_3" class="text">Hardly necessary</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_4" type="radio" name="Q7"/>
                            <label for="list_7_4" class="text">Not necessary</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">8. Attitude towards short term investment, nature of investment and risk appetite.</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_1" type="radio" name="Q8"/>
                            <label for="list_8_1" class="text">Do not want to lose the principle investment amount despite of the low return from the investment</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_2" type="radio" name="Q8"/>
                            <label for="list_8_2" class="text">If bond yields high return, would not be interested to invest in stock exchange.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_3" type="radio" name="Q8"/>
                            <label for="list_8_3" class="text">Interested in both money market and stock exchange.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_4" type="radio" name="Q8"/>
                            <label for="list_8_4" class="text">Interested in both money market and stock exchange.</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">9. Attitude towards long-term investment:</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_1" type="radio" name="Q9"/>
                            <label for="list_9_1" class="text">Do not believe in long-term investment, could not risk nor lose the principle.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_2" type="radio" name="Q9"/>
                            <label for="list_9_2" class="text">Could accept some risks, but do not want to lose the principle.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_3" type="radio" name="Q9"/>
                            <label for="list_9_3" class="text">Could accept a moderate degree of risk for a good return in long term.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_4" type="radio" name="Q9"/>
                            <label for="list_9_4" class="text">Could accept some loss in certain year for a high return in long term</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_5" type="radio" name="Q9"/>
                            <label for="list_9_5" class="text">Believe in long-term investment and be able to accept the higher risk.</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">10. The main goal of investment: your main goal of investment is</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_1" type="radio" name="Q10"/>
                            <label for="list_10_1" class="text">Don't want my portfolio to lose any value, even it gives low return.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_2" type="radio" name="Q10"/>
                            <label for="list_10_2" class="text">Want regular return and could tolerate moderate fluctuations.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_3" type="radio" name="Q10"/>
                            <label for="list_10_3" class="text">Want regular return and could tolerate large fluctuations in order to get higher return.</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_4" type="radio" name="Q10"/>
                            <label for="list_10_4" class="text">Want higher return in the future and could tolerate extreme fluctuations.</label>
                        </div>
                    </div>
                </div>

                <div class="group-btn">
                    <button type="button" class="btn bg-gray">Back</button>
                    <button type="button" class="btn bg-red">Next</button>
                </div>
                
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