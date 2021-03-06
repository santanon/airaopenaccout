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
                    <div class="desc-main-page">Terms and Conditions</div>
                </div>
                <div class="right-head">
                    <div class="step">
                        <ul>
                            <li class="active">step 1</li>
                            <li class="active">step 2</li>
                            <li class="active">step 3</li>
                            <li>step 4</li>
                        </ul>
                    </div>
                </div>
            </div>

            <hr class="border-default">

            <div class="condition">
                <div class="title-topic color-main">
                    Part 1 : Terms and Conditions
                </div>
                <p class="desc">
                    Both parties agree to have this Memorandum of Agreement attached to the Agreement to Appoint Securities Broker for
    Securities Trading and that this Memorandum of Agreement forms part of the aforesaid Agreement between AIRA Securities 
    Public Company Limited (hereinafter referred to as the ???Company???) of the one part; and <span style="color: #23AF6E;">???????????????????????? ????????????????????????(???????????????????????????????????????STEP1)</span> (hereinafter referred to as the ???Customer???) of the other part. In this 
    Memorandum of Agreement attached to the Agreement to Appoint Securities Broker for Foreign Securities Trading, ???Securities??? 
    mean all type of securities, derivatives and other financial instruments that are allowed to be purchased, sold and/or invested 
    by the relevant Thai authority (ies).
                </p>
                <br>
                <div class="title-topic color-black">
                    WHEREAS, the Customer and the Company acknowledge and agree to comply with the following terms and conditions:
                </div>
                <ol class="list">
                    <li>
                        The Customer agrees to appoint and authorize the Company to act as its agent and/or Securities Broker to purchase 
    and/or sell Foreign Securities. The Customer agrees that the forgoing authorization granted to the Company includes 
    authority to fill in the Customer's information in any application/document, sign/verify/accept any document, to act or 
    undertake any action in relation to the said matter until completed, including but not limited to, documents submitted by 
    electronic means.
                    </li>
                    <li>
                        Unless otherwise permitted by laws or regulations, the Customer is not permitted to transfer money or Securities 
    maintained or kept in the Customer's Securities Account opened with the Company for the purpose of investment in 
    Foreign Securities (???the Customer's Securities Account???) to any Customer' s other securities account(s) opened in 
    overseas.
                    </li>
                    <li>
                        Unless otherwise permitted by laws or regulations, the Customer shall not transfer Foreign Securities purchased through 
    the Company and/or maintained or kept in the Customer's Securities Account to other Securities accounts of the 
    Customer, except the transfer of Foreign Securities from the Customer's Securities Account to his own Securities Account 
    in the category of private fund, opened and managed by the Company or other securities companies in Thailand.
                    </li>
                    <li>
                        The Customer acknowledges that prior to the Customer's outward remittance of money for the purpose of foreign 
    investment, the Customer must obtain a permission from the Bank of Thailand (BOT) and an approval from the exchange 
    control officer pursuant to the Exchange Control Law and/or from any other relevant authority (if any).
                    </li>
                    <li>
                        The Customer acknowledges and agrees that for an outward remittance of money in preparation for foreign investment 
    or conducting a transaction, or inward remittance of money from overseas, the process shall be done through the 
    Company's account for Customer opened with an authorized agent bank in Thailand for the purpose of the Customer's 
    Foreign Securities trading prior to transferring the said fund to the Customer's account, using the foreign exchange rate 
    of the said authorized agent bank announced on the date of the outward or inward remittance of money to the Company's 
    account for such Customer, as the case may be. The Customer agrees and acknowledges that the Customer shall not 
    claim for any transfer of the proceeds derived from the sale of Foreign Securities in overseas to the account of the 
    Customer directly, which is against the said rules and regulations (if any).
                    </li>
                    <li>
                        The Customer agrees for the Company to appoint any Securities Offshore Broker in overseas for Foreign Securities trading 
    for the Customer's account and/or Global Custodian to look after of the foreign investment. The Company could change 
    the Securities Offshore Broker and/or the Global Custodian as the Company deems appropriate, without notifying the 
    Customer in advance. Nevertheless, the Company shall notify the Customer of such change within reasonable time. If the 
    Customer considers terms and conditions of agreement, qualifications and experiences of the Securities Offshore Broker 
    and/or the Global Custodian and deems that it is not appropriate and that the Customer does not intend to conduct the 
    Foreign Securities trading through such newly appointed Securities Sub Broker, nor intend to have the newly appointed Global 
    Custodian to act as his custodian, the Customer shall promptly notify the Company of such intention in writing upon receiving
    of the Company's notification for the purpose of cancellation of the said appointment or change.
                    </li>
                    <li>
                        The Customer confirms that the money used in Foreign Securities investment is his own money and is not money borrowed 
    from commercial banks, financial institutions or other sources of funds, nor is the money derived from any wrongful act, 
    exposed to risk of being seized/attached under the Anti Money Laundering Law.
                    </li>
                    <li>
                        To the extent permitted by laws or regulations of the country where the Securities trading is subject to, and not conflict 
    with applicable laws and regulations of Thailand, the Customer agrees to collateralize the Foreign Securities purchased 
    through the Company and/or maintained or kept in the Customer's Securities Account for the benefits of the Customer.
                    </li>
                    <li>
                        The Customer agrees and acknowledges that the approval for Foreign Securities trading through the Company shall be 
    subject to the approval from the relevant governmental authorities and the Company's discretion. The Company may or 
    may not provide Foreign Securities Trading service at anytime as the Company deems appropriate.
                    </li>
                    <li>
                        The Customer acknowledges and agrees to comply with any law, regulation, notification, rule or regulation, currently 
    enforceable, to be subsequently amended, or to be enacted in the future, regarding the Foreign Securities investment, 
    including depositing, withdrawing the means of payment for the invested Securities.
                    </li>
                    <li>
                        The Customer consents to the Company's disclosure of the Customer's information, including personal data to other 
    contracting parties/agents, individual or entity in overseas in order to complete the appointment of Securities Sub Broker 
    and Foreign Securities trading, or to comply with the relevant rules, regulations and orders.
                    </li>
                    <li>
                        The Customer acknowledges and understands that the Company is under no duty to give advice regarding the foreign 
    investment, the appointment of Offshore Broker and/or the Global Custodian to the Customer or make decision on behalf 
    of the Customer. The Customer himself has conducted research, study, renew and consider all the relevant investment 
    information, which status, experience, business profile, past financial performance of the company issuing the Securities 
    as well as all investment associated risks, and include information relating to qualifications and experience of the Offshore 
    Broker and the Global Custodian in overseas. As a result, the Customer agrees to bear all risks associated with the 
    investment by himself.
                    </li>
                    <li>
                        The Customer acknowledges that the Customer is under obligation to verify details and accuracy of the information 
    contained in the documents delivered by the Company in every occasion. In case that the Customer has not objected nor 
    opposed the accuracy of any information within 3 business days from the date of Customer's receipt of such documents, 
    it shall be deemed that the Customer agrees to be bound by all details contained in the document and the Company has 
    completely acted as the agent.
                    </li>
                    <li>
                        Unless provided otherwise, the Customer agrees that the Company shall deliver a confirmation of Securities trading, 
    Securities payment slip, statement of monthly summary, statement of outstanding deposit or other documents relating 
    to the Foreign Securities trading through E-mail at the address notified by the Customer. Should the Customer wish to 
    change his E-mail address, the Customer shall notify the Company of the change in writing.

                    </li>
                    <li>
                        The Customer acknowledges and agrees that the legal binding and enforcement of this Memorandum of Agreement and/or 
                        the delivery of information or documents through electronic means shall be subject to the Electronic Transactions Act 
                        B.E. 2544 (2001), the amendment thereof and any provisions of the laws relating to the transmission of data or electronic 
                        documents. The Customer also acknowledges the risk and/or damage which may arise from such transaction which the 
                        Company can neither warrant nor guarantee that the Company can protect such risk and/or damage. The Customer 
                        acknowledges that the Company shall not be responsible for any damage which may incur to the Customer in providing 
                        a transmission of the said information or documents by electronics means.
                    </li>
                    <li>
                        If the Customer breaches or fails to comply with any provision under this Agreement to Appoint Securities Broker for 
    Securities Trading and this Memorandum of Agreement, the Company reserves the right to terminate the 
    Agreement. Should the Company sustain any damage, the Customer shall be responsible for all damages incurred to 
    the Company as well as debts and any expenses outstanding together with the specified interest.
                    </li>
                    <li>
                        Except in case the damage caused by the Company's willful misconduct or gross negligence resulting in damage sustained 
    by the Customer, or caused by the Company's breach of the Agreement, the Customer acknowledges and agrees that in 
    no event shall the Company be liable for any and all damages sustained by the Customer, such as, damage, loss, loss of 
    profit in the investment of the Customer, damage arising from the overseas parties, such as, the Securities Offshore 
    Broker and/or the Global Custodian. The Customer acknowledges and agrees that the Customer shall claim against the 
    said person directly.
                    </li>
                </ol>

                <div class="title-topic color-main">
                    Part 2 : Certain Restrictions for Foreign Securities Investment 
                </div>
                <p class="desc">
                    The Customer acknowledges and agrees in Foreign Securities investment, the Customer shall comply with the following restrictions:
                </p>
                <ol class="list">
                    <li>The Customer is not permitted to transfer money or Securities or kept in the Customer's Securities Account opened with 
                        the Company for the purpose of investment in Foreign Securities (???the Customer's Securities Account???) to any customer's 
                        other securities account(s) opened in overseas.
                    </li>
                    <li>
                        The Customer shall not transfer the Foreign Securities purchased through the Company and/or maintained or kept in the 
    Customer's Securities Account to other securities accounts of the Customer, except the transfer of Foreign Securities from 
    the Customer's Securities Account to his own Securities Account in the category of private fund opened and managed by 
    the Company or other securities company in Thailand.
                    </li>
                    <li>
                        The Customer acknowledges and agrees that prior to the Customer's outward remittance of money for the purpose of 
    foreign investment, the Customer must obtain a permission of the Bank of Thailand (BOT), and an approval from the 
    exchange control officer pursuant to the Exchange Control law and/or from any other relevant authority (if any).
                    </li>
                    <li>
                        The Customer represents and confirms that the money used in Foreign Securities investment is his own fund and is not borrowed money.
                    </li>
                </ol>

                <div class="title-topic color-main">
                    Part 3 : Risk Disclosure related to Foreign Securities Investment 
                </div>
                <p class="desc">
                    Investment in Foreign Securities involves risks. The Customer could lose some or all amount of investment. Thus, prior to 
    making a decision to invest, the Customer should carefully review and consider the following information contained in this risk 
    disclosure statement, which describes the material risks that could significantly affect the investment. This risk disclosure 
    statement is not meant to be all-inclusive, rather, it is intended to highlight certain significant factors and risks relating to the 
    investment in Foreign Securities. Therefore, there may be other risks that are currently unknown or believed to be immaterial, 
    which could turn out to be material in the future.<br>
    The Customer should not construe this risk disclosure statement as business, legal, tax or accounting advice. The Customer 
    should consult the relevant advisers with respect to the investment in Foreign Securities and the Customer should refrain 
    from entering into the investment in Foreign Securities unless the Customer has fully understood the associated risks and 
    determined that the investment in Foreign Securities is appropriate for the Customer.
                </p>
                <ol class="list">
                    <li>
                        <u>Overall investment risk</u> The Foreign Securities investment risks the loss of some or all the amount of principal. Many 
                        unforeseeable events, including actions by various government agencies, economic domestic and international political and 
                        situations and other events of force majeure, such as acts of god, and certain other events beyond reasonable control (e.g. 
                        war, riot, unrest, terrorism), may cause sharp securities market and price fluctuations.
                    </li>
                    <li>
                        <u>Market Risk / Price Volatility Risk</u>
                        The Foreign Securities exchange on which the Securities to be invested are traded
    or listed may be in a jurisdiction which may have political, economic, legal and regulatory conditions that differ in certain
    significant aspectfromthose prevailing in Thailand. In addition, suchSecuritiesExchange may,inits sole discretion, suspend
    or limit the trading from time to time. Changes or fluctuations in or downturn or occurrence of those conditions prevailing
    from time to time may have an adverse effect upon the trading volume and price of the Securities.
    <br>
    Further to the above which are internal factors, trading volume and price of the Securities may also be affected by other 
    factors, which are those relating to the Securities themselves or by external factors such as war, global or regional economic 
    and/or financial crisis, etc. Changes in these factors may also have an impact upon the trading volume and price of the
    Securities.<br>
    Moreover, in case that the invested Securities are derivative, the price fluctuation of such derivative may require the 
    Customer to make an additional payment or undertake any action in addition to the initial investment amount. This is to 
    ensure that it will cover, among other things, the initial margin or the related obligation of the derivative investment or loss 
    derived from the investment in the derivative.

                    </li>
                    <li>
                        <u>Settlement Risk</u>
                        Foreign Securities Investment involves the execution, and settlement in Foreign Securities exchange 
    which laws or regulations might differ in each relevant exchange. The Customer might not be protected in some certain levels 
    which apply to domestic clients.<br>
    The settlement of the Securities and/or the underlying goods in such exchanges may be less developed or less 
    standardized and, in some cases, less reliable than Thailand. Furthermore, fees related to settlement of the Securities and/or 
    the underlying goods in the foreign exchange may be higher than those of Thailand or higher than customer's expectation. 
    Also, due to the fact that settlement of the Securities and/or the underlying goods between Thailand and foreign countries or 
    the Thai Securities exchange and Foreign Securities exchanges are not systematically linked. Thus, the settlement process 
    may take longer time than expected. These factors might cause higher risk, which include risks of fraud, delivery failure, or
    any confusion in settlement conditions or process which may result in loss, loss of opportunities, delays and cause more 
    operational and legal costs.
                    </li>
                    <li>
                        <u>Regulatory Risk</u> Since the Foreign Securities investment is the investment in Securities which the issuer has his residence 
                        or office, asset, personnel and/or other benefit in foreign counties and/or in Securities with the underlying goods located in 
                        foreign countries which are subject to various laws or regulations, investments in those or certain countries may be restricted 
                        or controlled in different degrees by relevant local laws or regulations. These restrictions or controls may include, but not be 
                        limited to, governmental or third party approval prior to an investment; limitation of investment by foreign investors in certain 
                        businesses; requirement for governmental approval for the repatriation of investment return, capital or proceeds of sales of 
                        Foreign Securities; or tax imposed on or related to the investment in Securities by foreign investors. Moreover, certain laws 
                        and regulations in those counties may have an ambiguity in interpretation and may be subject to the interpretation of a local
                        authority which may interpret those laws or regulations not to be in favor of the Customer. Also, each country will, from time 
                        to time, enact new laws or regulations, and there is always an uncertainty as to the scope and content of such new laws and 
                        regulations. These matters may have an adverse effect upon the investment.<br>
                        In addition to the restrictions and controls as mentioned above, certain countries may have limited or less protection with 
    respect to the Customer's rights as the holders of the Securities, including rights to the lawsuit and the enforceability of 
    judgment. The efficacy of the judicial systems in each country varies, and the Customer may have difficulties in successfully
    pursuing claims in the courts of such jurisdictions. Moreover, to the extent the Customer may obtain a judgment but is 
    required to seek its enforcement in the courts of one of the countries in which the Customer invests or of the issuer country, 
    there can be no assurance that such courts will enforce such judgment.                   
                    </li>
                    <li>
                        <u>Liquidity Risk</u> Even where the Customer invests in listed Securities, the Securities exchanges of some countries may be 
                        small and illiquid, or in some case the Securities may not be listed. In addition, the liquidity of the Securities may subject to 
                        other factors including, but not limited to, the nature of the Securities, the purchase or sale or investment condition and 
                        internal and/or external factors of the country where the Securities exchange is located. The illiquidity may reduce the 
                        Customer's ability to purchase or sale or to take any relevant action related to such securities, or make it difficult to purchase 
                        or sale such Securities at a favorable or desirable price or in a sufficient quantity to meet the investment objectives of the
                        Customer.                    
                    </li>
                    <li>
                        <u>Currency Risk</u> As the investments in the Foreign Securities investment and/or any action relating to the investment in 
                        Foreign Securities is settled in foreign currencies, returns on the investments and/or any action with respect to the investments 
                        may be significantly effected by currency risk. The Customer is subject to the risk in case of the change of value of foreign 
                        currencies as compare to value of Thai Baht, such event might happen at some periods of time, or permanently. If the 
                        devaluation occurs in any currency, the Customer may suffer currency losses.                   
                    </li>
                    <li>
                        <u>Credit Risk</u> The Customer may be exposed to the credit risk of the counterparty, including the issuer of the purchased 
                        Securities [whether invest in listed of non-listed firm]. The Customer may be subject to risk of loss in the total or some amount 
                        if the counterparty or the issuer goes bankrupt or insolvent or unable or unwilling to pay debtor to perform his obligation, 
                        including the obligation to return the investment capital or redeem the invested Securities.                    
                    </li>
                    <li>
                        <u>Execution Risk</u> The Company, acting as a broker for the purchase, sale and/or investment in the Securities, may, on 
                        certain occasions, not be able to execute the purchase or sale or to undertake any action relating to the Securities in 
                        accordance with the Customer's instruction. These include, among other things, a situation where the market conditions are 
                        not favorable, the order cannot be matched, the laws and regulations of the Securities exchange or other competent authorities
                        in those countries impose limitation, etc. As a result, the Customer may incur loss or risk from such investment.
                    </li>
                    <li>
                        <u>Risk relating to the Customer???s own investment</u>
                        Each decision to invest in the Securities is the customer own independent 
    decision., The Company is not acting as an advisor or serving as a fiduciary to the Customer. Before making a decision to 
    invest, the Customer confirms that he has carefully studied the prospectus and considered all information relating to the 
    status, business, financial profile of the securities issuer, including the underlying assets or other information relating to the 
    Securities in which the Customer will invest, and other relevant factors relating to the investment such as political, economic, 
    legal and regulatory conditions of the relevant countries, as well as market conditions, demand, supply and price of the 
    underlying goods of the Securities. As a result, the Customer bear all risks from the investment and the Company has no 
    fiduciary duty to the Customer and no liability in connection with and are not responsible for any liabilities, claims, damages, 
    losses, costs and expenses arising from such investment.
                    </li>
                </ol>

                <div class="title-topic color-main">
                    Part 4 : Representations and Consents of the Customer
                </div>
                <p class="desc">
                    The Company prescribes the terms and conditions relating to Foreign Securities trading, which may be amended from time to 
    time, depending on circumstances and electronic communication system, under third party's control, which may cause failure, 
    delay or obstruction in receiving and sending information. In this regard, the Customer agrees to represent and consent as 
    follows:
                </p>
                <ol class="list">
                    <li>The Customer agrees to be bound by every lawful trading transaction as if they were instructions given by the Customer
                        himself.
                    </li>
                    <li>
                        The Customer consents that in the event of failure arising from the equipment, trading system, or any other cause beyond 
    the Company's control, the Company shall not be held responsible for such damage or failure.
                    </li>
                    <li>
                        The Customer acknowledges and agrees that the Customer is obliged to keep confidential of its username and password. 
    This shall also apply to any trading transaction executed by others using username and password of the Customer.
                    </li>
                    <li>
                        In the event that a trading order is confirmed by the Company, but thereafter cancelled by the stock exchange, the 
    service provider of Securities trading system or any other regulatory authority, the Customer agrees and consents to deem 
    that such confirmed order is cancelled.
                    </li>
                    <li>
                        The Customer acknowledges and agrees that the Company has a duty to deliver the trading orders in accordance with 
    priority of orders received from the Customer.
                    </li>
                    <li>
                        In case there is a delay, error or otherwise of transmission of any Securities trading order caused by network 
    communication system, where the price of which has been confirmed, the Customer acknowledges and agrees that the 
    Company shall not be held liable for any damage incurred.
                    </li>
                    <li>
                        The Customer represents that the Company has not given any advice on Securities trading, investment or any advice 
    concerning taxes to the Customer. The Customer's Securities trading has not based on any advice of the Company's personnel.
                    </li>
                    <li>
                        The Customer represents that the information given and/or filled in by the Customer in an application for opening Foreign 
    Securities trading account, the Customer Suitability A assessment form, the Agreement, the Memorandum of Agreement 
    attached to the Agreement to appoint Securities Broker for Securities Trading and/or any other document, are true and 
    accurate in all respects.
                    </li>
                    <li>
                        The Customer represents that the Customer is obligated to verify the accurateness of the information and provide the 
    Customer's updated information to the Company regularly.
                    </li>
                    <li>
                        The Customer agrees and consents to notify the Customer's current E-mail address to the Company for the purpose of 
    receiving news and information from the Company.
                    </li>
                    <li>
                        The Customer represents that the Customer has full control over the Customer's Securities Account and it is the sole 
    ultimate beneficiary of the transaction.
                    </li>
                </ol>
                <p class="desc">
                    ACKNOWLEDGEMENT: The Customer, as an investor, represents that the Customer has thoroughly read the Memorandum 
    of Agreement attached to the Agreement to appoint Securities Broker for Securities Trading, fully acknowledged and 
    comprehended such contents and hereby confirms that the Customer is capable of and ready to comply with the agreements 
    and accepts all risks as abovementioned.<br><br>
    IN WITNESS WHEREOF, the Customer has affixed signature in the presence of the witness hereof on the date, month and 
    year above written.
                </p>
            </div>
            

            <hr class="border-default">

            <form action="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="field-input">
                            <input id="accept_terms" type="checkbox" disabled/>
                            <label for="accept_terms" class="text">I have read and agree to the Terms and Conditions.</label>
                        </div>
                    </div>
                </div>

                <div class="group-btn">
                    <button type="button" class="btn bg-gray">????????????????????????</button>
                    <button type="button" class="btn bg-red">???????????????</button>
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

        $('.condition').scroll(function (e) {
            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
                $('#accept_terms').removeAttr('disabled');
            }
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
            showOn: "<%= class1.l("????????????","Button",Session["lang"].ToString()) %>",
            buttonImage: 'images/calendar.gif',
            buttonImageOnly: true,
            dateFormat: 'dd M yy',
            dayNames: [<%= class1.l("'?????????????????????', '??????????????????', '??????????????????', '?????????', '????????????????????????', '???????????????', '???????????????'","'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'",Session["lang"].ToString()) %>],
            dayNamesMin: [<%= class1.l("'??????', '???', '???', '???', '??????', '???', '???'","'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'",Session["lang"].ToString()) %>],
            monthNames: [<%= class1.l("'??????????????????', '??????????????????????????????', '??????????????????', '??????????????????', '?????????????????????', '????????????????????????', '?????????????????????', '?????????????????????', '?????????????????????', '??????????????????', '???????????????????????????', '?????????????????????'","'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'",Session["lang"].ToString()) %>],
            monthNamesShort: [<%= class1.l("'???.???.', '???.???.', '??????.???.', '??????.???.', '???.???.', '??????.???.', '???.???.', '???.???.', '???.???.', '???.???.', '???.???.', '???.???.'","'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'",Session["lang"].ToString()) %>],
            constrainInput: true,
            yearRange: '-20:+0',
            buttonText: '<%= class1.l("???????????????","Choose",Session["lang"].ToString()) %>'
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