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
                    <div class="desc-main-page">แบบประเมินความเสี่ยงของลูกค้า เมื่อเปิดบัญชีซื้อขายหลักทรัพย์ต่างประเทศ</div>
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
                            1. ท่านได้เข้าร่วมฟังการสัมมนา/การอบรม/การอธิบายจากเจ้าหน้าที่บริษัทเก่ียวกับการลงทุนในหลักทรัพย์ต่างประเทศแล้ว
                            หรือไม่
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_1" type="radio" name="Q1"/>
                            <label for="list_1_1" class="text">เข้าร่วมแล้ว / ได้รับการอธิบายแล้ว</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_1_2" type="radio" name="Q1"/>
                            <label for="list_1_2" class="text">ยังไม่ได้เข้าร่วม / ยังไม่ได้รับการอธิบาย</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">2. ระยะเวลาในการลงทุน : ท่านสามารถลงทุนได้เป็นระยะเวลากี่ปี</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_1" type="radio" name="Q2"/>
                            <label for="list_2_1" class="text">1-2 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_2" type="radio" name="Q2"/>
                            <label for="list_2_2" class="text">3-5 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_3" type="radio" name="Q2"/>
                            <label for="list_2_3" class="text">6-10 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_2_4" type="radio" name="Q2"/>
                            <label for="list_2_4" class="text">มากกว่า 10 ปี</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">3. อายุ</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_1" type="radio" name="Q3"/>
                            <label for="list_3_1" class="text">ต่ำกว่า 30 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_2" type="radio" name="Q3"/>
                            <label for="list_3_2" class="text">31-40 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_3" type="radio" name="Q3"/>
                            <label for="list_3_3" class="text">41-50 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_4" type="radio" name="Q3"/>
                            <label for="list_3_4" class="text">51-60 ปี</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_3_5" type="radio" name="Q3"/>
                            <label for="list_3_5" class="text">มากกว่า 60 ปี</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">4. ท่านมีแหล่งเงินสำรองยามฉุกเฉิน หรือไม่นอกเหนือจากงินที่ลงทุนนี้ท่านสามารถรับความเส่ียงในการลงทุนในระดับใด</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_1" type="radio" name="Q4"/>
                            <label for="list_4_1" class="text">มีเงินสำรองไม่มากนักความมั่นคงของเงินต้นมีความสำคัญ และเงินต้นต้องไม่หาย</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_2" type="radio" name="Q4"/>
                            <label for="list_4_2" class="text">มีเงินสำรองอยู่บางรับความเสี่ยงได้บ้างเพื่อแลกกับผลตอบแทนจากการลงทุน</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_4_3" type="radio" name="Q4"/>
                            <label for="list_4_3" class="text">มีเงินสารองอยู่มากพอสมควรรับความเสี่ยงได้มากยินดีลงทุนในระยะยาวเพื่อให้เงินลงทุนงอกเงย</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">5. สภาพคล่องของท่านเป็นอย่างไรท่านจาเป็นต้องหยุดการลงทุนเพื่อนำเงินกลับประเทศไทยถ่ีหรือไม่</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_1" type="radio" name="Q5"/>
                            <label for="list_5_1" class="text">มีความจาเป็นที่จะต้องถอนเงินจากพอร์ตการลงทุนอย่างต่อเนื่อง</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_2" type="radio" name="Q5"/>
                            <label for="list_5_2" class="text">กระแสเงินสดหมุนเวียนคงที่</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_5_3" type="radio" name="Q5"/>
                            <label for="list_5_3" class="text">มีกระแสเงินสดหมุนเวียนมากพอสมควร</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">6. ท่านคาดการณ์ว่าใน 3-5 ปี ท่านจะมีความจำเป็นต้องถอนเงิน จำนวนมากจากพอร์ตการลงทุนหรือไม่</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_1" type="radio" name="Q6"/>
                            <label for="list_6_1" class="text">มีความจำเป็นที่จะต้องถอนเงินลงทุนทั้งหมด</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_2" type="radio" name="Q6"/>
                            <label for="list_6_2" class="text">ถอนเงินลงทุนบางครั้ง</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_3" type="radio" name="Q6"/>
                            <label for="list_6_3" class="text">ถอนเงินลงทุนบ่อยครั้ง</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_6_4" type="radio" name="Q6"/>
                            <label for="list_6_4" class="text">ไม่มีการถอนเงินจากการลงทุนเลย</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">7. คุณมีความจำเป็นท่ีจะต้องใช้รายได้จากพอร์ตการลงทุนเพ่ือเป็นค่าใช้จ่ายประจำวันหรือไม่</div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_1" type="radio" name="Q7"/>
                            <label for="list_7_1" class="text">จำเป็นมาก</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_2" type="radio" name="Q7"/>
                            <label for="list_7_2" class="text">จำเป็นบ่อยครั้ง</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_3" type="radio" name="Q7"/>
                            <label for="list_7_3" class="text">ไม่ค่อยจำเป็น</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="field-input">
                            <input id="list_7_4" type="radio" name="Q7"/>
                            <label for="list_7_4" class="text">ไม่มีความจำเป็นเลย</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">8. ทัศนคติในการลงทุนระยะสั้นลักษณะการลงทุน และระดับความเสี่ยงที่นักลงทุนรับได้</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_1" type="radio" name="Q8"/>
                            <label for="list_8_1" class="text">ไม่ต้องการให้เงินต้นในการลงทนุสูญเสียเลยถึงแม้ผลตอบแทนจะน้อยก็ตาม</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_2" type="radio" name="Q8"/>
                            <label for="list_8_2" class="text">ถ้าผลตอบแทนของพันธบัตรดีก็จะไม่ลงทุนในตลาดหุ้น</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_3" type="radio" name="Q8"/>
                            <label for="list_8_3" class="text">เชื่อผลตอบแทนของดอกเบี้ยผสมผสานกับกำไรจากตลาดหุ้น</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_8_4" type="radio" name="Q8"/>
                            <label for="list_8_4" class="text">กล้าได้กล้าเสีย ต้องการผลตอบแทนสูง โดยยอมรับความเสี่ยงได้</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">9. ทัศนคติในการลงทุนระยะยาว</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_1" type="radio" name="Q9"/>
                            <label for="list_9_1" class="text">ไม่เชื่อในการลงทนุระยะยาวไม่ต้องการเสี่ยง และสูญเสียเงินต้น</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_2" type="radio" name="Q9"/>
                            <label for="list_9_2" class="text">ยอมรับความเสี่ยงได้บ้าง แต่ไม่อยากให้เงินต้นสูญเสีย</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_3" type="radio" name="Q9"/>
                            <label for="list_9_3" class="text">ยอมรับความเสี่ยงได้ในระดับปานกลาง เพื่อผลตอบแทนที่ดีในระยะยาว</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_4" type="radio" name="Q9"/>
                            <label for="list_9_4" class="text">ยอมรับการขาดทุนได้บ้างบางปีเพื่อผลตอบแทนท่ีสูงในระยะยาว</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_9_5" type="radio" name="Q9"/>
                            <label for="list_9_5" class="text">คุณมีความเชื่อถือในการลงทุนระยะยาว และยอมรับความเสี่ยงที่มากขึ้นได้</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-topic">10. เป้าหมายหลักในการลงทุน: เป้าหมายหลักในการลงทุนของท่านคือ</div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_1" type="radio" name="Q10"/>
                            <label for="list_10_1" class="text">เพื่อป้องกันเงินต้น และยอมรับผลตอบแทนต่ำได้</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_2" type="radio" name="Q10"/>
                            <label for="list_10_2" class="text">เน้นเสถียรภาพรายได้ในปัจจุบันโดยมีความเสย่ีงจากการสูญเสียรายได้ได้บ้าง</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_3" type="radio" name="Q10"/>
                            <label for="list_10_3" class="text">ต้องการรายได้ที่แน่นอน และยอมรับความเสี่ยงเพิ่มขึ้นเพื่อโอกาสเพ่ิมรายได้ในอนาคต</label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="list_10_4" type="radio" name="Q10"/>
                            <label for="list_10_4" class="text">ยอมรับความเสี่ยงได้มาก เพ่ือผลตอบแทนที่มากขึ้นในอนาคต</label>
                        </div>
                    </div>
                </div>

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