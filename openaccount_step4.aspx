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
                    <div class="desc-main-page">
                        แบบฟอร์ม 
                        <span style="color: #000;">W-8BEN</span>
                        <span style="font-size: 24px;">(Rev. July 2017) Department of the Treasury Internal Revenue Service</span>
                    </div>
                </div>
                <div class="right-head">
                    <div class="step">
                        <ul>
                            <li class="active">step 1</li>
                            <li class="active">step 2</li>
                            <li class="active">step 3</li>
                            <li class="active">step 4</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="text-main-group">
                <div class="text text-left">
                    Certificate of Foreign Status of Beneficial Owner for United States Tax Withholding and Reporting (Individuals)

                    <ul class="list-order">
                        <li>For use by individuals. Entities must use Form W-8BEN-E.</li>
                        <li>Go to www.irs.gov/FormW8BEN for instructions and the latest information.</li>
                        <li>Give this form to the withholding agent or payer. Do not send to the IRS.</li>
                    </ul>
                </div>
                <div class="text text-right text-xl">
                    OMB No. 1545-1621
                </div>
            </div>

            <hr class="border-default">

            <div class="text-main-group">
                <div class="text text-left">
                    Do NOT use this form if:
                </div>
                <div class="text text-right">
                    Instead, use Form:
                </div>
            </div>

            <div class="text-sub-group">
                <div class="list-item">
                    <div class="text text-left">
                        You are NOT an individual<span class="req">*</span>
                    </div>
                    <div class="text text-right">
                        W-8BEN-E
                    </div>
                </div>
                <div class="list-item">
                    <div class="text text-left">
                        You are a U.S. citizen or other U.S. person, including a resident alien individual<span class="req">*</span>
                    </div>
                    <div class="text text-right">
                        W-9
                    </div>
                </div>
                <div class="list-item">
                    <div class="text text-left">
                        You are a beneficial owner claiming that income is effectively connected with the conduct of trade or business within 
(other than personal services)<span class="req">*</span>
                    </div>
                    <div class="text text-right">
                        W-8ECI
                    </div>
                </div>
                <div class="list-item">
                    <div class="text text-left">
                        You are a beneficial owner who is receiving compensation for personal services performed in the United States<span class="req">*</span>
                    </div>
                    <div class="text text-right">
                        8233 or W-4
                    </div>
                </div>  
                <div class="list-item">
                    <div class="text text-left">
                        You are a person acting as an intermediary<span class="req">*</span>
                    </div>
                    <div class="text text-right">
                        W-8IMY
                    </div>
                </div>
            </div>

            <hr class="border-default">

            <div class="text-main-group d-block">
                <div class="text text-left">
                    NOTE:
                </div>
                <p>
                    If you are resident in a FATCA partner jurisdiction (i.e., a Model 1 IGA jurisdiction with reciprocity), certain tax account information may be provided
to your jurisdiction of residence.
                </p>
            </div>

            <hr class="border-default">

            <form>
                <div class="title-part-group">
                    <div class="text-part">Part I</div>
                    <div class="text-desc">Identification of Beneficial Owner <span>(see instructions)</span></div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">1 Name of individual who is the beneficial owner<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">2 Country of citizenship<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">3 Permanent residence address (street, apt. or suite no., or rural route).</div>
                                    <div class="sub-field">Do not use a P.O. box or in-care-of address.<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">City or town, state or province. Include postal code where appropriate.<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">Country<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">4 Mailing address (if different from above)</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">City or town, state or province. Include postal code where appropriate.</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">Country</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">5 U.S. taxpayer identification number (SSN or ITIN), if required</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">6 Foreign tax identifying number</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">7 Reference number(s)</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">8 Date of birth (MM-DD-YYYY)</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="title-part-group">
                    <div class="text-part">Part II</div>
                    <div class="text-desc">Claim of Tax Treaty Benefits <span>(for chapter 3 purposes only) (see instructions)</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-baseline">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">9 I certify that the beneficial owner is a resident of<span class="req">*</span></div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                    <p class="text-under-field">
                                        within the meaning of the income tax treaty between the United States and that country.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-baseline">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">
                                        <span class="text-xl">10 Special rates and conditions</span> (if applicable—see instructions): 
The beneficial owner is claiming the provisions of Article and paragraph
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">of the treaty identified on line 9 above to claim a</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <div class="group-inp">
                                        <input type="text" class="inp-text has-unit" placeholder="">
                                        <span class="unit">%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">rate of withholding on (specify type of income):</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="field-input">
                            <div class="row d-flex align-item-center">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-field">Explain the additional conditions in the Article and paragraph the beneficial 
                                        owner meets to be eligible for the rate of withholding:</div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <input type="text" class="inp-text" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="border-default">

                <div class="title-part-group">
                    <div class="text-part">Part III</div>
                    <div class="text-desc">Certification
                    </div>
                </div>
                <div class="text-main-group d-block">
                    <p>
                        Under penalties of perjury, I declare that I have examined the information on this form and to the best of my knowledge and belief it is true, 
correct, and complete. I further certify under penalties of perjury that:
                    </p>
                    <ul class="list-order">
                        <li>I am the individual that is the beneficial owner (or am authorized to sign for the individual that is the beneficial owner) of all the income to which 
                            this form relates or am using this form to document myself for chapter 4 purposes,
                        </li>
                        <li>The person named on line 1 of this form is not a U.S. person,</li>
                        <li>The income to which this form relates is:<br>
                            (a) not effectively connected with the conduct of a trade or business in the United States,<br>
                            (b) effectively connected but is not subject to tax under an applicable income tax treaty, or<br>
                            (c) the partner’s share of a partnership’s effectively connected income,
                        </li>
                        <li>
                            The person named on line 1 of this form is a resident of the treaty country listed on line 9 of the form (if any) within the meaning of the income 
tax treaty between the United States and that country, and<br>
For broker transactions or barter exchanges, the beneficial owner is an exempt foreign person as defined in the instructions.
                        </li>
                    </ul>
                    <p>
                        Furthermore, I authorize this form to be provided to any withholding agent that has control, receipt, or custody of the income of which I am the 
beneficial owner or any withholding agent that can disburse or make payments of the income of which I am the beneficial owner.
                    </p>
                    <p class="text-xl">
                        I agree that I will submit a new form within 30 days if any certification made on this form becomes incorrect.
                    </p>
                </div>

                <hr class="border-default">

                <div class="group-btn">
                    <button type="button" class="btn bg-gray">ย้อนกลับ</button>
                    <button type="button" class="btn bg-red">ถัดไป</button>
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