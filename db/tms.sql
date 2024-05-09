-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2024 at 05:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-01-30 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-01-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-01-30 05:18:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-31 02:03:27', 1, NULL, '2024-01-31 06:35:08'),
(5, 3, 'test@gmail.com', '2024-01-31', '2024-02-05', 'please offer some discount', '2024-01-31 05:21:52', 0, NULL, NULL),
(6, 2, 'garima12@gmail.com', '2024-03-01', '2024-03-05', 'NA', '2024-02-03 13:04:33', 1, NULL, '2024-02-03 13:05:29'),
(7, 2, 'iphone.images11@gmail.com', '2024-05-07', '2024-05-08', 'I want to book this', '2024-05-07 16:45:03', 0, NULL, NULL),
(8, 1, 'ravinder@khatri.com', '2024-05-08', '2024-05-08', 'hiii', '2024-05-08 04:06:00', 0, NULL, NULL),
(9, 1, 'ravinder@khatri.com', '2024-05-08', NULL, 'hee', '2024-05-08 04:14:26', 0, NULL, NULL),
(10, 1, '123@gmail.com', '2024-05-09', NULL, 'i want to book this package', '2024-05-09 11:28:02', 1, NULL, '2024-05-09 11:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', NULL, '2024-01-30 05:20:14'),
(10, 'test@gmail.com', 'Other', 'Test Sample', '2024-01-31 05:24:40', NULL, NULL),
(13, 'garima12@gmail.com', 'Booking Issues', 'I want some information ragrding booking', '2024-02-03 13:06:00', 'Infromation provided', '2024-02-03 13:06:26'),
(14, NULL, NULL, NULL, '2024-05-07 16:44:12', NULL, NULL),
(15, NULL, NULL, NULL, '2024-05-08 04:05:02', NULL, NULL),
(16, NULL, NULL, NULL, '2024-05-09 11:26:35', NULL, NULL),
(17, '123@gmail.com', 'Booking Issues', 'i have booked this but not sent', '2024-05-09 11:29:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<div itemprop=\"articleBody\">\r\n		<h1><span style=\"color: #000000;\">TERMS &amp; CONDITIONS</span></h1>  <div>  <div>  <div>  <h2>1. Booking your Holiday</h2>  <p>a)\r\n Your contract in respect of your holiday is made with Elite Travel \r\n&amp; Tourism (‘the Company‘), registered in Oman and all bookings are \r\nsubject to these terms and conditions.</p>  <p>b) All communications by the Company in relation to your holiday will be sent to the address stated on the booking form.</p>  <p>c)\r\n All bookings must be made through an authorised representative of the \r\nCompany. At the time of booking the Company booking form must be \r\ncompleted and submitted together with a deposit of 50% of the total cost\r\n of the booking.</p>  <p>d) Receipt of the deposit and booking form by \r\nthe Company does neither guarantee nor imply confirmation of the \r\nbooking. No booking shall be confirmed until the Company issues a \r\nwritten notice. The Company reserves the right to refuse a booking \r\nwithout giving any reason and shall in that event return any deposit \r\nreceived.</p>  <p>e) Your holiday must be paid in full at least 30 days \r\nbefore the departure date. If payment is not received by the due date, \r\nthe Company reserves the right to cancel the booking and retain the \r\ndeposit. The person who signs the booking form guarantees payment of the\r\n total amount shown on the booking form in accordance with these \r\nconditions. It is the responsibility of the signatory to ensure the \r\nCompany receives payment in full by the due date. No reminders will be \r\nsent.</p>  <p>f) If you book within 30 days of your departure date payment must be made in full at the time of booking.</p>  <p>g) All special requests, such as dietary requirements, should be noted on the booking form.</p>  <p>h) The Company will provide the service as set out and confirmed in writing.</p>  <h2>2.&nbsp;Price Policy</h2>  <p>a) The Company is under no obligation to furnish a breakdown of the costs involved in a holiday.</p>  <p>b) The Company reserves the right to notify you of any increase in price before accepting your booking.</p>  <p>c)\r\n After a Confirmation Invoice has been issued, unless you choose to pay \r\nfor your holiday in full at the time of booking, the price of your \r\nholiday is subject to the possibilities of surcharges in certain limited\r\n circumstances. However, a surcharge will only be levied to allow for \r\nvariations in transportation cost, including cost of fuel, increase in \r\nnormal published airfares, taxes or fees chargeable for services such as\r\n landing taxes at airports, the exchange rate applied to the particular \r\npackage or if the government or regulatory body introduce an increase of\r\n taxes. Even then, the Company will absorb an amount equal to 2% of your\r\n holiday price (excluding insurance premiums and amendment charges) \r\nbefore passing on any surcharge to you. Only amounts in excess of this \r\n2% will be surcharged. Surcharges will be notified by a revised \r\nConfirmation Invoice sent to you.</p>  <p>d) If a surcharge would \r\nincrease the total holiday price shown on your original Confirmation \r\nInvoice by 10% or more, you may cancel your booking within 14 days of \r\nthe date of issue of the revised Invoice and obtain a full refund of all\r\n payments made to the Company and any amendment charges previously \r\nincurred.</p>  <p>e) Optionally, you may choose to pay for your holiday \r\nin full at the time of booking, in which case your holiday price will be\r\n fixed at the cost quoted by the Company at the time. To qualify for \r\nthis benefit you should return the Confirmation Invoice to the Company \r\nwith full payment to reach the Company within 7 days of the date printed\r\n on the Confirmation Invoice.</p>  <p>f) The financial commitments \r\noffered above by the Company mean that the Company is not able to reduce\r\n the holiday prices should the value of the Omani Rial strengthen.</p>  <h2>3.&nbsp;Cancellation and Changes by the Company</h2>  <p>a)\r\n Occasionally it may be deemed necessary to make changes to your holiday\r\n and the Company reserves the right to do so at any time, and you will \r\nbe notified of any changes at the earliest possible opportunity. If a \r\nmajor change to your tour is necessary, providing it does not arise from\r\n circumstances beyond the Company’s control, you may choose (i) to \r\naccept the change of arrangements (ii) to purchase another holiday from \r\nus or (iii) to cancel your holiday. Compensation may be payable in cases\r\n of major change as detailed below.</p>  <p>b) No compensation will be \r\npayable for minor changes. Minor changes include minimal changes to \r\ndeparture and arrival times, changes to the type of aircraft used and \r\nrestaurant and accommodation changes to a comparable or superior \r\nstandard.</p>  <p>c) Major changes include cancellation, changes to your\r\n UK airport, delays in departure or return by more than 12 hours and \r\naccommodation changes to an inferior standard of accommodation.</p>  <p>d)\r\n Compensation will not be paid for changes or cancellations caused by \r\nActs of God (Force Majeure), war, threat of war, riot, civil strike, \r\nindustrial dispute, terrorist activity, natural or man-made disaster, \r\nfire, technical problems to transport, closure or congestion of \r\nairports, strikes or other industrial action, adverse weather conditions\r\n or any other event beyond the Company’s control. It is essential that \r\nyou take out adequate travel insurance.</p>  <p>e) The Company reserve \r\nthe right to cancel your holiday at any time before the date of \r\ndeparture, even after a confirmation notice has been sent. If your \r\nholiday is cancelled the Company will refund in full the money you have \r\nalready paid. No compensation will be payable.</p>  <p>f) Transportation\r\n is subject to the conditions of carriage of the carrier, some of which \r\nmay limit or exclude liability. These conditions are often the subject \r\nof international agreement between countries and copies of the \r\nconditions, which apply to your holiday journey, will normally be found \r\non the carrier’s tickets.</p>  <p>g) If you fail to pay the balance of \r\nthe holiday price at least 30 days before departure, the Company will \r\ntreat the booking as cancelled and levy the cancellation charges set out\r\n below</p>  <p>h) The company also has the right to refuse any person as\r\n a member of the tour, if in their opinion that person could endanger \r\nthe health, safety and enjoyment of others on the tour. In any of the \r\nevents mentioned above, the company’s sole liability and the client’s \r\nsole remedy will be limited to a refund of any monies paid, less the \r\namount for services already utilised plus administrative fees.</p>  <h2>4.&nbsp;Cancellation and Changes by You</h2>  <p>a)\r\n You may cancel your holiday at any time providing you notify the \r\nCompany in writing. The following charges will be levied on any \r\ncancellation:</p>  <ul><li>30 days or more 50% of Deposit</li><li>15 – 30 days 100% of Deposit</li><li>8 – 15 days 80% of Tour Cost</li><li>1 – 7 days 100% of Tour Cost</li></ul>  <p>b)\r\n After the itinerary is confirmed, the client is permitted free of \r\nadministration charges one set of amendments, though will be liable for \r\nany added cost this may add to the tour, including airline charges, \r\nhotels etc. Any further modifications, which are instigated by the \r\nclient, will incur a charge of 25 Omani Rials due to communication and \r\nadministration expenses that may have incurred.</p>  <h2>5.&nbsp;Our Responsibilities</h2>  <p>a)\r\n The Company does not own or manage the aircraft, accommodation, \r\nrestaurants and other facilities used in conjunction with the tours \r\narranged. While the Company has exercised care in selecting providers of\r\n travel, accommodation, restaurants and other facilities, the Company \r\nhave not had the opportunity to inspect and do not represent that such \r\naircraft, accommodation, restaurants, and other facilities and services \r\nhave been inspected.</p>  <p>b) The Company is not responsible if you or\r\n any member of your party suffer death, illness or injury as a result of\r\n any failure to perform or improper performance of any part of our \r\ncontract with you where such failure is attributable to (i) the acts \r\nand/or omissions of any member of the party, or (ii) those of a third \r\nparty not connected with the provision of your holiday, or (iii) an \r\nevent which neither the Company or the service provider could have \r\nforeseen or prevented even with due care.</p>  <p>c) Should any member \r\nof your party suffer illness, injury or death through misadventure \r\narising out of an activity, which does not form part of the holiday the \r\nCompany has arranged for you the Company cannot accept liability. The \r\nCompany will offer general assistance where appropriate.</p>  <p>d) The \r\nCompany regret that no refund will be made on unused tickets where \r\ntravel, sporting event or other types of ticket, unless a refund can be \r\nobtained from the carrier or provider.</p>  <h2>6.&nbsp;Your Responsibilities</h2>  <p>a)\r\n You are responsible for arranging your own travel insurance, though an \r\nappropriate policy can be incorporated into your tour package. Details \r\nof all insurance policies held by each member of your party must be \r\nprovided on the booking form. No booking forms can be accepted without \r\nsufficient proof that personal policies have been arranged. Please \r\nensure that your insurance cover applies to the specific activities you \r\nare booking and which are confirmed on the Confirmation Invoice.</p>  <p>b)\r\n Each member of the party must have a valid passport, visas and all \r\nnecessary documentation for the countries they are touring. The Company \r\naccept no responsibility for any delay or expense should your documents \r\nnot be in order.</p>  <p>c) You are responsible for checking-in for \r\nflights at the correct time and for presenting yourself to take up all \r\npre-booked components of your holiday. The Company cannot accept \r\nresponsibility for clients missing flights as a result of late check-ins\r\n and no credit or refunds will be given if you fail to take up any \r\ncomponent of your holiday. No credit of refunds will be given for lost, \r\nmislaid or destroyed travel documents.</p>  <p>d) By booking a holiday \r\nwith the Company you undertake to behave in an orderly manner and not to\r\n disrupt the enjoyment of others on holiday with you nor to do anything \r\nto bring the reputation of the Company into disrepute. If you breach \r\nthis clause your holiday will be terminated with immediate effect and \r\nthe Company will have no further contractual obligation to you. The \r\nCompany will be entitled to recover from the offending party and/or the \r\nperson who signed the booking form compensation for any damage caused.</p>  <p>e)\r\n It is the responsibility of the person who signs the Booking Form to \r\ndisclose any pre-existing medical conditions that members of their party\r\n may have.</p>  <p>f) All equipment and personal effects shall be all \r\ntimes and in all circumstances at the owner’s risk. The Company cannot \r\naccept responsibility for any loss or damage or delay to your luggage or\r\n effects unless directly caused by the negligence of one of our \r\nrepresentatives.</p>  <h2>7.&nbsp;Smoking</h2>  <p>The Company forbids \r\nsmoking in any vehicle operated by the Company. Frequent stops can be \r\narranged for those who desire to smoke. All accommodation will be \r\nreserved with non-smoking rooms, unless the client specifically requires\r\n a smoking room. Confirmation is depending on hotel availability.</p>  <h2>8.&nbsp;Waiver</h2>  <p>The\r\n Company will undertake to ensure the safety of the client throughout \r\nthe tour, however aspects of each particular tour may not be without an \r\nelement of danger. Clients should be prepared to sign a ‘Waiver of \r\nResponsibility’ form before they begin their tour. This form is an \r\nunderstanding that all clients need to exercise judgement and care at \r\nall times to ensure their own safety and that of their fellow tourists.</p>  <h2>9.&nbsp;Disclaimer</h2>  <p>The\r\n Company has made all reasonable efforts to check the accuracy of the \r\ninformation contained in our website. The Company cannot however accept \r\nany responsibility for any errors or omissions that may appear in this \r\nsite.</p>  <h2>10.&nbsp;Complaints</h2>  <p>a) If you have a problem during \r\nyour holiday, please inform the relevant airline, hotel, local agent of \r\nother suppliers immediately so that they can endeavour to put things \r\nright. If you cannot resolve the problems, you must contact the Company \r\noffice so that they are given an opportunity to help. The Company will \r\nnot hold themselves responsible for the non-performance of an itinerary \r\nthrough causes beyond their control or when they are not notified of a \r\nproblem at the point where remedial action can be taken. In the unlikely\r\n event that a complaint cannot be resolved at the time, your should \r\nwrite to the Company within 28 days of returning home, giving your \r\noriginal booking reference number and all other relevant information. If\r\n you fail to take any of these steps you will hinder the Company’s \r\nability to put any problem right and/or investigate it fully and any \r\nright you have to receive compensation will be reduced or completely \r\ninvalidated.</p>  <p>b) Any dispute that may arise will be governed by \r\nOmani law and both parties shall submit to the jurisdiction of the Omani\r\n Courts.</p>  <p>c) All information given by the Company whether in \r\nwriting or orally is to the best of the Company’s knowledge and believed\r\n correct at the time given and is given in good faith. The booking \r\nconditions shall take precedence over any other warranty or condition \r\nthat may have been given.</p>  <h2>11.&nbsp;Data Protection Act</h2>  <p>It \r\nmay be necessary for the Company to ask you for certain personal \r\ninformation. Examples of this would be dietary requirements, \r\ndisability/medical or religious information etc. This information will \r\nbe kept confidential by the Company and is available to you to inspect \r\nduring the Company’s normal working hours. It will be passed to the \r\nsuppliers, if it is necessary for them to know this information in order\r\n to fulfill the Company’s contract to you.</p>  </div>  </div>  </div>  <p>&nbsp;</p>	</div>\r\n\r\n	\r\n						\r\n\r\n\r\n								\r\n								<div class=\"content_main_bottom\">\r\n									\r\n								</div>\r\n							\r\n											\r\n				\r\n			<p align=\"justify\"></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '<div class=\"elementor-element elementor-element-7725305 elementor-widget elementor-widget-heading\" data-id=\"7725305\" data-element_type=\"widget\" data-widget_type=\"heading.default\"><div class=\"elementor-widget-container\"><h4 class=\"elementor-heading-title elementor-size-default\">Privacy Policy <br></h4></div></div><div class=\"elementor-element elementor-element-f247c95 elementor-widget elementor-widget-text-editor\" data-id=\"f247c95\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\"><div class=\"elementor-widget-container\">\r\n While information is the cornerstone of our ability to provide superior\r\n service, our most important asset is our clients’ trust. Keeping client\r\n information secure, and using it only as our clients would want us to, \r\nis a top priority for all of us at Journey Travel &amp; Tours. Here \r\nthen, is our promise to our individual customers:<ul><li>We will safeguard, according to strict standards of security and confidentiality, any information our customers share with us.</li><li>We\r\n will limit the collection and use of customer information to the \r\nminimum we require to deliver superior service to our customers, which \r\nincludes advising our customers about our products, services and other \r\nopportunities, and to administer our business.</li><li>We will permit \r\nonly authorized employees, who are trained in the proper handling of \r\ncustomer information, to have access to that information. Employees who \r\nviolate our Privacy Promise will be subject to our normal disciplinary \r\nprocess.</li><li>We will not reveal customer information to any external\r\n organization unless we have previously informed the customer in \r\ndisclosures or agreements, or are required by law.</li><li>We will \r\nalways maintain control over the confidentiality of our customer \r\ninformation. We may, however, share customer information with reputable \r\ncompanies when a customer has expressed an interest in their service or \r\nproduct. Please note that this Privacy Policy does not apply to these \r\nother companys use of customer information.</li><li>Whenever we hire \r\nother organizations to provide support services, we will require them to\r\n conform to our privacy standards and to allow us to audit them for \r\ncompliance.</li><li>We will attempt to keep customer files complete, \r\nup-to-date, and accurate. We will tell our customers how and where to \r\nconveniently access their information (except when we’re prohibited by \r\nlaw) and how to notify us about errors which we will promptly correct.</li></ul></div></div>'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled TMS to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>\r\n										'),
(11, 'contact', '<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address:Boisar,palghar-401501</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">contact no:8766736713</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">email:TSM@gmail.com</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">office timing:9am to 5pm,sunday closed<br></span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2024 (Group Package)', 'Group Package', 'Paris and Switzerland', 400000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.\r\n\r\n\r\nHere’s a list of package inclusions for you:\r\n\r\nTour Manager: Service of an experienced Tour Manager\r\nGet an Opportunity to Visit Disneyland and also enjoy a spectacular display of Fireworks(optional activity)\r\nTrain experience from Engelberg to Lucerne\r\nOne Indian Dish in Breakfast in: Paris, Engelberg & Zurich\r\nVisit Eiffel Tower, Experience River scene cruize\r\nStay 2 nights in the Alpine Resort town of Engelberg\r\nTravel insurance: valid for the duration of the holiday of tourists below 65 years of age\r\nTips: To drivers and guides are included', '1581490262_2_1.jpg', '2024-07-15 05:21:58', '2024-05-09 12:24:32'),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(9, 'Test Sample', '4654654564', 'testsample@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-31 06:32:51', NULL),
(10, 'Garima Singh', '1425362540', 'garima12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-03 13:03:43', '2024-02-03 13:04:02'),
(12, 'Arvind yadav ', '8766736713', 'iphone.images11@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-05-07 16:44:12', NULL),
(13, 'Ravinder khatri', '9872487987', 'ravinder@khatri.com', 'c44a471bd78cc6c2fea32b9fe028d30a', '2024-05-08 04:05:02', NULL),
(14, 'Arvind yadav', '8756445353', '123@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-05-09 11:26:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;