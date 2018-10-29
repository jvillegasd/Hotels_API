-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2018 a las 02:45:24
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_lab_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_keys`
--

CREATE TABLE `api_keys` (
  `CONTACT NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `COMPANY` varchar(50) NOT NULL,
  `API KEY` varchar(11) NOT NULL,
  `id` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `api_keys`
--

INSERT INTO `api_keys` (`CONTACT NAME`, `EMAIL`, `COMPANY`, `API KEY`, `id`, `updated_at`, `created_at`) VALUES
('seed', 'seed', 'seed', 'seed123', 1, '0000-00-00', '0000-00-00'),
('hola', 'aaa@aaa.com', 'hola2', 'bSVJFe77ncq', 2, '2018-10-10', '2018-10-10'),
('hol2a', 'bba@aaa.com', 'hola3', 'xUbQV35U9Kh', 3, '2018-10-10', '2018-10-10'),
('uninorte', 'un@hotmail.com', 'universidad', 'nDvXMZ3UrYP', 4, '2018-10-13', '2018-10-13'),
('hola', 'aa@aa.com', 'compañia', 'BRwVqJ9RjSt', 5, '2018-10-13', '2018-10-13'),
('hola', 'aa@aa.com', 'compañia2', 'w5ofRrLv4W3', 6, '2018-10-14', '2018-10-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_hotels`
--

CREATE TABLE `info_hotels` (
  `ID` int(11) NOT NULL,
  `HOTEL NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STATE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PHONE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAX` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEBSITE` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rooms` int(11) NOT NULL,
  `Size` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` double(17,8) DEFAULT NULL,
  `Longitude` double(16,8) DEFAULT NULL,
  `API KEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `info_hotels`
--

INSERT INTO `info_hotels` (`ID`, `HOTEL NAME`, `ADDRESS`, `STATE`, `PHONE`, `FAX`, `EMAIL`, `WEBSITE`, `TYPE`, `Rooms`, `Size`, `Latitude`, `Longitude`, `API KEY`) VALUES
(1, 'Raheem Residency', '\"20/1100Beach Road, Alleppey West - 688 012, KERALA\"', 'KERALA', '123', '0477-2239767', 'a@a.com', 'a.com', 'a', 10, 'small', 9.50029000, 76.31742000, ''),
(2, 'Noor Us Sabah Palace', '\"V.I.P.RoadKoh-E-Fiza, Bhopal - 462001, MADHYA PRADESH\"', 'MADHYA PRADESH', '0755-4223333/4239996', '0755-4227777', 'contact@noorussabahpalace.com/reservations@nusp.in', 'www.noorussabahpalace.com', 'Heritage Classic', 57, 'medium', 23.26038000, 77.37497000, ''),
(3, 'The Panjim Inn ', '\"31-ST JANUARY ROAD, FONTAINHAS, PANAJI, Panaji , GOA\"', 'GOA', '4564277301', '4565273111', 'visalam@cghearth.com', 'www.cghearth.com', 'Heritage Basic', 15, 'small', 15.49623000, 73.83145000, ''),
(4, 'Balaram Palace Resort', '\"Chitrassani Village,off Abu Palanpur Highway No.14 Banaskantha, BANASKANTHA, GUJARAT\"', 'GUJARAT', '07926575286, 2657638', '7926578412', 'balarampalaceresort@gmail.com', 'NA', 'Heritage Basic', 22, 'small', 24.27704000, 72.49521000, ''),
(5, 'Nilambag Palace Hotel', '\"Bhavnagar, Bhavnagar, GUJARAT\"', 'GUJARAT', '02782424241, 2429323', '2782428072', 'reservation@nilambagpalace.com', 'NA', 'Heritage Basic', 28, 'small', 21.77006000, 72.14590000, ''),
(6, 'The Fort Ramgarh', '\"Ramgarh, Panchkula On NH - 73 Delhi Shimla Highway, Near Chandigarh, Panchkula Distt., HARYANA\"', 'HARYANA', '01733253072-75, 9814', 'NA', 'thefortramgarh@gmail.com', 'NA', 'Heritage Basic', 12, 'small', 30.65450000, 76.88693000, ''),
(7, 'The Judges Court', '\"Heritage VillageParagpur, Distt. - Kangra - 177107, HIMACHAL PRADESH\"', 'HIMACHAL PRADESH', '01970-245035/245335', '01970-245823', 'eries@vsnl.com/info@judgescourt.com', 'www.judgescourt.com', 'Heritage Basic', 10, 'small', 31.81011000, 76.20165000, ''),
(8, 'The Palace', '\"Chail, Solan,HIMACHAL PRADESH\"', 'HIMACHAL PRADESH', '1772652704', '1772652206', 'maltidutta50@yahoo.com', 'NA', 'Heritage Basic', 31, 'small', 30.96971000, 77.19823000, ''),
(9, 'The Castle Naggar', '\"Naggar, Distt. Kullu - 175130, HIMACHAL PRADESH\"', 'HIMACHAL PRADESH', '1902248316', '1902223429', 'castle@hptddc.in/kullu@hptdc.in', 'wwwhptdc.nic.in', 'Heritage Basic', 17, 'small', 32.11238000, 77.16498000, ''),
(10, 'Hotel Cherthala House', '\"Court JunctionEast of P.M.C. - 5, cherthala - 688 524, KERALA\"', 'KERALA', '0475-2223688', '', 'housecherthala@hotmail.com', 'NA', 'Heritage Basic', 5, 'N/A', 9.69094000, 76.33775000, ''),
(11, 'Heritaga Methanam', '\"K P XI / 298Near Perumpadappu, Kumbalanghi Bridge, Kumbalanghi P.O., Kochi - 682 007, KERALA\"', 'KERALA', '4842248284', '4842248284', 'heritagemethanam@gmail.com/info@heritagemethanam.com', 'www.heritagemethanam.com', 'Heritage Basic', 7, 'N/A', 9.90226000, 76.28211000, ''),
(12, 'Old Lighthouse Bristow Hotel ', '\"Beach Road Next to SBI Training Center Fort Kochi , Cochin , KERALA\"', 'KERALA', '4843050102', 'NA', 'reservations@oldlighthousehotel.com', 'NA', 'Heritage Basic', 11, 'small', 9.96793000, 76.24241000, ''),
(13, 'Hotel Le Colonial ', '\"1/215, Church Road, Vasco-da-Gama Square, Fort Cochin , KERALA\"', 'KERALA', '4842217181', '4842217184', 'lecolonial@dataone.in', 'NA', 'Heritage Basic', 8, 'N/A', 29.98237700, 76.57920800, ''),
(14, 'Kunnathur Mana Ayurveda Heritage', '\"Door No.VIII/666 Punnayurkulam P.O. Thrissur Dist, Kerala, KERALA\"', 'KERALA', '0487 2547552, 254755', '4872547554', 'mail@kmaheritage.com', 'NA', 'Heritage Basic', 7, 'N/A', 10.67084000, 76.00166000, ''),
(15, 'Old Harbour Hotel', '\"No-1/328, Tower Road, Fort Kochi , Kochi , KERALA\"', 'KERALA', '4842218006', 'NA', 'raintree@fortcochin.com', 'NA', 'Heritage Basic', 13, 'small', 9.96731000, 76.24298000, ''),
(16, 'Coconut Lagoon', '\"P.O. Box No. 2Kumarakom, Kottayam - 686563, KERALA\"', 'KERALA', '0481-2524491-2524373', '0481-2524495', 'coconutlagoon@cghearth.com', 'www.cghearth.com', 'Heritage Basic', 36, 'small', 9.59337000, 76.43358000, ''),
(17, 'Beach Hotel', '\"(Beach Heritage Inn (P) Ltd.)Beach Road, Kozhikode - 673032, KERALA\"', 'KERALA', '0495-2762055-57', '0495-2365363', 'info@beachheritage.com', 'www.beachheritage.com', 'Heritage Basic', 6, 'N/A', 11.25112000, 75.77151000, ''),
(18, 'Palakkad Heritage Hotels', '\"Koduvayur P.O.Palakkad, Dist., KERALA \"', 'KERALA', '4923252143', '4923252144', 'info@palakkadheritagehotel.com', 'www.palakkadheritagehotel.com', 'Heritage Basic', 5, 'N/A', 10.68793000, 76.66021000, ''),
(19, 'Somatheeram Ayurvedic Beach Resort (P) Ltd.', '\"P.O. ChowaraVia Balaramapuram, Thiruvananthapuram - 695501, KERALA\"', 'KERALA', '0471-2268101', '0471-2267600', 'mail@somatheeram.in', 'www.somatheeram.in', 'Heritage Basic', 42, 'small', 8.43089000, 77.04550000, ''),
(20, 'The Hillway Heritage', '\"Opp. Police Station, State Highway - 1Kilimanoor P.O., Thiruvananthapuram - 695601, KERALA\"', 'KERALA', '4702673555', 'NA', 'mail@hillwayhotels.com', 'www.hillwayhotels.com', 'Heritage Basic', 6, 'N/A', 8.77940000, 76.84725000, ''),
(21, 'Ahilya Fort ', '\"Ahilya Fort, Maheshwar, W Nimar , Bhopal , MADHYA PRADESH\"', 'MADHYA PRADESH', '7283273329', 'NA', 'info@ahilyafort.com', 'www.ahilyafort.com', 'Heritage Basic', 15, 'small', 22.17924000, 75.58448000, ''),
(22, 'Hotel Rock End Manor ', '\"Pachmarhi Distt. ,HOSHANGABAD , MADHYA PRADESH\"', 'MADHYA PRADESH', '7552774340', '7552779476', 'info@mptourism.com', 'www.mptourism.com', 'Heritage Basic', 6, 'N/A', 22.47417000, 78.43389000, ''),
(23, 'Satpura Retreat', '\"Pachmarhi, Dist. Hosangabad, MADHYA PRADESH\"', 'MADHYA PRADESH', '07578-252097', 'NA', 'satpura@mptourism.com', 'www.mptourism.com', 'Heritage Basic', 6, 'N/A', 22.47417000, 78.43389000, ''),
(24, 'Hotel Sheesh Mahal ', '\"MPSTDC, Orchha, Tikamgarh Dist. , MADHYA PRADESH\"', 'MADHYA PRADESH', '7552774340', '7552779476', 'info@mptourism.com', 'www.mptourism.com', 'Heritage Basic', 8, 'N/A', 25.35276000, 78.63931000, ''),
(25, 'Jehan Numa Palace Hotel ', '\"157, SHAMLA HILL(M.P) , Bhopal , MADHYA PRADESH\"', 'MADHYA PRADESH', '755661100', '755661720', 'NA', 'www.hoteljehanumapalace.com', 'Heritage Basic', 98, 'medium', 23.24703000, 77.39549000, ''),
(26, 'LE DUPLEIX ', '\"(unit of auberge Heritage Hotels) 5, CASERNE STREET , Pondicherry, PONDICHERRY\"', 'PONDICHERRY', '4132666001', '4132334258', 'gmldp@sarovarhotels.com', 'NA', 'Heritage Basic', 21, 'small', 11.92570090, 79.83429907, ''),
(27, 'Calve', '\"A Heritage HotelOld No. 36, New No. 44, Vysial Street, Puducherry - 605 001, PUDUCHERRY\"', '', '0413-2224103-2223738', '413-2222613', 'whclve@gmail.com/calve@vsnl.net', 'www.calve.in', 'Heritage Basic', 11, 'small', 11.93791000, 79.82954000, ''),
(28, 'Welcome Heritage, Khimsar Fort', '\"Khimsar, RAJASTHAN \"', 'RAJASTHAN ', '1585262345', '1585262228', 'reservation@khimsar.com', 'NA', 'Heritage Basic', 67, 'medium', 26.97173000, 73.40790000, ''),
(29, 'The Bagh ', '\"Agra Achnara Road Pucca Bagh Bharatpur, Bharatpur, RAJASTHAN \"', 'RAJASTHAN ', '1733253072', '1733253072', 'contact@thefortramgarh.com', 'NA', 'Heritage Basic', 29, 'small', 27.65259000, 77.15931000, ''),
(30, 'Gajner Palace', '\"P.O. GajnerTehsil : Kolayat, Bikaner - 334001, RAJASTHAN\"', 'RAJASTHAN', '01534-275061-9', '01534-275060', 'egmnr@gajner.hrhindia.com', 'www.hrhindia.com', 'Heritage Basic', 45, 'small', 27.83738000, 72.95405000, ''),
(31, 'The Laxmi Niwas Palace ', '\"(A Unit of Golden Triangle Fort and Palace Pvt. Ltd.) Dr. Karni Singhji Road ,Bikaner ,RAJASTHAN\"', 'RAJASTHAN', '8322226523', '8322435220', 'panjimin@bsnl.in', 'NA', 'Heritage Basic', 24, 'small', 28.04053835, 73.33110701, ''),
(32, 'Chomu Palace', '\"Near Main ChomuBus Stand, Chomu - 303702, RAJASTHAN\"', 'RAJASTHAN ', '01423-300400', '01423-300400', 'gm@chomupalacehotel.com/info@chomupalacehotel.com', 'www.chomupalacehotel.com', 'Heritage Basic', 58, 'medium', 27.16601000, 75.72350000, ''),
(33, 'Bissau Palace ', '\"Outside Chandpole Gate , Jaipur, RAJASTHAN\"', 'RAJASTHAN ', '1412304371', '1412304628', 'bissau@sancharnet.in', 'www.bissaupalace.com', 'Heritage Basic', 50, 'small', 24.58058000, 73.67841000, ''),
(34, 'Deogarh Resorts', '\"Deogarh MahalP.O. Deogarh Madariya, Distt. Rajsamand - 313331, RAJASTHAN\"', 'RAJASTHAN ', '02904-252777', '02904-252555', 'deogarh@datainfosys.net', 'www.deogarhmahal.com', 'Heritage Basic', 45, 'small', 25.52038000, 74.01027000, ''),
(35, 'Shikarbadi Hotel', '\"Goverdhan Vilas, Udaipur - 313001, RAJASTHAN\"', 'RAJASTHAN ', '0294-2583200/04', '0294-2584841', 'shikarbadi@hrhhotels.com', 'www.hrhhotels.com', 'Heritage Basic', 25, 'small', 24.59727000, 73.71623000, ''),
(36, 'Welcom Heritage - Koolwal Kothi', '\"House No. 40,Near Government Hospital RoadNawal Garh District, Jhunjhunu, RAJASTHAN\"', 'RAJASTHAN ', '01594-225817', '01594-225818', 'indralokhotels@hotmail.com/holidays@welcomheritagehotels.com', 'www.welcomheritagehotels.com', 'Heritage Basic', 10, 'small', 27.85342000, 75.27511000, ''),
(37, 'Ajit Bhawan', '\"Near Circuit House, Jodhpur - 342 006, RAJASTHAN\"', 'RAJASTHAN ', '0291-2513333, 251141', '0291-2510674', 'reservations@ajitbhawan.com', 'www.ajitbhawan.com', 'Heritage Basic', 70, 'medium', 26.28532000, 73.03892990, ''),
(38, 'Hotel Samode Palace', '\"Village Samode, Dist. Jaipur - 303806, RAJASTHAN\"', 'RAJASTHAN', '01423-240014', '01423-240023', 'reservations@samode.com', 'www.samode.com', 'Heritage Basic', 43, 'small', 27.23982000, 75.83737000, ''),
(39, 'Raj Niwas Palace', '\"National Highway-3, Dholpur - 328 001, RAJASTHAN\"', 'RAJASTHAN', '05642-220216', '05642-224888', 'info@dholpurpalace.com', 'www.dholpurpalace.com', 'Heritage Basic', 20, 'small', 26.69684000, 77.88977000, ''),
(40, 'Hotel Castle Mandawa Pvt.Ltd.', '\"MandawaJhunjhunu District, Shekhawati - 333704, RAJASTHAN\"', 'RAJASTHAN', '0141-2371194/2374112', '0141-2372084', 'reservation@castlemandawa.com/castle@datainfosys.net', 'www.castlemandawa.com', 'Heritage Basic', 70, 'medium', 28.05489000, 75.14752000, ''),
(41, 'Rohet Garh', '\"Village P.O RohetDistt. Pali, Rajasthan, RAJASTHAN\"', 'RAJASTHAN', '2936268231', '2912649368', 'rohethouse@dataone.in', 'NA', 'Heritage Basic', 34, 'small', 25.78891000, 73.32858000, ''),
(42, 'Lake Pichola Hotel', '\"Piplia Haveli, Out Side ChandpoleUdaipur, Rajasthan, Udaipur, RAJASTHAN\"', 'RAJASTHAN', '2942431197', '9242430575', 'maltidutta50@yahoo.com', 'NA', 'Heritage Basic', 32, 'small', 24.58162000, 73.67690000, ''),
(43, 'The Ramgarh Lodge', '\"Ramgarh LakeJamwa Ramgarh, Jaipur - 303109, RAJASTHAN\"', 'RAJASTHAN', '01426-214027/214097', '01426-252079', 'ramgarh.jaipur@tajhotels.com', 'NA', 'Heritage Basic', 14, 'small', 27.02043000, 76.01158000, ''),
(44, 'Hotel Indra Villas ', '\"A unit of Desert Heritage Resorts Pvt. Ltd. Ward No.2, Village Alsisar , JHUNJHUNU , RAJASTHAN\"', 'RAJASTHAN', '1595275567', '1595275567', 'info@indravilasalsisar.com', 'NA', 'Heritage Basic', 43, 'small', 28.34241000, 75.29615000, ''),
(45, 'Singhasan Haveli', '\"Goenka Chowk, Mandawa,Dist., JHUNJHUNU, RAJASTHAN\"', 'RAJASTHAN', '1126124069', '1126124073', 'info@singhasanhaveli.com', 'NA', 'Heritage Basic', 26, 'small', 28.05489000, 75.14752000, ''),
(46, 'Fort Khejarla', '\"(Aunit of Bhandari Heritage Pvt. Ltd.)Village Khejarla, Via Bilara, Distt. Jodhpur - 342601, RAJASTHAN\"', 'RAJASTHAN', '02930-258485 - 25848', '02930-258485', 'khejarlafort@gmail.com', 'www.jodhpurforkhejarla.com', 'Heritage Basic', 38, 'small', 26.33335000, 73.68415000, ''),
(47, 'Sardargarh Heritage Hotel ', '\"Sardargarh Fort, Village-Lawa Sardargarh Sardargarh, Dist:-Rajsamand , Rajsamand , RAJASTHAN\"', 'RAJASTHAN', '1592223137', '1592223137', 'hotelmandawa@yahoo.co.in', 'NA', 'Heritage Basic', 24, 'small', 29.37838000, 73.76296000, ''),
(48, 'The Sawai Madhopur Lodge', '\"Ranthambore National Park Road, Sawai Madhopur - 302 005, RAJASTHAN\"', 'RAJASTHAN', '07462-220541', '07462-220718', 'vivanta.sawaimadhopur@tajhotels.com', 'NA', 'Heritage Basic', 36, 'small', 26.01467000, 76.35754000, ''),
(49, 'Karni Bhawan Palace ', '\"Gandhi Colony Bikaner ,Bikaner ,RAJASTHAN\"', 'RAJASTHAN', '1512524701', '1512522408', 'karnihotels@satam.net.in', 'NA', 'Heritage Basic', 12, 'small', 28.03708000, 73.33467000, ''),
(50, 'Norkhill Hotel ', '\"Stadium Road, Gangtok , SIKKIM\"', 'SIKKIM', '3592205637', '3592205639', 'norkhill@elginhotels.com', 'www.elginhotels.com', 'Heritage Basic', 25, 'small', 27.33153000, 88.61397000, ''),
(51, 'Visalam', '\"7/1/143 LOCAL FUND ROAD, KANADUKATHAN KARAIKUDI, TAMIL NADU, KARAIKUDI, TAMIL NADU\"', 'TAMIL NADU', '04565277301, 2', '4565273111', 'visalam@cghearth.com', 'NA', 'Heritage Basic', 15, 'small', 10.07302000, 78.75334000, ''),
(52, 'Hotel Fairhavens Holiday Home', '\"Adacent to Head Post Office Mallital, Nainital, UTTARAKHAND\"', 'UTTARAKHAND', '5942236057', '5942236604', 'fairhavens@rediffmail.com', 'NA', 'Heritage Basic', 30, 'small', 29.39286000, 79.45220990, ''),
(53, 'The Naini Retreat', '\"Ayarapatta Sloppes, Nainital - 263001, UTTARAKHAND\"', 'UTTARAKHAND', '05942-235105', '05942-235103', 'info@leisurehotels.co.in/bookings@leisurehotels.in', 'NA', 'Heritage Basic', 32, 'small', 29.39286000, 79.45220990, ''),
(54, 'The Elgin Hotel', '\"18, H.D. Lama Road, P.O. Darjeeling, WEST BENGAL\"', 'WEST BENGAL', '3542257226', '3542254267', 'reservation@elginhotels.com', 'NA', 'Heritage Basic', 20, 'small', 27.04251000, 88.26617000, ''),
(55, 'Taj Falaknuma Palace ', '\"Engine Bowli, Falaknuma , Hyderabad, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '4066298585', '4066298586', 'falaknuma.hyderabad@tajhotels.com', 'NA', '5 Star Deluxe', 60, 'medium', 17.33712000, 78.46781000, ''),
(56, 'ITC HOTEL KAKATIYA', '\"6-3-1187,BEGUMPETnull, Hyderabad, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '402340032', '4023401045', 'itckakatiya@itchotel.in', 'NA', '5 Star Deluxe', 188, 'large', 17.43251650, 78.45742270, ''),
(57, 'Eros Hotel Managed by Hilton', '\"S-1American Plaza, International Trade Tower, Nehru Place, New Delhi - 110 019, DELHI\"', 'DELHI', '011-41223344', '011-26224288', 'nehruplace.reservations@hilton.com', 'www3.hilton.com', '5 Star Deluxe', 216, 'large', 28.55079000, 77.25550000, ''),
(58, 'The Ashok', '\"50-BChanakyapuri, New Delhi - 110021, DELHI\"', 'DELHI', '011-26110101', '011-26873216', 'ashoknd@ndb.vsnl.net.in', 'www.theashok.com', '5 Star Deluxe', 550, 'large', 28.59050000, 77.18173000, ''),
(59, 'Hotel Imperial', '\"Janpath, New Delhi - 110001, DELHI\"', 'DELHI', '011-23341234', '011-23342255', 'luxury@theimperialindia.com', 'www.theimperialindia.com', '5 Star Deluxe', 233, 'large', 28.62516000, 77.21930990, ''),
(60, 'Hyatt Regency Delhi', '\"Bhikaji Cama Place, New Delhi - 110066, DELHI\"', 'DELHI', '011-26791234', '011-26791017', 'delhi.regency@hyatt.com', 'NA', '5 Star Deluxe', 508, 'large', 28.56964000, 77.18650000, ''),
(61, 'ITC-The Maurya', '\"ITC LimitedDiplomatic Enclave, New Delhi - 110021, DELHI\"', 'DELHI', '011-26112233', '011-26113333', 'reservations.itcmaurya@itchotels.in', 'NA', '5 Star Deluxe', 440, 'large', 28.68699000, 77.30925000, ''),
(62, 'Le Meridien Hotel', '\"8, Windsor Place Janpath, New Delhinull, New Delhi, DELHI\"', 'DELHI', '1123710101', '1123714545', 'info@lemeridien-newdelhi.com', 'NA', '5 Star Deluxe', 358, 'large', 28.60382000, 77.21791000, ''),
(63, 'Taj Palace Hotel ', '\"Sardar Patel Marg , New Delhi ,DELHI\"', 'DELHI', '1126110202', '1126110808', 'palace.delhi@tajhotels.com', 'NA', '5 Star Deluxe', 409, 'large', 28.60158000, 77.17975000, ''),
(64, 'The Lalit', '\"Barakhamba AvenueConnaught Place,New Delhi - 110001, DELHI\"', 'DELHI', '011-44447777', '011-44441234', 'newdelhi@thelalit.com', 'NA', '5 Star Deluxe', 457, 'large', 28.62859000, 77.22696000, ''),
(65, 'The Oberoi -  New Delhi', '\"Dr. Zakir Hussain Marg, New Delhi - 110003,DELHI\"', 'DELHI', '011-24363030', '011-24360484', 'reservations@oberoigroup.com', 'NA', '5 Star Deluxe', 283, 'large', 28.60685000, 77.23454000, ''),
(66, 'Aman, New Delhi', '\"Lodhi Road, New Delhi - 110003, DELHI\"', 'DELHI', '1143633333', '1143633335', 'amannewdelhi@amanresorts.com', 'NA', '5 Star Deluxe', 68, 'medium', 28.58751000, 77.22770000, ''),
(67, 'The Hotel Leela Palace Kempinski', '\"Diplomatic Enclave, New Delhi - 110023,DELHI, National Highway No. 8, New Delhi-110037, DELHI\"', 'DELHI', '011-39331234, 1126779090', '011-39331235', 'reservations.newdelhi@theleela.com', 'NA', '5 Star Deluxe', 260, 'large', 28.57991835, 77.18926127, ''),
(68, 'Riviera De Goa Resort', '\"Shimer VaddoXimer, Arpora - 403 518, GOA\"', 'GOA', '0832-6655666', '0832-2277503', 'mail@rivieradegoaresorts.com', 'NA', '5 Star Deluxe', 104, 'large', 15.56775000, 73.77146000, ''),
(69, 'Vivanta by Taj - Panaji', '\"Off. D.B. Bandodkar RoadSt. Inez, Panaji - 403001, GOA\"', 'GOA', '0832-6633636', '0832-6633600', 'vivanta.panaji@tajhotels.com', 'NA', '5 Star Deluxe', 172, 'large', 15.50115000, 73.82596000, ''),
(70, 'Vivanta by Taj - Holiday', '\"(Earlier known as The Taj Holiday Village)Dando, Candolim, Bardez - 403 515, GOA\"', 'GOA', '0832-6645858', '0832-6645502', 'vivanta.holidayvillage@tajhotels.com', 'www.vivantabytaj.com', '5 Star Deluxe', 142, 'large', 15.51350000, 73.76881000, ''),
(71, 'Bell Tower Resorts Pvt.Ltd. ', '\"Bell Tower Resorts Pvt.Ltd. (Retreat by Zuri) Pedda, Uttor Doxi, Varca Salcatte-Goa-403721 , Salcete , GOA\"', 'GOA', '8322772996', '8322772996', 'NA', 'NA', '5 Star Deluxe', 106, 'large', 15.23559000, 73.94302000, ''),
(72, 'Hotel Ramada Caravela Beach Resort', '\"Varca Beach, Salcete - 403721, GOA\"', 'GOA', '0832-6695000', '0832-6695699', 'caravela.gr@advanihotels.com/reservations.gr@advanihotels.com', 'www.caravelabeachresort.com', '5 Star Deluxe', 200, 'large', 15.23559000, 73.94302000, ''),
(73, 'Vivanta By Taj- Fort Aguada', '\"Sinquerim, Bardez - 403519, GOA \"', 'GOA', '0832-6645858', '0832-6645868', 'vivanta.fortaguada@tajhotels.com', 'www.vivantabytaj.com', '5 Star Deluxe', 145, 'large', 15.49762000, 73.76597000, ''),
(74, 'Th Lalit Golf & Spa Resort Goa', '\"(Bharat Hotels Ltd.)Raj Baga,Canacona, GOA\"', 'GOA', '8322667777', '8322667711', 'goaresv@thelalit.com', 'NA', '5 Star Deluxe', 225, 'large', 15.00825000, 74.04329000, ''),
(75, 'Resort Rio', '\"Resort Rio, Tambudki,Arpora, Bardez, GOA\"', 'GOA', '8322267300', '8322267301', 'gm@resortrio.com', 'NA', '5 Star Deluxe', 82, 'medium', 15.56775000, 73.77146000, ''),
(76, 'Hotel Cidade de Goa', '\"(Unit of Fomento Resorts & Hotels Ltd.), Vainguinim Beach - 403004, GOA\"', 'GOA', '8322454545', '08322454541/42', 'cidadedegoa@cidadedegoa.com', 'www.cidadedegoa.com', '5 Star Deluxe', 205, 'large', 15.46372000, 73.81428000, ''),
(77, 'Majorda Beach Resort', '\"MajordaSalcette, Goa - 403713, GOA\"', 'GOA', '0832-288111/6681111', '0832-2881121/2881124', 'acc@majordabeachresortgoa.com', 'www.majordabeachresort.com', '5 Star Deluxe', 120, 'large', 15.31309000, 73.91376000, ''),
(78, 'The Leela Kempinski, Goa', '\"MoborCavelossim, Salcette - 403731, GOA\"', 'GOA', '8326621234', '8322871352', 'reservations.goa@theleela.com', 'www.theleela.com', '5 Star Deluxe', 186, 'large', 15.17983000, 73.95007000, ''),
(79, 'Hotel Trident - Gurgaon', '\"Plot No. 443, Udyog ViharPhase - V, Gurgaon - 122016, HARYANA\"', 'HARYANA', '0124-2450505', '0124-2450606', 'reservations@tridenthotels.com', 'NA', '5 Star Deluxe', 136, 'large', 28.50094000, 77.08476000, ''),
(80, 'The Leela Kempinski -  Gurgaon', '\"(Ambience Hotels & Resorts Ltd.) Village Nathupur, N.H.-8 Gurgaon, Gurgaon, HARYANA\"', 'HARYANA', '1244771234', '1244771235', 'reservations.gurgaon-delhi@theleela.com', 'NA', '5 Star Deluxe', 412, 'large', 28.43137000, 77.00552000, ''),
(81, 'The Bristol Hotel', '\"Adjacent to DLFQutab Enclave Phase - 1, Gurgaon - 122002, HARYANA\"', 'HARYANA', '0124-2356030', '0124-2357834', 'contact@thebristolhotel.com', 'www.thebristolhotel.com', '5 Star Deluxe', 84, 'medium', 28.47898595, 77.09166992, ''),
(82, 'Wildflower Hall', '\"(Mashobara Resort Limited, A Unit of EIH Limited)Chharabra, Shimla - 171 012, HIMACHAL PRADESH\"', 'HIMACHAL PRADESH', '0177-2648585', '0177-2648686', 'reservations@oberoigroup.com', 'www.oberoihotels.com', '5 Star Deluxe', 85, 'medium', 31.09198000, 77.17441000, ''),
(83, 'Vivanta by Taj -  Whitefield', '\"ITBP Whitefield, Bangalore - 560066, KARNATAKA\"', 'KARNATAKA', '080-66933333', '080-66933344', 'vivanta.whitefield@tajhotels.com', 'NA', '5 Star Deluxe', 199, 'large', 12.97935000, 77.73364000, ''),
(84, 'Hotel Golden Palms Hotel & Spa', '\"NO-31 & 32 GOLDEN PALMS AVENUE OFF TUMKUR ROAD BANGALORE,  KARNATAKA\"', 'KARNATAKA', '8023712222', '8023710022', 'info@goldenpalmshotel.com', 'NA', '5 Star Deluxe', 170, 'large', 13.04393000, 77.51009000, ''),
(85, 'ITC Hotel Windsor & Towers ', '\"WINDSOR SQUARE, 25 GOLF COURES ROAD, Bangalore , KARNATAKA\"', 'KARNATAKA', '802269898', '802264941', 'www.welcomgroup.com', 'NA', '5 Star Deluxe', 240, 'large', 12.99382000, 77.58490990, ''),
(86, 'The Taj West End', '\"Race Course Road Bangalore, KARNATAKA\"', 'KARNATAKA', '8066605660', '8066605700', 'westend.bengalore@tajhotels.com', 'NA', '5 Star Deluxe', 117, 'large', 12.98432000, 77.58263000, ''),
(87, 'Sheraton Banglore at Brigade Gateway', '\"26/1, Rajajinagar ExtensionDr. Rajkumar Road, Malleswaram West, Bangalore, KARNATAKA\"', 'KARNATAKA', '918041379200', '918022210748', 'diwaker.tyagi@shraton.com', 'www.brigadegroup.com', '5 Star Deluxe', 230, 'large', 13.01264000, 77.55535000, ''),
(88, 'The Oberoi Bangalore', '\"39 Mahatma Gandhi RoadBanglore-560001, Bangalore, KARNATAKA\"', 'KARNATAKA', '918025585858', '918025585960', 'reservations@oberoiblr.com', 'NA', '5 Star Deluxe', 160, 'large', 12.97307000, 77.61711000, ''),
(89, 'Vivanta by Taj -  Bangalore', '\"41/3M.G. Road, Bangalore - 560001, KARNATAKA\"', 'KARNATAKA', '0806660 4444', '0806661 4444', 'vivanta.mgroad@tajhotels.com', 'www.vivantabytaj.com', '5 Star Deluxe', 167, 'large', 12.98675055, 77.73759672, ''),
(90, 'Park Plaza', '\"NO. 5 Defence Colony,1st main, Indirangar, KARNATAKA\"', 'KARNATAKA', '42197330', '8042452346', 'sonusarmag@gmail.com', 'NA', '5 Star Deluxe', 218, 'large', 12.97716000, 77.64225990, ''),
(91, 'Dream Hotel Cochin', '\"37/985, C&D, Sahodaran Ayyappan Road Elamkulam Jnction, Kadavanthara cochin-682020, Cochin, KERALA\"', 'KERALA', '4844129999', '4844129898', 'reservations@dreamcochin.com', 'NA', '5 Star Deluxe', 150, 'large', 9.96716000, 76.29974000, ''),
(92, 'Vivanta by Taj - Bekal ', '\"A Unit of Khanna Hotels PVt. LTd. BRDC Site No. 5, Kappil Beach P.O. Udma West Kasaragod - 671319, Kasaragod , KERALA\"', 'KERALA', '4672265656', '4672265655', 'tkhanna99@gmail.com', 'NA', '5 Star Deluxe', 73, 'medium', 12.50233000, 74.99092000, ''),
(93, 'The Lalit Resorts & Spa Bekal', '\"Bevoori, Udma, Taluka: Hosedurgh Distt: Kasargod Kerala, Kasaragod , KERALA\"', 'KERALA', '4672237777', '4672237575', 'resvbekal@thelalit.com', 'NA', '5 Star Deluxe', 39, 'small', 12.50233000, 74.99092000, ''),
(94, 'Vivanta By Taj - Kovalam', '\"(Formerly known as Taj Green Cove Kovalam)G V Raja Vattappara Road, Kovalam, Thiruvananthapuram - 695 527, KERALA\"', 'KERALA', '0471-6613000', '0471-2487744', 'Vivanta.kovalam@tajhotels.com', 'www.vivantabytaj.com', '5 Star Deluxe', 59, 'medium', 8.40476000, 76.97653000, ''),
(95, 'Vivanta by - Taj Malabar ', '\"Willingdon Island , Cochin , KERALA\"', 'KERALA', '4846643000', '4846643182', 'malabar.cochin@tajhotels.com', 'NA', '5 Star Deluxe', 96, 'medium', 9.94417000, 76.28357000, ''),
(96, 'The Raviz Kollam', '\"Kollam Royal Park Hotel And Resorts P LtdMathilil, Kollam, KERALA\"', 'KERALA', '4742751111', '4742741111', 'info@theraviz.com', 'www.theraviz.com', '5 Star Deluxe', 93, 'medium', 8.88690000, 76.59228000, ''),
(97, 'Kovalam Resort Private Limited', '\"The Leela Kovalam,Kerala, Thiruvananthapuram, KERALA\"', 'KERALA', '4713051234', '4712481043', 'reservations.kovalam@theleela.com', 'NA', '5 Star Deluxe', 127, 'large', 8.39844000, 76.98195000, ''),
(98, 'The Grand Temple View ', '\"Opp. Circuit House , Khajuraho , MADHYA PRADESH\"', 'MADHYA PRADESH', '786272333', '786272123', 'khajraho@thegrandhotels.net', 'NA', '5 Star Deluxe', 47, 'small', 24.84748000, 79.91932000, ''),
(99, 'Hotel Chandela', '\"Airport RoadDist. Chhatarpur, Khajuraho - 471606, MADHYA PRADESH\"', 'MADHYA PRADESH', '07686-272355, 272364', '07686-272365, 272366', 'chandela.khajuraho@tajhotels.com', 'NA', '5 Star Deluxe', 90, 'medium', 24.84748000, 79.91932000, ''),
(100, 'Chalet Hotel', '\"Plot no.39/1 6 to 15 Sector 30 AVashi Navi Mumbai, Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2227817777', '2227817979', 'reservations@fourpointsvashi.com', 'NA', '5 Star Deluxe', 118, 'large', 19.08171000, 73.00446000, ''),
(101, 'Four Seasons Hotel', '\"(Unit of Mogus Estates & Hotels Ltd.) Plot NO.114,Dr.E.Moses Road Worli, Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2266627770', '2266627437', 'reservations.mumbai@fourseasons.com', 'NA', '5 Star Deluxe', 202, 'large', 18.99323000, 72.82048000, ''),
(102, 'HOTEL SAHARA STAR ', '\"DOMESTIC AIRPORT, VILE PARLE (E), MUMBAI , MAHARASHTRA\"', 'MAHARASHTRA', '2239895000', '2239895001', 'www.saharastar.com', 'NA', '5 Star Deluxe', 210, 'large', 19.09735990, 72.85321990, ''),
(103, 'Hyatt Regency Mumbai', '\"Sahar Airport RoadAndheri (East), Mumbai - 400 099, MAHARASHTRA\"', 'MAHARASHTRA', '022-66961234', '022-66961235', 'mumbai.regency@hyatt.com', 'www.mumbai.regency.hyatt.com', '5 Star Deluxe', 401, 'large', 19.10303000, 72.86832000, ''),
(104, 'Le Royal Meridien ', '\"SAHAR AIRPORT ROAD ANDHERI (E) , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2228380000', '2228204399', 'lmmumbai@vsnl.com', 'NA', '5 Star Deluxe', 171, 'large', 19.10303000, 72.86832000, ''),
(105, 'Sun-n-Sand Hotels Pvt. Ltd.', '\"39Juhu Beach, Mumbai - 400 049, MAHARASHTRA\"', 'MAHARASHTRA', '022-26201811-6693888', '022-26202170', 'reservations@sunnsandhotel.com', 'www.sunnsandhotel.com', '5 Star Deluxe', 120, 'large', 19.09594000, 72.82878000, ''),
(106, 'The Taj Mahal Palace & Tower ', '\"Apollo Bunder , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2266653366', '2266650300', 'tmhbc.bom@tajhotels.com', 'www.tajhotels.com', '5 Star Deluxe', 565, 'large', 18.92001000, 72.82963000, ''),
(107, 'Hotel Le Meridien', '\"R.B.M. Road, Pune - 411001, MAHARASHTRA\"', 'MAHARASHTRA', '2026050505', '2026050506', 'lmpune@lemeridien-pune.com', 'www.lemeridien-pune.com', '5 Star Deluxe', 117, 'large', 18.52976000, 73.87250000, ''),
(108, 'Hotel ITC Grand Central', '\"287, Babasaheb Ambedkar RoadParel,Mumbai-400012, MAHARASHTRA\"', 'MAHARASHTRA', '2224101010', '2224101111', 'itcgrandcentral@itchotels.in', 'NA', '5 Star Deluxe', 242, 'large', 18.99855000, 72.83740000, ''),
(109, 'The Leela Kempinski', '\"Sahar, Mumbai - 400 059, MAHARASHTRA\"', 'MAHARASHTRA', '022-66911234', '022-66911212', 'reservations.mumbai@theleela.com', 'www.theleela.com', '5 Star Deluxe', 393, 'large', 19.10971000, 72.87048000, ''),
(110, 'The Oberoi, Mumbai', '\"Nariman Point, Mumbai - 400021, MAHARASHTRA\"', 'MAHARASHTRA', '022-66325757-6632434', '022-66324142', 'reservations@oberoigroup.com', 'www.oberoihotels.com', '5 Star Deluxe', 287, 'large', 18.92504000, 72.82396000, ''),
(111, 'The Westin Mumbai Garden City ', '\"Oberoi Garden City, International Business Park, Off Western Express Highway, Goregaon (East) , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2261470000', '2261470101', 'mumbaigardencity@westin.com', 'NA', '5 Star Deluxe', 269, 'large', 19.15524000, 72.85691000, ''),
(112, 'Fariyas Resort, Lonavla', '\"Frichley HillsTungarli, Lonavla - 410401, MAHARASHTRA\"', 'MAHARASHTRA', '02114-273852-55', '02114-272080', 'fhrl@fariyas.com', 'www.fariyas.com', '5 Star Deluxe', 105, 'large', 18.75459000, 73.40680990, ''),
(113, 'Trident, Nariman Point', '\"Nariman Point, Mumbai - 400 021, MAHARASHTRA\"', 'MAHARASHTRA', '022-66324343', '022-66325000', 'reservations@tridenthotels.com', 'www.tridenthotels.com', '5 Star Deluxe', 550, 'large', 18.92590990, 72.81895000, ''),
(114, 'Taj Lands End', '\"B.J. RoadBand Stand, Bandra (West), Mumbai - 400050, MAHARASHTRA\"', 'MAHARASHTRA', '022-66681234', '022-66680957 - 66994', 'landsend.mumbai@tajhotels.com', 'www.tajhotels.com', '5 Star Deluxe', 493, 'large', 19.04329000, 72.81863000, ''),
(115, 'Trident -  Bhubaneswar ', '\"CB - 1 Nayapalli, Bhubaneshwar , ORISSA\"', 'ORISSA', '6742301010', '6742301302', 'reservations@tridenthotels.com', 'NA', '5 Star Deluxe', 62, 'medium', 20.28995000, 85.81677000, ''),
(116, 'Hotel Mayfair Lagoon', '\"8-BJaydev Vihar, Bhubaneswar, ORISSA\"', 'ORISSA', '91 674 6660101', '91 674 2360236', 'lagoon@mayfairhotels.com', 'www.mayfairhotels.com', '5 Star Deluxe', 102, 'large', 20.30200000, 85.81926000, ''),
(117, 'ISTA Amritsar', '\"G.T. Road(Adjoining Alpha One City Centre), Amritsar - 143 001, PUNJAB\"', 'PUNJAB', '0183-2708888', '0183-2700186, 270999', 'sales@istaamritsar.com/reservations.amritsar@istahotels.com', 'www.istahotels.com', '5 Star Deluxe', 248, 'large', 31.65528000, 74.92125000, ''),
(118, 'Sheraton Rajputana Hotel', '\"Palace Road, Jaipur-302006, RAJASTHAN\"', 'RAJASTHAN', '1415100100', '1415102102', 'reservations.itcrajputana@itchotels.in', 'sheratonrajputana@itcwelcomgroup.in', '5 Star Deluxe', 218, 'large', 26.97042000, 75.76647000, ''),
(119, 'The Oberoi Rajvilas', '\"Goner Road, Jaipur - 303012, RAJASTHAN\"', 'RAJASTHAN', '1412680101', '1412680202', 'reservations@oberoigroup.com', 'www.oberoihotels.com', '5 Star Deluxe', 71, 'medium', 26.83551000, 75.89792000, ''),
(120, 'The Oberoi Udaivilas ', '\"Haridas Ji Ki Magri , Udaipur , RAJASTHAN\"', 'RAJASTHAN', '2942433300', '2942433200', 'reservations@oberoigroup.com', 'NA', '5 Star Deluxe', 87, 'medium', 24.58155000, 73.66930000, ''),
(121, 'Country Inn & Suites By Carlson', '\"Country Inn & Suites By Carlson (A unit of Shivani Enclaves Pvt.,Khasa Kothi Circle M.I.Road, Jaipur, RAJASTHAN\"', 'RAJASTHAN', '2222686', '2222193', 'mail@goyalfashions.net', 'NA', '5 Star Deluxe', 100, 'medium', 13.04192850, 77.61325210, ''),
(122, 'The Leela Palace Kempinski', '\"P.O. Box No. 125Lake Pichola, Udaipur - 313 001, RAJASTHAN\"', 'RAJASTHAN', '0294-6701234', '0294-6701212', 'businesscentre@theleela.com', 'www.theleela.com', '5 Star Deluxe', 80, 'medium', 24.56834000, 73.68422000, ''),
(123, 'JAI MAHAL PALACE HOTEL', '\"JACOB ROAD,CIVIL LINES, Jaipur, RAJASTHAN\"', 'RAJASTHAN', '1416601111', '1416601057', 'jaimahal.jaipur@tajhotels.com', 'tajhotels.com', '5 Star Deluxe', 100, 'medium', 26.91260000, 75.78709000, ''),
(124, 'Mayfair Spa & Resort', '\"(Unit of Mayfair Hotels & Resorts (Sikkim) Pvt. Ltd.)Lower Samdur Block, Ranipool - 737135, Gangtok, SIKKIM\"', 'SIKKIM', '0359-2250555/666', '0359-2251009', 'gangtok@mayfairhotels.com', 'NA', '5 Star Deluxe', 63, 'medium', 27.30041000, 88.59780000, ''),
(125, 'Taj Mount Road', '\"No. 2Club House Road, Chennai - 600 002, TAMIL NADU\"', 'TAMIL NADU', '044-66313131', '044-66313030', 'clubhouse.chennai@tajhotels.com/mountroad.chennai@tajhotels.com', 'NA', '5 Star Deluxe', 220, 'large', 13.06136000, 80.26385000, ''),
(126, 'THE PARK ', '\"UNIT :APEEJAY -SURRENDRA PARK HOTELS LTD 601, ANNA SALAI , Chennai, TAMIL NADU \"', 'TAMIL NADU', '4452144000', '4452144100', 'tpch@theparkhotels.com', 'NA', '5 Star Deluxe', 214, 'large', 13.02599000, 80.23148000, ''),
(127, 'Vivanta by Taj - Fishermans Cove', '\"Covelong Beach, Kanchipuram Dist. - 603112, TAMIL NADU\"', 'TAMIL NADU', '044-67413333', '044-67413330', 'vivanta.fishcove@tajhotels.com', 'www.vivantabytaj.com', '5 Star Deluxe', 88, 'medium', 12.79897000, 80.24269000, ''),
(128, 'Taj Coromandel', '\"37Mahatma Gandhi Salai, Nungambakkam, Chennai - 600 034, TAMIL NADU\"', 'TAMIL NADU', '044-66002827', '044-66002089', 'coromandel.chennai@tajhotels.com', 'www.tajhotels.com', '5 Star Deluxe', 205, 'large', 13.06281000, 80.24444000, ''),
(129, 'Le Royal Meridien Chennai', '\"(Owned by Appu Hotels Limited)No. 1, G.S.T. Road, St. Thomas Mount, Chennai - 600 016, TAMIL NADU\"', 'TAMIL NADU', '044-22314343, 435345', '044-22314344', 'reservation@leroyalmeridien-chennai.com', 'NA', '5 Star Deluxe', 240, 'large', 13.00619000, 80.20359000, ''),
(130, 'ITC The Mughal', '\"Fatehabad RoadTajganj, Agra - 282 001, UTTAR PRADESH\"', 'UTTAR PRADESH', '0562-4021700', '0562-2331730', 'reservations.itcmughal@itchotels.in', 'www.itchotels.in', '5 Star Deluxe', 233, 'large', 27.17176000, 78.03082000, ''),
(131, 'Jaypee Greens Golf & Spa Resort', '\"A division of Jaiprakash Associates Ltd. G-Block, Surajpur Kasna Road Gautam Budh Nagar, Greater Noida, UTTAR PRADESH\"', 'UTTAR PRADESH', '1206743000', '1202324720', 'reservation.jggr@jaypeehotels.com', 'NA', '5 Star Deluxe', 170, 'large', 28.46360000, 77.51349990, ''),
(132, 'Vivanta by Taj ', '\"Vipin Khand Gomti Nagar , Lucknow , UTTAR PRADESH\"', 'UTTAR PRADESH', '522671100', '522671166', 'residency.lucknow@tajhotels.com', 'NA', '5 Star Deluxe', 110, 'large', 26.84997000, 80.97256000, ''),
(133, 'Taj Ganges Varanasi', '\"Nadesar Palace GraoundsNadesar, Varanasi - 221002, UTTAR PRADESH\"', 'UTTAR PRADESH', '0542-2503001/019', '0542-2501343', 'ganges.varanasi@tajhotels.com', 'www.tajhotels.com', '5 Star Deluxe', 130, 'large', 25.33669000, 82.98688000, ''),
(134, 'Radisson Hotel', '\"Taj East Gate Road, Agra - 282 001, UTTAR PRADESH\"', 'UTTAR PRADESH', '0562-4055555', '0562-4055556', 'reservations@rdagra.in', 'www.radisson.com', '5 Star Deluxe', 140, 'large', 27.16279000, 78.05798000, ''),
(135, 'Radisson MBD Hotel', '\"Plot No. L-2Sector - 18, Noida - 201 301, UTTAR PRADESH\"', 'UTTAR PRADESH', '0120-4300000', '0120-4303000', 'reservations@radissonmbd.com', 'www.radissonblu.com', '5 Star Deluxe', 126, 'large', 28.56878000, 77.32241990, ''),
(136, 'Holiday Regency', '\"Holiday Regency (A Unit of Omsons Holiday Inn Pvt. ltd)Om Enclave, (KM, Delhi Road , NH-24, Moradabad, UTTAR PRADESH\"', 'UTTAR PRADESH', '591301235', '5913012375', 'info@holidayregency.com', 'holidayregency.com', '5 Star Deluxe', 74, 'medium', 15.56672000, 73.75322000, ''),
(137, 'Jaypee Residency Manor', '\"Barlowganj, Mussoorie, UTTARAKHAND\"', 'UTTARAKHAND', '1352631800', '1352631022', 'jrm@jaypeehotels.com', 'NA', '5 Star Deluxe', 90, 'medium', 30.43789000, 78.08656000, ''),
(138, 'ITC Sonar', '\"1, JBS Haldane AvenueOpp. Science City, Kolkata-700046, WEST BENGAL\"', 'WEST BENGAL', '033-23004516', '033-23004500', 'reservations.itcsonar@itchotels.in', 'NA', '5 Star Deluxe', 239, 'large', 22.54099000, 88.38325000, ''),
(139, 'Hotel Ista Hyderabad', '\"Plot No-7, Road No. 2I.T. Park, Nanakramguda, Gachibowali, Hyderabad - 500019, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '040-44508888', '040-44509999', 'sales@istahyderabad.com', 'www.anandaspa.com', '5 Star', 157, 'large', 17.35040000, 78.53019990, ''),
(140, 'Hotel Novotel Hyderabad', '\"Novoel & HIVV Complex, Near Hitech City , P.O Bag No-1101, Cyberabad Post Office, Hyderabad, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '4066824422', '4066844422', 'H6182-re@accor.com', 'NA', '5 Star', 288, 'large', 17.45097000, 78.38030000, ''),
(141, 'Novotel Hyderabad Airport ', '\"GMR Hyderabad International Airport Ltd., Rajiv Gandhi International Airport Shamshabad, Ranga Reddy Dist , ANDHRA PRADESH\"', 'ANDHRA PRADESH', '4066250000', '4066250001', 'reservations@novotelhyderabadairport.com', 'NA', '5 Star', 305, 'large', 17.24428000, 78.40543000, ''),
(142, 'The Gateway Hotel ', '\"Beach Road, Visakhapatnam , ANDHRA PRADESH\"', 'ANDHRA PRADESH', '8916623670', '8912569867', 'gateway.visakhapatnam@tajhotels.com', 'NA', '5 Star', 95, 'medium', 17.71434000, 83.32341000, ''),
(143, 'Taj Deccan - Hyderabad', '\"Road No.1Banjara Hills, Hyderabad - 34, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '4066662323', '4066661313', 'tdhgm.hyd@tajhotels.com', 'NA', '5 Star', 151, 'large', 17.41139000, 78.45023990, ''),
(144, 'Leo Meridian Infrastructure', '\"Bommaraspet (Village)Shamirpet Mandal, Ranga Reddy District, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '4066404455', '4066627744', 'info@lmiphl.com', 'www.lmiphl.com', '5 Star', 88, 'medium', 23.05223600, 72.68098300, ''),
(145, 'Hotel Mountview', '\"Sector 10, Chandigarh, CHANDIGARH\"', 'CHANDIGARH', '1724671111', '1722742220', 'mountview@citcochandigarh.com', 'NA', '5 Star', 155, 'large', 30.75259000, 76.78799000, ''),
(146, 'Hotel Crowne Plaza Today', '\"Plot No. 1Community Centre, Phase 1, Okhla, New Delhi - 110 020, DELHI\"', 'DELHI', '011-40687700-17', '011-41634480', 'reservations@cpokhla.com', 'www.crowneplaza.com', '5 Star', 208, 'large', 28.53249000, 77.27838000, ''),
(147, 'Vivanta by Taj Ambassador', '\"Sujan Singh ParkCornwallis Road, New Delhi - 110003, DELHI\"', 'DELHI', '011-66261000', '011-24632252', 'vivanta.ambassador@tajhotels.com', 'www.vivantabytaj.com', '5 Star', 88, 'medium', 28.60126000, 77.22954000, ''),
(148, 'Fortune Select Regina ', '\"376, Off. Fort Aquada Road , Candolim , GOA\"', 'GOA', '8323988444', '', 'velu@acronindia.com', '', '5 Star', 102, 'large', 15.51350000, 73.76881000, ''),
(149, 'Bogmallo Beach Resort', '\"P.O. Bogmallo, Goa - 403806, GOA\"', 'GOA', '0832-2538222-13', '0832-2538236', 'bbrtwhl@sancharnet.in', 'www.bogmallobeachresort.com', '5 Star', 126, 'large', 15.37160000, 73.84594000, ''),
(150, 'DEVAAYA AYURVEDA SPA RESORT ', '\"DIWAR, ILHAS ,GOA , GOA\"', 'GOA', '83222280500', '8322280678', 'www.alconvictorgroup.com', 'NA', '5 Star', 57, 'medium', 15.53910000, 73.90848000, ''),
(151, 'Holiday Inn Resort', '\"Mobor Beach Cavelossim Salcete,Goa, GOA\"', 'GOA', '8322871303', '8322871333', 'NA', 'NA', '5 Star', 203, 'large', 15.36411000, 73.94610000, ''),
(152, 'The Crown Goa', '\"(A unit of Vision Enterprises) Bairo Alto Dos Pilotos, Goa, GOA\"', 'GOA', '8322400000', '8322400010', 'reservations@thecrowngoa.com', 'NA', '5 Star', 43, 'small', 15.49540900, 73.82116000, ''),
(153, 'Hotel Neo Majestic', '\"Plot No. 104/1APorvorim, North Goa, GOA\"', 'GOA', '0832 2410378', '0832 2415715', 'neomajestic@neomajestic.com', 'www.neomajestic.com', '5 Star', 50, 'small', 15.51655370, 73.83286080, ''),
(154, 'The Kenilworth Beach Resort & Spa', '\"Utorda, Salcete - 403 713, GOA\"', 'GOA', '0832-6698888', '0832-2754183', 'kenilworthgoa@kenilworthhotels.com', 'www.kenilworthhotels.com', '5 Star', 104, 'large', 15.21071000, 73.98939000, ''),
(155, 'Hotel La Calypso Get Aways.', '\"Saunta Vaddo, Baga Calangute Road, Calanguta VPBardez Goa, GOA\"', 'GOA', '8322275777', '8322275815', 'reservations@lacalypsohotels.com', 'www.lacalypsohotels.com', '5 Star', 14, 'small', 15.53700000, 73.76425000, ''),
(156, 'The \"O\"', '\"S. No. 114/1Next to Kingfisher Villa, Condolim, Bardez - 403515, GOA\"', 'GOA', '8323047000', '8323047009', 'info@ohotelsindia.com/res.goa@ohotelsindia.com', 'NA', '5 Star', 75, 'medium', 15.51216000, 73.77548000, ''),
(157, 'Sun-n-Sand Hotel', '\"Bairo Alto Dos PilotosJose Falcao Road, Panjim, GOA\"', 'GOA', '8322400000', '8322400010', 'resgoa@sunnsandhotel.com', 'NA', '5 Star', 43, 'small', 15.45844000, 73.80566000, ''),
(158, 'The Imperial Palace ', '\"Dr Yagnik Road , Rajkot , GUJARAT\"', 'GUJARAT', '2812480000', '2812480009', 'mail@hotelimperialpalace.biz', 'NA', '5 Star', 80, 'medium', 22.29275000, 70.79176000, ''),
(159, 'Le Meridien', '\"C/o. Associated Hotels Pvt. Ltd. Chand Suraj Estate Near Nehru Bridge, Khanpur, Ahmedabad, GUJARAT\"', 'GUJARAT', '7925505505', '7925505501', 'gmoffice.ahmedabad@lemeridien.com', 'NA', '5 Star', 63, 'medium', 18.52999245, 73.87135441, ''),
(160, 'The Gateway Hotel Ummed', '\"International Airport CircleNext to Army Cantonment, Hansol, Ahmedabad - 382 475, GUJARAT\"', 'GUJARAT', '079-66661234', '079-66664444', 'gateway.ahmedabad@tajhotels.com', 'www.thegatewayhotels.com', '5 Star', 91, 'medium', 23.08157000, 72.61658000, ''),
(161, 'The Galaxy Hotel', '\"NH-8Sector-15, Part-II, Gurgaon - 122001, HARYANA\"', 'HARYANA', '0124-4565000', '0124-4565151', 'info@galaxyhotel.in', 'www.galaxyhotel.in', '5 Star', 80, 'medium', 28.46016000, 77.04971990, ''),
(162, 'THE CHANCERY PAVILION', '\"ELIXIR ENTERPRISES & HOTELS PVT LTD., NO-135, RESIDENCY ROAD, BANGALORE, KARNATAKA\"', 'KARNATAKA', '8041414141', '8041414242', 'gm@chanceryhotels.com', 'NA', '5 Star', 170, 'large', 12.96564000, 77.59778000, ''),
(163, 'The Zuri - Whitefield', '\"Rajpalya Hoodi - RoadWhitefield, Bengaluru - 560048, KARNATAKA\"', 'KARNATAKA', '8066657272', '8066657282', 'reservations@zuribangalore.com', 'www.thezurihotels.com', '5 Star', 162, 'large', 12.99623000, 77.69935000, ''),
(164, 'Fortune Park J. P. Palace', '\"No.-3 Abba RoadNazarabad Mohalla, Mysore, KARNATAKA\"', 'KARNATAKA', '8213988444', '8213984444', 'rahul.nama@fortunehotels.in', 'NA', '5 Star', 108, 'large', 12.31874000, 76.66235000, ''),
(165, 'Hotel Le Meridien - Bangalore', '\"No. 28, Sankey RoadP.B. No. 174, Bangalore - 560052, KARNATAKA\"', 'KARNATAKA', '080-22262233/2228282', '080-22267676/2226205', 'reservations.bangalore@lemeridien.com/leme.bangalore@lemeridien.com', 'www.lemeridien-bangalore.com', '5 Star', 195, 'large', 12.98979000, 77.58590000, ''),
(166, 'Movenpick Hotel & Spa Bangalore', '\"115 Pipeline Road near BEL CircleGokula Extension, Bangalore, KARNATAKA\"', 'KARNATAKA', '8043001000', '8043001010', 'hotel.bangalore@moevenpick.com', 'moevenpick-hotel.com', '5 Star', 262, 'large', 12.98523000, 77.47812000, ''),
(167, 'Club Mahindra Lakeview', '\"Munner, Chinnakanal VillageVia: Suryanelli, Idukki District - 685618, KERALA\"', ' KERALA', '04868-249290-91', '04868-249227', 'gm.munnar@clubmahindra.com', 'www.clubmahindra.com', '5 Star', 38, 'small', 10.04149000, 77.17578000, ''),
(168, 'The Quilon Beach Hotel', '\"Beach Kollam-691001, Kollam, KERALA\"', ' KERALA', '4742769999', '4742749009', 'crs@qresorts.in', 'NA', '5 Star', 95, 'medium', 8.88690000, 76.59228000, ''),
(169, 'The Elephant Court', '\"Off Kumily - Thekkady RoadThekkady P.O., Kumily - 685 536, Idukki District, KERALA\"', ' KERALA', '04869-224696,224697,', '04869-224238', 'info@theelephantcourt.com', 'www.theelephantcourt.com', '5 Star', 64, 'medium', 9.60574000, 77.16721000, ''),
(170, 'Turtle On The Beach', '\"VPI/43ITDC Road, Kovalam, Trivandrum - 685 527, KERALA\"', ' KERALA', '0471-2514000', '0471-2514001', 'info.turtle@thrhotels.com', 'www.turtleonthebeach.com', '5 Star', 44, 'small', 8.39844000, 76.98195000, ''),
(171, 'Casino Hotel', '\"Willingdon Island, Cochin - 682 003, KERALA\"', ' KERALA', '0484-2668421-2666821', '0484-2668001', 'casinohotel@cghearth.com', 'www.cghearth.com', '5 Star', 67, 'medium', 9.94417000, 76.28357000, ''),
(172, 'Trident, Cochin', '\"Bristow RoadWillingdon Island, Cochin - 682003, KERALA\"', ' KERALA', '4843081000', '4843081002', 'reservations@tridenthotels.com', 'www.tridenthotels.com', '5 Star', 85, 'medium', 9.95927000, 76.26862000, ''),
(173, 'The Gateway Hotel -Ernakulam', '\"Marine DriveErnakulam, Kochi - 682 011, KERALA\"', ' KERALA', '0484-2371471, 667330', '0484-2371481, 667344', 'gateway.ernakulam@tajhotels.com', 'www.thegatewayhotels.com', '5 Star', 108, 'large', 9.97413000, 76.27774000, ''),
(174, 'Kadavu Resort & Ayurveda Centre', '\"NH-17, Calicut Bye Pass Road, Azhijilam P.O., near Feroke CollegeCalicut - 673632, (A Division of Yenkay complex Pvt. Ltd.), KERALA\"', ' KERALA', '0483-2830023,027,570', '0483-2830575', 'info@kadavuresorts.com', 'www.kadavuresorts.com', '5 Star', 72, 'medium', 11.18640000, 75.83206000, ''),
(175, 'The Muthoot Plaza Hotel', '\"Punnen Road, Thiruvananthapuram - 695039, KERALA\"', ' KERALA', '0471-2337733', '0471-2337734', 'gmtmp@sarovarhotels.com', 'www.sarovarhotels.com', '5 Star', 57, 'medium', 8.49966000, 76.95165000, ''),
(176, 'Taj Residency - Trivandrum', '\"T.C. No. 24/1987 (2)C.V. Raman Pillai Road, Thyeaud, Thiruvananthapuram - 695014, KERALA\"', ' KERALA', '0471-6612345', '0471-6612121', 'taj.trivandrum@tajhotels.com', 'www.tajhotels.com', '5 Star', 137, 'large', 8.49692000, 76.95779000, ''),
(177, 'Hotel Ramada -  Khajuraho', '\"(Owned By Jagdish Shanti Hotel Pvt. Ltd.)Airport Road, Khajuraho - 471606, MADHYA PRADESH\"', 'MADHYA PRADESH', '07686-272302-03', '07686-272304', 'reservations@ramadahotelkhajuraho.com', 'www.ramadahotelkhajuraho.com', '5 Star', 82, 'medium', 24.84748000, 79.91932000, ''),
(178, 'Radisson Jass Hotel', '\"By Pass RoadKhajuraho, Dist Chattarpur, MADHYA PRADESH\"', 'MADHYA PRADESH', '07686272344/274461', '7686272345', 'reservations@radissionkhajuraho.com', 'www.radisson.com', '5 Star', 90, 'medium', 24.86116000, 79.92628000, ''),
(179, 'Grand Sarovar Premiere', '\"Junction of Veer Savarkar Flyover &S.V. Road, Goregaon (West)-400062, MAHARASHTRA\"', 'MAHARASHTRA', '0224215 8000/2871 80', '0222871 8001', 'gm@grandsarovar.com/gsp@sarovarhotels.com', 'www.grandsarovar.com', '5 Star', 98, 'medium', 19.17327000, 72.84515000, ''),
(180, 'Hotel Meluha', '\"Building 7, Sector-V, Central Avenue Hiranandani Gardens Powai, Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2225755555', '2225755566', 'sam@meluhafernhotel.com', 'NA', '5 Star', 141, 'large', 19.11554000, 72.90826000, ''),
(181, 'Hotel Tunga Regency Pvt.Ltd. ', '\"PLOT NO-37, SECTOR 30-A, VASHI , NAVI MUMBAI , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2266801818', '2266801800', 'www.tungahotels.com', 'NA', '5 Star', 92, 'medium', 19.06890000, 72.99517000, ''),
(182, 'Ramada Plaza Palm Grove', '\"Juhu Beach, Mumbai - 400049, MAHARASHTRA\"', 'MAHARASHTRA', '022-26112323', '022-26113682/2611064', 'palmgrove@krahejahospitality.com', 'www.ramadainternational.com', '5 Star', 115, 'large', 19.09153000, 72.82881000, ''),
(183, 'The Shalimar Hotel ', '\"August Kranti Marg , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2266641000', '2266641010', 'theshalimarhotel@vsnl.com', 'www.theshalimarhotel.com', '5 Star', 65, 'medium', 18.96440000, 72.80595000, ''),
(184, 'THE PRIDE HOTEL ', '\"OPP. AIRPORT WARDHA ROAD , Nagpur , MAHARASHTRA\"', 'MAHARASHTRA', '7122291102', '7122290440', 'PRIDE_NGP@SANCHARNET.COM', 'WWW.PRIDEGROUP.NET', '5 Star', 93, 'medium', 21.13676000, 79.07893000, ''),
(185, 'Four Points By Sheraton', '\"S.No.197/3, Nagar Road,Viman Nagar, Pune, MAHARASHTRA\"', 'MAHARASHTRA', '2039406699', '2030930930', 'fo@punefourpoints.com', 'NA', '5 Star', 246, 'large', 18.50585990, 73.84456000, ''),
(186, 'Taj Blue Diamond', '\"11Koregaon Road, Pune - 411001, MAHARASHTRA\"', 'MAHARASHTRA', '020-66025555', '020-66027755', 'sandip.mukherjee@tajhotels.com', 'www.tajhotels.com', '5 Star', 110, 'large', 18.54111000, 73.89100000, ''),
(187, 'The O Hotel', '\"Survey No.371Final Plot No.293, Koregaon, Pune - 411001, MAHARASHTRA\"', 'MAHARASHTRA', '020-40011000', '020-40011009', 'info@ohotelsindia.com', 'www.ohotelsindia.com', '5 Star', 111, 'large', 18.52371000, 73.88319000, ''),
(188, 'Taj Residency - Aurangabad', '\"8-N-12CIDCO RAUZA BAGH, Aurangabad, MAHARASHTRA\"', 'MAHARASHTRA', '2406613737', '2406613939', 'residency.aurangabad@tajhotels.com', 'NA', '5 Star', 64, 'medium', 19.90389000, 75.34840000, ''),
(189, 'Hotel Sea Princess ', '\"969 Juhu Beach , Mumbai , MAHARASHTRA\"', 'MAHARASHTRA', '2226611111', '2226611144', 'seaprincess@vsnl.com', 'NA', '5 Star', 108, 'large', 19.09153000, 72.82881000, ''),
(190, 'The Gateway Hotel', '\"P-17, MIDC Ambad MumbaiMumbai - Agra Road, Nashik, MAHARASHTRA\"', 'MAHARASHTRA', '2535604499', '2535603366', 'residency.nashik@tajhotels.com', 'tajhotels.com', '5 Star', 70, 'medium', 19.95540000, 73.75128000, ''),
(191, 'Hotel Parc Estique', '\"Viman NagarNagar Road, Pune - 411014, MAHARASHTRA\"', 'MAHARASHTRA', '2041004100', '2041004111', 'cmd@parcestique.com/info@parcestique.com', 'www.estiquehotels.com', '5 Star', 116, 'large', 18.56798000, 73.91868000, ''),
(192, 'Radisson Windsor Hotel ', '\"Windsor Fountain G.T. Road, Near BMC Chowk , Jalandhar , PUNJAB\"', 'PUNJAB', '1814671234', '815082233', 'radjal@vsnl.com', 'NA', '5 Star', 62, 'medium', 22.54511200, 88.32899200, ''),
(193, 'Majestic Park Plaza ', '\"P.O. BOX NO 333 BHAI BALA CHOWK, FEROZEPUR ROAD. , Ludhiana , PUNJAB\"', 'PUNJAB', '1612773000', '1612771888', 'www.fhraI.com', 'NA', '5 Star', 117, 'large', 30.90225000, 75.83195000, ''),
(194, 'Hotel Mansingh', '\"Sansar Chandra Road, Jaipur, RAJASTHAN\"', 'RAJASTHAN', '01412378771, 511, 77', '1412377582', 'sales.jpr@mansinghhotels.com', 'NA', '5 Star', 95, 'medium', 26.92346000, 75.80592000, ''),
(195, 'Hotel Trident, Jaipur', '\"Amber Fort RoadOpp. Jal Mahal, Jaipur, RAJASTHAN\"', 'RAJASTHAN', '0141-2670101', '0141-2670303', 'reservations@tridenthotels.com', 'www.tridenthotels.com', '5 Star', 134, 'large', 27.12363000, 75.73217000, ''),
(196, 'Fortune Select Metropolitan - Jaipur', '\"Fortune Select Metropolitan, Nehru Sahkar Bhawan,C-Scheme, Bias Godam Circle, Jaipur, RAJASTHAN\"', 'RAJASTHAN', '911413099010', '911413099099', 'metropolitan@fortunehotels.in', 'NA', '5 Star', 90, 'medium', 26.91005000, 75.80677000, ''),
(197, 'Chokhi Dhani', '\"The Ethntic Village Resort12 Miles, Via Vatika, Tonk Road, Jaipur - 303905, RAJASTHAN\"', 'RAJASTHAN', '0141-2770555-56', '0141-2770558', 'resort@chokhidhani.com', 'www.chokhidhani.com', '5 Star', 97, 'medium', 26.74071000, 75.86309000, ''),
(198, 'Inder Residency', '\"(A Unit of Seasons Hotels Pvt. Ltd.)Goverdhan Vilas, Shikarbadi Road, Ekling Nagar, Udaipur - 313 001, RAJASTHAN\"', 'RAJASTHAN', '0294-2489888', '0294-2488733', 'seasonshotel@gmail.com', 'www.inderresidency.in', '5 Star', 144, 'large', 24.64698000, 73.70781000, ''),
(199, 'Denzong Regency', '\"Cherry Banks,Development Area, Gangtok, SIKKIM\"', 'SIKKIM', '3592201565', '35922012568', 'welcomheritage_denzongregency@hotmail.com', 'denzongregency.com', '5 Star', 25, 'small', 27.33153000, 88.61397000, ''),
(200, 'The Gateway Hotel Pasumalai Madurai', '\"(formerly known as Taj Garden Retreat Madurai)40 T.P.K. Road, Pasumalai, Madurai - 625 004, TAMIL NADU\"', 'TAMIL NADU', '0452-6633000', '0452-6633081', 'gateway.madurai@tajhotels.com', 'www.thegatewayhotels.com', '5 Star', 63, 'medium', 9.89369000, 78.07954000, ''),
(201, 'Radisson Hotel GRT', '\"G S T Road St Thomas Mount Chennai, Chennai, TAMIL NADU\"', 'TAMIL NADU', '4422310101', '4422310202', 'reservations@radissongrt.com', 'NA', '5 Star', 101, 'large', 13.00023000, 80.19458000, ''),
(202, 'Trident - Chennai', '\"1/24, GST RoadMeenambakkam, TAMIL NADU\"', 'TAMIL NADU', '044-22344747', '044-22346699', 'reservations@tridenthotels.com', 'www.tridenthotels.com', '5 Star', 167, 'large', 12.98685000, 80.17509000, '');
INSERT INTO `info_hotels` (`ID`, `HOTEL NAME`, `ADDRESS`, `STATE`, `PHONE`, `FAX`, `EMAIL`, `WEBSITE`, `TYPE`, `Rooms`, `Size`, `Latitude`, `Longitude`, `API KEY`) VALUES
(203, 'Hotel Clarks Shiraz', '\"54Taj Road, Agra - 282001, UTTAR PRADESH\"', 'UTTAR PRADESH', '0562-2226121-27', '0562-2226128', 'info@hotelclarksshiraz.com/resv@hotelclarks.in', 'www.hotelclarksshiraz.com', '5 Star', 237, 'large', 27.15848710, 78.02486110, ''),
(204, 'Hotel Trident - Agra', '\"Fatehabad Road, Agra, UTTAR PRADESH\"', 'UTTAR PRADESH', '5622235000', '5622231812', 'reservations@tridenthotels.com', 'NA', '5 Star', 138, 'large', 27.15835000, 78.05700000, ''),
(205, 'Country Inn & Suites by Carlson.', '\"64/6, Site - IVSahibabad, (Distt. Ghaziabad) - 201 010, UTTAR PRADESH\"', 'UTTAR PRADESH', '0120-4180000', '0120-4180088', 'info@cissahibabad.in', 'www.countryinns.com', '5 Star', 216, 'large', 28.65953000, 77.34763000, ''),
(206, 'Radisson Hotel Varanasi', '\"The Mall Cantonment, Varanasi Uttar Pradesh, Varanasi, UTTAR PRADESH\"', 'UTTAR PRADESH', '5422501515', '5422501516', 'reservations@radissonvns.com', 'NA', '5 Star', 116, 'large', 25.28811000, 82.92573000, ''),
(207, 'The Gateway Hotel, Agra', '\"Taj GanjFatehabad Road, Agra - 282001, UTTAR PRADESH\"', 'UTTAR PRADESH', '5626602000', '5622232420', 'tajview.agra@tajhotels.com/gateway.agra@tajhotels.com', 'www.tajhotels.com', '5 Star', 100, 'medium', 27.16862000, 78.04223000, ''),
(208, 'Hotel Hindusthan International', '\"235/1A.J.C. Bose Road, Kolkata - 700020, WEST BENGAL\"', 'WEST BENGAL', '033-40018000-4001808', '033-22800111', 'reservation@hindusthan.com', 'www.hhihotels.com', '5 Star', 184, 'large', 22.54136000, 88.35109000, ''),
(209, 'Swissotel Kolkata Neotia Vista', '\"M/s Swissotel Kolkata Neotia Vista City Center New Town Action Area 2/DPlot No. 11/5 New Town Rajarhat, Kolkata, WEST BENGAL\"', 'WEST BENGAL', '913366266666', '', 'subrata.sarkar@swissotel.com', 'www.swissotel.com', '5 Star', 147, 'large', 22.57265000, 88.36389000, ''),
(210, 'The Golkonda', '\"(A Unit of Golkonda Hospitality Services & REsorts Ltd.) 10-1-124Masab Tank, Hyderabad, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '8246660420', '8246660585', 'gateway.mangalore@tajhotels.com', 'NA', '4 Star', 94, 'medium', 17.38732940, 78.40573360, ''),
(211, 'Palm Beach Hotel', '\"Beach Road, Visakhapatnam - 530 023, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '0891-2754026/27', '0891-2731036', 'info@palmbeachhotel.in', 'www.palmbeachhotel.in', '4 Star', 44, 'small', 17.71434000, 83.32341000, ''),
(212, 'QUALITY INN DV MANOR', '\"40-1-47, M.G.ROADVENKATESHWARA PURAM, Vijayawada, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '866474455', '866483170', 'info@hoteldvmanor.com', 'NA', '4 Star', 115, 'large', 16.47309000, 80.71533000, ''),
(213, 'Best Western Amrutha Castle', '\"5-9-16, SaifabadOpp. Secretariat, Hyderabad - 500063, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '040-66633888', '040-66828222', 'info@bestwesternamruthacastle.com', 'www.bestwesternamruthacastle.com', '4 Star', 90, 'medium', 17.40774000, 78.46959000, ''),
(214, 'Hotel Green Park', '\"(A Division of Diana Hotels Ltd.)7-1-26, Greenlands, Begumpet, Hyderabad - 500016, ANDHRA PRADESH\"', 'ANDHRA PRADESH', '040-66515151', '4023757677', 'hyd@hotelgreenpark.com', 'hotelgreenpark.com', '4 Star', 149, 'large', 10.24117210, 77.48774010, ''),
(215, 'Hotel Raj Mahal', '\"A.T. RoadPaltan Bazar, Guwahati - 781001, ASSAM\"', 'ASSAM', '0361-2549141', '0361-2639282', 'info@hotelrajmahal.in/hotelrajmahal@vsnl.net', 'www.hotelrajmahal.in', '4 Star', 71, 'medium', 8.48304470, 76.93866520, ''),
(216, 'Hotel Natraj', '\"H.S. Road, Dibrugarh - 786001, ASSAM\"', 'ASSAM', '0373-2327275', '0373-2321375', 'hotelnatraj09@gmail.com', 'NA', '4 Star', 20, 'small', 21.64047555, 69.60793234, ''),
(217, 'Hotel The Royal Plaza', '\"(A Unit of Hotel Queen Road Pvt. Ltd.)19, Ashoka Road, New Delhi-110001, DELHI\"', 'DELHI', '1143555555', '1143555556', 'reservations@hoteltheroyalplaza.com/info@hoteltheroyalplaza.com', 'www.hoteltheroyalplaza.com', '4 Star', 419, 'large', 17.39029560, 78.46444850, ''),
(218, 'Hotel City Park', '\"3/4, K/P BLOCK PITAMPURA, New Delhi, DELHI\"', 'DELHI', '1125468230', '1127310110', 'hotelcitypark@vsnl.net', 'NA', '4 Star', 58, 'medium', 26.18133840, 91.74117590, ''),
(219, 'Hotel Diplomat', '\"9, Sardar Patel MargDiplomatic Enclave, New Delhi, DELHI\"', 'DELHI', '1123010204', '1123018605', '', 'NA', '4 Star', 25, 'small', 12.99508880, 77.59201180, ''),
(220, 'Maidens Hotel', '\"7Sham Nath Marg, New Delhi - 110054, DELHI\"', 'DELHI', '011-23975464', '011-23980771', 'reservations@oberoigroup.com', 'www.maidenshotel.com', '4 Star', 55, 'medium', 28.67439460, 77.22611540, ''),
(221, 'The Connaught', '\"37Shaheed Bhagat Singh Marg, New Delhi - 110001, DELHI\"', 'DELHI', '011-23364225', '011-23340757', 'theconnaughtnewdelhi@yahoo.com', 'www.theconnaughtnewdelhi.com', '4 Star', 79, 'medium', 17.94800920, 73.67114510, ''),
(222, 'Hotel Vikram', '\"Ring Road, Lajpat Nagar, New Delhi, DELHI\"', 'DELHI', '1146515151', '1146515152', 'info@hotelvikram.com', 'NA', '4 Star', 68, 'medium', 12.32473840, 76.63211220, ''),
(223, 'Lazylagoon Sarovar Portico Suites', '\"(Unit of Aqua Resorts & Spa Pvt. Ltd.)Baga - Arpora, Bardez - 403518, GOA\"', 'GOA', '0832-2281520', '0832-2281527', 'gmgpo@sarovarhotels.com', 'www.sarovarhotels.com', '4 Star', 39, 'small', 15.42538000, 73.98300000, ''),
(224, 'Sun Village Resort', '\"SaquawadiBaga-Arpora Bardez, GOA\"', 'GOA', '8322279409', '8322279415', 'sun-village@desouzahotels.com', 'NA', '4 Star', 135, 'large', 15.57178600, 73.75886200, ''),
(225, 'WHISPERING PALMS BEACH RESORT', '\"SINQUERIM BEACH, WADDICANDOLIM, BARDEZ-GOA, GOA\"', 'GOA', '4712485766', '4712481578', 'info@whisperingpalms.com', 'NA', '4 Star', 197, 'large', 15.50286000, 73.76839000, ''),
(226, 'The Metropole Hotel', '\"(Unit of Majestic Projects Pvt. Ltd.)Near R.T.O. Circle, Subhash Bridge Corner, Ahmedabad - 380027, \"', 'GUJARAT', '079-30130200', '079-30130208', 'info@themetropolehotel.co.in', 'www.themetropolehotel.co.in', '4 Star', 70, 'medium', 23.06515925, 72.58412656, ''),
(227, 'Hotel Fortune Palace', '\"Near Digjam CircleAirport Road, Jamnagar - 361 008, GUJARAT\"', 'GUJARAT', '0288-2720291', '0288-2720296', 'hotelfortunepalace@yahoo.com', 'www.hotelfortunepalace.in', '4 Star', 45, 'small', 22.46968040, 70.04159060, ''),
(228, 'Fortune Inn Haveli', '\"Plot No. 235,Sector - 11, Gandhinagar, GUJARAT\"', 'GUJARAT', '7939884422', '7939842121', 'haveli@fortunehotels.in', 'www.fortunehotels.in', '4 Star', 84, 'medium', 23.21724560, 72.64913260, ''),
(229, 'Hotel The Grand Bhagwati', '\"Opp. GurudwaraBodakdev, S.G. Highway, Ahmedabad - 380 054, GUJARAT\"', 'GUJARAT', '7926841000', '7926840915', 'info@thegrandbhagwati.com', 'www.thegrandbhagwati.com', '4 Star', 37, 'small', 23.04246200, 72.51440590, ''),
(230, 'Optus Sarovar Premiere Hotel', '\"SCO 43-47Sector - 28, City Centre, Gurgaon - 122002, \"', 'HARYANA', '0124-4887777', '0124-4887788', 'spg@sarovarhotels.com', 'www.sarovarhotels.com', '4 Star', 80, 'medium', 28.46755000, 77.06523000, ''),
(231, 'Park Premier', '\"359-357Sector - 29, Gurgaon - 122 001, HARYANA\"', 'HARYANA', '0124-4604600', '0124-4604666', 'info@parkpremierhotels.com', 'www.parkpremierhotels.com', '4 Star', 94, 'medium', 18.94222800, 72.82729350, ''),
(232, 'The Bella Vista', '\"SM 8, City Centre,Sector 5, Panchkula, HARYANA\"', 'HARYANA', '1725064848', '1725023802', 'sales@bellavista.in', 'NA', '4 Star', 49, 'small', 30.70057085, 76.86113374, ''),
(233, 'Fortune Select Global', '\"2nd Floor, Global ArcadeM.G. Road, Gurgaon, HARYANA\"', 'HARYANA', '0124-4196666', '0124-4062388', 'global@fortunehotels.in', 'www.fortunehotelsin', '4 Star', 83, 'medium', 28.50147000, 77.16488000, ''),
(234, 'Courtyard By Marriott', '\"Plot No. 27 BSector Road, Sushant Lok - 1, Sector - 27, Gurgaon - 122 002, HARYANA\"', 'HARYANA', '0124-4888444', '0124-4888222', 'www.courtyardmarriottgurgaon.com', 'NA', '4 Star', 198, 'large', 13.04106430, 77.61545630, ''),
(235, 'Fortune Park J.P.Celestial', '\"No 5/43, Seshadri RoadNear Race Course Road, Bangalore-09, KARNATAKA\"', 'KARNATAKA', '8040441234', '8041476060', 'jpcelestial@fortunehotels.in', 'www.fortunehotels.in', '4 Star', 130, 'large', 22.57576000, 88.30130000, ''),
(236, 'The Gatwway Hotel - Chikmagalur', '\"KM RoadJyothi Nagar, Chikmagalur - 577102, KARNATAKA\"', 'KARNATAKA', '08262-660660-61', '08262-660666', 'gateway.chikmagalur@tajhotels.com', 'www.thegatewayhotels.com', '4 Star', 29, 'small', 13.32454500, 75.77206000, ''),
(237, 'Raj Residency', '\"Near New bus standAlamipally, Kanhangad, KERALA\"', 'KERALA', '4672208444', '4672217294', 'rajgrouphotels@gmail.com', 'rajgrouphotels.com', '4 Star', 198, 'large', 19.21085285, 72.84122299, ''),
(238, 'Hotel Maurya Rajadhani', '\"Stat GL,Hospital Road Statue, Trivandrum, KERALA\"', 'KERALA', '4712472299', '4712472299', 'maurya@rajadhanihotels.com', 'NA', '4 Star', 39, 'small', 28.52662000, 77.37671000, ''),
(239, 'Keys Hotels', '\"Sy. No. 2863/1Opp. Fire & Rescue Services Housing Board junction, Trivandrum, KERALA\"', 'KERALA', '4713944100', '4713983800', 'reservations.thiruvananthapuram@keyshotels.com', 'keyshotels.com', '4 Star', 101, 'large', 12.87990335, 77.64609911, ''),
(240, 'Hotel Blue Nile', '\"S.N. Park Road, Kannur - 670 001, KERALA\"', 'KERALA', '0497-2760077, 276478', '0497-2768844', 'mail@hotelbluenile.com', 'www.hotelbluenile.com', '4 Star', 39, 'small', 11.87000940, 75.36003420, ''),
(241, 'Hotel Amruthaa International', '\"No. CC 41/2884St. Benedict Road, Ernakulam, Kochi - 682 018, KERALA\"', 'KERALA', '0484-2398222-4192222', '0484-4050551', 'amruthaainternational@gmail.com', 'NA', '4 Star', 26, 'small', 20.93382700, 77.75260600, ''),
(242, 'Fragrant Nature Retreat and Resort Pvt. Ltd.', '\"Building No. CPI/07-20A,Nedungolam P.O., Paravur, Kollam, KERALA\"', 'KERALA', '4742514000', '4742518021', 'enquiries@fragrantnature.com', 'www.fragrantnature.com', '4 Star', 18, 'small', 8.87620000, 76.58960000, ''),
(243, 'Hotel Presidency', '\"Paramara Road Ernakulam Town, Kochi, KERALA\"', 'KERALA', '4842394300', '4842393222', 'presid@vsnl.com', 'NA', '4 Star', 49, 'small', 9.99043320, 76.28529820, ''),
(244, 'Hotel Raj Regency', '\"Chelakkara road,Pazhayannur, Thrissur, KERALA\"', 'KERALA', '4884226877', '4884666977', 'rajregencypnr@gmail.com', 'NA', '4 Star', 10, 'small', 30.88250100, 75.86669100, ''),
(245, 'ATS Residency', '\"Yakkara Branch RoadNear D.P Office, Palakkad, KERALA\"', 'KERALA', '4912537477', '4912523182', 'info@atshotels.com', 'atsresidency.com', '4 Star', 20, 'small', 12.92120300, 77.66409600, ''),
(246, 'The Royale Gardens', '\"Nangiarkulangara P.O.Haripad - Alleppey District, Kerala - 690513, KERALA\"', 'KERALA', '0479-2404000', '0479-2404999', 'info@theroyalegardens.com', 'www.theroyalegardens.com', '4 Star', 34, 'small', 12.89806840, 77.62109752, ''),
(247, 'Hotel Srivatsa Regency', '\"Pittupeedika, Main Road,Koduvayur, Palakkad, KERALA\"', 'KERALA', '4923251119', '4923254119', 'hotelsrivatsaregency@gmail.com', 'www.hotelsrivatsaregency.com', '4 Star', 12, 'small', 12.96592200, 80.19251300, ''),
(248, 'Hotel Hills Park', '\"Kumbazha Road,Pathanamthitta,District, Kerala, KERALA\"', 'KERALA', '4682226262', 'NA', 'hotelhillspark@gmail.com', 'NA', '4 Star', 15, 'small', 30.12969000, 78.32545100, ''),
(249, 'Neelamabari Suite', '\"Villanchira,Thalakkodu P.O.Neriyamangalam, Ernakulam, KERALA\"', 'KERALA', '4852555123', '4852555133', 'infor@neelabarisuite.com', 'neelabarisuite.com', '4 Star', 22, 'small', 17.45595000, 78.37094000, ''),
(250, 'Excalibur Hotels & Resorts', '\"Carithas Junction,MC Road,Thellakon, Kottayam, KERALA\"', 'KERALA', '4812791781', '4812711784', 'hotel.excalibur@gmail.com', 'www.excalibur.in', '4 Star', 20, 'small', 28.63125500, 77.22097700, ''),
(251, 'Raj Residency', '\"Near New bus standAlamipally, Kanhangad, KERALA\"', 'KERALA', '4672208444', '4672217294', 'rajgrouphotels@gmail.com', 'rajgrouphotels.com', '4 Star', 198, 'large', 19.21085285, 72.84122299, ''),
(252, 'Muthoot Cardamom County Resort', '\"Kumily (PO)Thekkady, Idukki (Dist.) - 685536, KERALA\"', 'KERALA', '04869-224501', '04869-222869/222807', 'reservations@muthoothotels.com', 'www.raxacollective.com', '4 Star', 44, 'small', 27.08580000, 80.31400000, ''),
(253, 'Hotel White Dammar International', '\"Pappanamcode, Trivandrum - 695 018, KERALA\"', 'KERALA', '4712496601', '4712496602', 'whitedammar@gmail.com', 'hotelwhitedammar@gmail.com', '4 Star', 12, 'small', 20.93382700, 77.75260600, ''),
(254, 'Hotel SP Grand Days', '\"Panavila JnThycaud P.O., Thiruvananthapuram - 695014, KERALA\"', 'KERALA', '0471-2333344', '0471-2321000', 'mail@spgranddays.com', 'www.spgranddays.com', '4 Star', 69, 'medium', 13.03985400, 80.24504200, ''),
(255, 'Hotel Peninsula Park Residency', '\"Motel and Resorts Pvt. Ltd.Parakode, Adoor, Pathanamthitta Dist., KERALA\"', 'KERALA', '4734243435', '4734243345', 'parkresidency.park@gmail.com', 'NA', '4 Star', 20, 'small', 10.01462200, 76.34216000, ''),
(256, 'Hotel Indraprastha', '\"Pattazhi P.O.Pathanapuram, Kollam Dist.-691522, KERALA\"', 'KERALA', '04752039600,2397888-', '4752397889', 'indraprasthapattazhi@yahoo.com', 'NA', '4 Star', 14, 'small', 18.54614750, 73.13782290, ''),
(257, 'Hotel Mangala Towers', '\"Paliyam RoadNear Bus Stand, Thrissur - 680001, KERALA\"', 'KERALA', '04872327461/2/3', '4872325365', 'mangalatowers@gmail.com', 'www.hotelmangalatowers.com', '4 Star', 24, 'small', 10.52950330, 76.21435800, ''),
(258, 'Hotel Soorya Regency', '\"Calicut By-Pass RoadKavungal, Malappuram - 676505, KERALA\"', 'KERALA', '0483-2735674-76', '0483-2735677', 'sooryaregency@gmail.com', 'www.sooryaregency.com', '4 Star', 13, 'small', 11.30396000, 76.93702800, ''),
(259, 'Hotel Moonlit Regency', '\"4, Lane JunctionVengallor Muvatupuzha Road, Thodupuzha Idukki District-685584, KERALA\"', 'KERALA', '04862-229936/229937', '04862-229938', 'info@moonlitregency.com/hotelmoonlit@ymail.com', 'NA', '4 Star', 22, 'small', 18.95399700, 72.79808400, ''),
(260, 'Hotel Sky Pearl', '\"Chovva, Kannur - 670006, KERALA\"', 'KERALA', '0479-5265060', '0479-2786443', 'hotelskypearl@gmail.com', 'NA', '4 Star', 28, 'small', 11.87012095, 75.40222426, ''),
(261, 'The Royal Fort', '\"Hospital JunctionKundara P.O., Kollam Dist. - 691501, KERALA\"', 'KERALA', '0474-2520001-02-03', '0474-2520004', 'info@theroyalfort.com', 'www.theroyalfort.com', '4 Star', 12, 'small', 17.72312895, 83.30939855, ''),
(262, 'Hotel Soorya Galaxy', '\"(A Unit of Sreebala Divelopers & Hotel Pvt. Ltd.)13/158 A, Calicut Road, Cheruvannur, P.O. Feroke, Calicut - 673731, KERALA\"', 'KERALA', '0495-2485150/2485240', '0495-2455330', 'sooryagalaxy@gmail.com', 'NA', '4 Star', 12, 'small', 11.30396000, 76.93702800, ''),
(263, 'Cochin Seaport Hotel', '\"Thekken MalipuramVypin, Cochin - 682 508, KERALA\"', 'KERALA', '9846032737', '0484-2503757', 'seaporthotels@gmail.com', 'www.cochinseaporthotel.com', '4 Star', 25, 'small', 10.07815100, 77.06300300, ''),
(264, 'The Avenue Regent', '\"39/2026,M.G. Road, Kochi, KERALA\"', 'KERALA', '4842377977', '484237529', 'avenueregent@avenuehotels.in', 'NA', '4 Star', 55, 'medium', 22.75833545, 88.39658964, ''),
(265, 'Spice Village', '\"Thekkady - Kumily Road, Thekkady - 685536, KERALA\"', 'KERALA', '04869-224514', '04869-222317', 'spicevillage@cghearth.com', 'www.cghearth.com', '4 Star', 52, 'medium', 17.46191060, 78.36689390, ''),
(266, 'Hotel Midhila Regency', '\"Midhila Regncy Cherplassery Hotels Pvt.Ltd.Pattambi road, Cherpulassery Palakkad Dist., kerala, KERALA\"', 'KERALA', 'NA', 'NA', 'maltidutta50@yahoo.com', 'NA', '4 Star', 10, 'small', 18.95399700, 72.79808400, ''),
(267, 'Hotel Soorya Swagat', '\"Pudussery EastPalakkad, Walayar, KERALA\"', 'KERALA', '4912863100', '4912863103', 'www.sooryaswagath.in', 'NA', '4 Star', 14, 'small', 24.59162700, 72.71341000, ''),
(268, 'The Hotel Elegance', '\"Karuvanchal POThalimapram, Kannur, KERALA\"', 'KERALA', '4602247400', '460247400', 'maltidutta50@yahoo.com', 'NA', '4 Star', 13, 'small', 9.68264710, 76.60957570, ''),
(269, 'K R Grand Residency', '\"Parayil Market RoadKunnamkulam, Thrissur, KERALA\"', 'KERALA', '4885211563', 'NA', 'maltidutta50@yahoo.com', 'NA', '4 Star', 14, 'small', 19.06170600, 72.83255600, ''),
(270, 'Hotel Dona Castle', '\"(Unit of Sunny Jacob Builders & Developers Pvt. Ltd.)Kottamukku, Kollam, KERALA\"', 'KERALA', '4742766669', '4742760099', 'donacastle@gmail.com', 'www.hoteldonacastle.com', '4 Star', 31, 'small', 31.62901000, 74.88530000, ''),
(271, 'Hotel Fairmont', '\"S.H. Mount,M.C. Road, Kottayam, KERALA\"', 'KERALA', '4812569256', '4812569246', 'info@hotelfairmont.in', 'www.hotelfairmont.in', '4 Star', 30, 'small', 9.60132750, 76.53215760, ''),
(272, 'Hotel Anandha Inn Pvt. Ltd.', '\"NO-154S.V PATEL ROAD, PONDICHERRY, KERALA\"', 'KERALA', '4132233000', '4132331241', 'checkin@anandhainn.com', 'www.anandhainn.com', '4 Star', 70, 'medium', 12.93666900, 77.69060800, ''),
(273, 'Niya Regency', '\"Elthuruth Junction,Chettupuzha P.O., Thrissur, KERALA\"', 'KERALA', '4872363667', '4872363667', 'niyaregency@gmail.com', 'www.niyaregency.com', '4 Star', 20, 'small', 10.51276010, 76.17431790, ''),
(274, 'The South Park', '\"(Unit of Kerala Hotels Pvt. Ltd.)M.G. Road, Trivandrum - 695 034, KERALA\"', 'KERALA', '0471-2333333, 324233', '0471-2331861', 'reservations@thesouthpark.com', 'www.thesouthpark.com', '4 Star', 82, 'medium', 28.39799620, 77.02879815, ''),
(275, 'Uday Samudra Leisure Beach Hotel', '\"G.V.Raja Road,Samudra Beach Kovalam, Trivandrum, KERALA\"', 'KERALA', '1246563228', '1246563174', 'toshali@nde.vsnal.net.in', 'www.toshalinet.com', '4 Star', 50, 'small', 8.48532000, 76.90636000, ''),
(276, 'SEASONS SERVICE APARTMENTS', '\"S. NO-128/2/3/6/7/2/2/128/A1,SANEWADI AUNDH, PUNE, Malad, MAHARASHTRA\"', 'MAHARASHTRA', '2040009999', '2040009888', 'info@seasonsaundh.com', 'NA', '4 Star', 46, 'small', 12.98607420, 77.57811460, ''),
(277, 'HOTEL BAWA INTERNATIONAL', '\"NEHRU ROAD EXTN.NEAR DOMESTIC AIRPORT VILE PARLE (E), Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2226113636', '2226107096', 'mail.bawaintl@vsnl.com', 'NA', '4 Star', 76, 'medium', 19.09654475, 72.85373964, ''),
(278, 'Hotel Courtyard By Marriott', '\"International Airport,CTS No. 215, Andheri Kurla Road, Andheri (East), Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2261479922', '2261479944', 'reservations.mumbai@courtyard.com', 'NA', '4 Star', 282, 'large', 13.04106430, 77.61545630, ''),
(279, 'Hotel Midtown Pritam', '\"DharamputraPritam Estate Dr.Ambedkar Road, Dadar T.T, Mumbai-400014, MAHARASHTRA\"', 'MAHARASHTRA', '022-24145555/6580663', '022-24143388', 'reservations@pritamhotels.com', 'www.pritamhotels.com', '4 Star', 60, 'medium', 19.01697000, 72.84599000, ''),
(280, 'Hotel Trident', '\"C-56, G-Block,Bandra Kurla Complex, Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2266727777', '2266727788', 'reservations@tridenthotels.com', 'tridenthotels.com', '4 Star', 436, 'large', 24.57712990, 73.66912100, ''),
(281, 'Hotel Tunga Regale', '\"Plot No. 31, Phase IIMIDC, Central Road, Andheri (East), Mumbai - 400093, MAHARASHTRA\"', 'MAHARASHTRA', '022-66726672', '022-66726666', 'regale@tungahotels.com', 'www.tungahotels.com', '4 Star', 54, 'medium', 19.12083000, 72.87020000, ''),
(282, 'Ramee Guestline Hotel', '\"Plot No. 3Kohinoor Road, Dadar (East), Mumbai - 400014, MAHARASHTRA\"', 'MAHARASHTRA', '022-24177900/2411565', '022-24127503', 'mumbai.dadar@rameeguestlinehotels.com', 'www.ramee-group.com', '4 Star', 58, 'medium', 19.01709970, 72.84457710, ''),
(283, 'K. Raheja Corp. Pvt. Ltd. \"The Resort\"', '\"11,Aksa Beach,Malad (West), Mumbai - 400 095, MAHARASHTRA\"', 'MAHARASHTRA', '022-28447777', '022-28804444 - 28818', 'resv@theresortmumbai.com/the_resort@vsnl.com', 'NA', '4 Star', 94, 'medium', 22.67098000, 79.14400000, ''),
(284, 'Hotel Sagar Plaza', '\"1Bund Garden Road, Pune - 411001, MAHARASHTRA\"', 'MAHARASHTRA', '020-26205000', '020-26122633', 'reservations@hotelsagarplaza.com/info@hotelsagarplaza.com', 'www.hotelsagarplaza.com', '4 Star', 76, 'medium', 18.52018450, 73.87661070, ''),
(285, 'The Central Park Hotel', '\"Bund Garden RoadNear Council Hall, Pune - 411 001, MAHARASHTRA\"', 'MAHARASHTRA', '022-66641000', '022-66641010', 'reservations@thecentralparkhotel.com', 'www.thecentralparkhotel.com', '4 Star', 74, 'medium', 17.72143535, 83.33651066, ''),
(286, 'Holiday Inn Mumbai International Airport', '\"721/1,721/A,721/B of Mohali VillageAndhri Kurla Road, Sakinaka junction, Mumbai, MAHARASHTRA\"', 'MAHARASHTRA', '2240851800', '2240851828', 'maltidutta50@yahoo.com', 'NA', '4 Star', 225, 'large', 19.10176000, 72.88748000, ''),
(287, 'The Emerald', '\"(Hotel & Executive Apartment)Mumbai Next to Juhu Tara Road, Opp. Hotel Sea Princess, B.R. Chopra\'s Bungalow, Santacruz (West), Mumbai-400049, MAHARASHTRA\"', 'MAHARASHTRA', '022-67144000', '022-67144005', 'info@theemerald.com', 'www.theemerald.com', '4 Star', 56, 'medium', 11.32052180, 76.62470710, ''),
(288, 'Hotel Polo Tower', '\"Oakland RoadPolo Grounds, Shillong - 793001, MEGHALAYA\"', 'MEGHALAYA', '0364-2222341-42', '0364-2220090', 'hptfo@rediffmail.com', 'www.hotelpolotowers.com', '4 Star', 50, 'small', 25.58068200, 91.88682300, ''),
(289, 'M.K.HOTEL', '\"DISTRICT SHOPPING CENTRE,RANJIT AVENUE, Amritsar, PUNJAB\"', 'PUNJAB', '1832504610', '1832507910', 'MKHOTEL123@SANCHARNET.IN', 'www.mkhotel.com', '4 Star', 75, 'medium', 16.51593230, 80.66845150, ''),
(290, 'THE MAYA HOTEL (Maya Inns Ltd.)', '\"JALANDHAR CITYEH-178,CIVIL LINES,NEAR BMC CROSSIN, JALANDHAR CITY-144001, PUNJAB\"', 'PUNJAB', '0181 4688700/22', '1812452301', 'mayajal@mayahotels.in', 'http://www.mayahotels.in', '4 Star', 53, 'medium', 31.31961000, 75.58714000, ''),
(291, 'Hotel Ritz Plaza', '\"45The Mall, Amritsar - 143001, PUNJAB\"', 'PUNJAB', '0183-2562836-39', '0183-2226657', 'ritzhotel@vsnl.com/info@ritzhotel.in', 'www.titzhotel.in', '4 Star', 41, 'small', 31.10389250, 77.17677490, ''),
(292, 'Country In & Suites, Ajmer', '\"Ansal\'s Sushant City, Village Gegalkishangarh-Ajmer Road, Ajmer, RAJASTHAN\"', 'RAJASTHAN', '1456623456', '1456623466', 'maltidutta50@yahoo.com', 'NA', '4 Star', 71, 'medium', 26.45543100, 74.62708300, ''),
(293, 'The Royal Plaza', '\"Shyari - GangtokEast sikkim, Gangtok -737102, SIKKIM\"', 'SIKKIM', '03592-280232', '03592-281112', 'trp@sarovarhotels.com', 'www.theroyalplazahotel.com', '4 Star', 58, 'medium', 28.62168480, 77.21702710, ''),
(294, 'The Residency Towers', '\"Sir Thyagaraya RoadT. Nagar, Chennai - 600 017, TAMIL NADU\"', 'TAMIL NADU', '044-28156363', '044-28156969', 'restowers@vsnl.net', 'www.theresidency.com', '4 Star', 174, 'large', 13.04025390, 80.24372550, ''),
(295, 'Hotel Sangam ', '\"Collectors Office Road , Tiruchirapalli , TAMIL NADU\"', 'TAMIL NADU', '4312414700', '431241779', 'hotelsangam@vsnl.com', 'www.hotelsangam.com', '4 Star', 76, 'medium', 10.77292210, 79.13519870, ''),
(296, 'Quality Inn Sabari', '\"29,Thirumalai Pillai RoadT. Nagar, Chennai, TAMIL NADU\"', 'TAMIL NADU', '4428343030', '4428345868', 'sabariinn@sabarihotels.com', 'NA', '4 Star', 72, 'medium', 13.04833000, 80.23986000, ''),
(297, 'The Savera Hotel', '\"No. 146, Dr. Radhakrishnan SalaiMylapore, Chennai - 600 004, TAMIL NADU\"', 'TAMIL NADU', '044 -28114700', '044 -28113475', 'hotsave@md2.vsnl.net.in', 'www.saverahotel.com', '4 Star', 230, 'large', 15.48673340, 73.81968400, ''),
(298, 'Hotel Raj Park (P) Ltd.', '\"180, T.T.K. Road Alwarpet,Chennai - 600018, TAMIL NADU\"', 'TAMIL NADU', '044-42257777', '044-24990749', 'reservation@rajparkchennai.com', 'www.rajpark.com', '4 Star', 89, 'medium', 22.04873700, 70.79134200, ''),
(299, 'Fortune Inn Grazia', '\"(Unit of Angel Baby Products Pvt. Ltd) Plot NO.1 A, Block - 1Sector - 27 Noida, UTTAR PRADESH\"', 'UTTAR PRADESH', '1203988444', '1203380144', 'gm.roc.nm@royalorchidhotels.com', 'royalorchidhotels.com', '4 Star', 42, 'small', 28.63862000, 77.19543000, ''),
(300, 'Country Inn & Suites by Carlson - Haridwar', '\"( Unit of Sens Udyog Pvt. Ltd.)Haripurkalan, Raiwala, Motichur, Haridwar - Rishikesh Highway, Haridwar, Dist. Dehradun - 249205, UTTARAKHAND\"', 'UTTARAKHAND', '0135-2485900', '0135-2485901', 'reservations@cisharidwar.com', 'NA', '4 Star', 56, 'medium', 31.24827000, 75.61473000, ''),
(301, 'The Peerless Inn', '\"12J. L. Nehru Road, Kolkata - 700 013, WEST BENGAL\"', 'WEST BENGAL', '033-44003900', '033-22281270', 'pik@sarovarhotels.com', 'www.peerlesshotels.com', '4 Star', 122, 'large', 22.56243780, 88.35157125, ''),
(302, 'n', 'a', 's', NULL, NULL, NULL, NULL, 'aa', 100, 'medium', NULL, NULL, 'apikey1'),
(306, 'n', 'a', 's', NULL, NULL, NULL, NULL, 'a', 1, 'small', NULL, NULL, 'w5ofRrLv4W3'),
(307, 'nn', 'a', 's', '123', NULL, NULL, NULL, 'a', 1, 'small', NULL, NULL, 'w5ofRrLv4W3'),
(310, 'nndn', 'a', 's', '123243242343', '123', 'aasadasddgfdh@a.com', 'asdsdsds.com', 'abcasd', 1000, 'large', 1.10000000, 2.20000000, 'w5ofRrLv4W3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservs`
--

CREATE TABLE `reservs` (
  `hotel` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservs`
--

INSERT INTO `reservs` (`hotel`, `total`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserv_hotels`
--

CREATE TABLE `reserv_hotels` (
  `START DATE` date NOT NULL,
  `END DATE` date NOT NULL,
  `STATE` text CHARACTER SET latin1 NOT NULL,
  `id` int(11) NOT NULL,
  `HOTEL ID` int(11) NOT NULL,
  `USER ID` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reserv_hotels`
--

INSERT INTO `reserv_hotels` (`START DATE`, `END DATE`, `STATE`, `id`, `HOTEL ID`, `USER ID`, `updated_at`, `created_at`) VALUES
('2018-10-10', '2018-10-12', 'KERALA', 1, 1, 0, '0000-00-00', '0000-00-00'),
('2018-10-10', '2018-10-12', 'KERALA', 2, 1, 0, '0000-00-00', '0000-00-00'),
('2018-10-10', '2018-10-12', 'KERALA', 3, 1, 0, '0000-00-00', '0000-00-00'),
('2018-10-10', '2018-10-13', 'KERALA', 4, 1, 0, '0000-00-00', '0000-00-00'),
('2018-10-09', '2018-10-11', 'KERALA', 5, 10, 0, '0000-00-00', '0000-00-00'),
('2018-10-11', '2018-10-12', 'GOA', 6, 3, 0, '0000-00-00', '0000-00-00'),
('2018-10-10', '2018-10-12', 'KERALA', 7, 10, 0, '0000-00-00', '0000-00-00'),
('2018-10-09', '2018-10-11', 'KERALA', 8, 10, 0, '0000-00-00', '0000-00-00'),
('2018-10-10', '2018-10-12', 'MADHYA PRADESH', 26, 2, 1, '2018-10-13', '2018-10-13'),
('2018-10-10', '2018-10-12', 'MADHYA PRADESH', 29, 2, 4, '2018-10-13', '2018-10-13'),
('2018-10-10', '2018-10-12', 'GOA', 30, 3, 4, '2018-10-13', '2018-10-13'),
('2018-10-10', '2018-10-12', 'GOA', 31, 3, 4, '2018-10-13', '2018-10-13'),
('2018-10-10', '2018-10-12', 'GOA', 32, 3, 4, '2018-10-13', '2018-10-13'),
('2018-10-10', '2018-10-12', 'KERALA', 44, 1, 11, '2018-10-14', '2018-10-14'),
('2018-10-10', '2018-10-12', 'KERALA', 45, 1, 11, '2018-10-14', '2018-10-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `addr`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'seed', 'seed', 'seed', 'seed', 'seed', '0000-00-00', '0000-00-00'),
(4, 'laura', 'posada', 'cll48b', 'aa@aa.com', '$2y$10$1EvI2aSxnriVzoU1K/FBA.5YazkX8L/APeJA4HFw/yE0/ZtCgSGGG', '2018-10-10', '2018-10-10'),
(6, 'lorena', 'barcelo', 'cll47b', 'ab@aa.com', '$2y$10$MEPPHpVE060eRS9sC9ySv.kv/MffdM4SxThPIfuutrF4uwLN9Kn9m', '2018-10-12', '2018-10-12'),
(7, 'andres', 'morales', 'uninorte', 'abb@ba.com', '$2y$10$bv7u/xAmeLux85xb6GuEM.GA1AgcFJ0WowEZCNsFyBPsfuIUx1GYa', '2018-10-13', '2018-10-13'),
(8, 'seeds', 'seeds', 'seeds', 'seeds', 'seeds', '0000-00-00', '0000-00-00'),
(11, 'seeds', 'seeds', 'cll47b', 'seeds2', '$2y$10$iRt9cLW9xlOa2uQmBzMT6eOXNpIgJcUXJua0GGOrP2J5.UGzQhB1W', '2018-10-14', '2018-10-01'),
(14, 'laura', 'posada', 'cll47b', 'aa@aac.com', '$2y$10$TMs1r8Jy7aI14c40u7tHkePQ6xf2BowPKrtZ9/W8bs/oEGnzPZh9i', '2018-10-14', '2018-10-14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_hotels`
--
ALTER TABLE `info_hotels`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservs`
--
ALTER TABLE `reservs`
  ADD PRIMARY KEY (`hotel`);

--
-- Indices de la tabla `reserv_hotels`
--
ALTER TABLE `reserv_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `info_hotels`
--
ALTER TABLE `info_hotels`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reserv_hotels`
--
ALTER TABLE `reserv_hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
