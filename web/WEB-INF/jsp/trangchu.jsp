<%-- 
    Document   : trangchu
    Created on : Oct 24, 2018, 10:25:55 AM
    Author     : QUOCTRONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Trang Chủ</title>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div class="container">
            <div class="header">
                <div class="image">
                    <img src="image/logo.png" style="width:300px; height:100px; margin-top:1px">
                </div>
                <div id="menu">
                    <ul>
                        <li><a href="#"><img src="image/index.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">TRANG CHỦ</span></a></li>
                        <li><a href="#"><img src="image/building.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">CĂN HỘ</span></a></li>
                        <li><a href="#"><img src="image/house.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ NGUYÊN CĂN</span></a></li>
                        <li><a href="#"><img src="image/motel.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ TRỌ</span></a></li>
                        <li><a href="#"><img src="image/plus.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">KHÁC</span></a>
                            <ul class="sub-menu">
                                <li><a href="#"><span style="color:black">Thuê khách sạn, biệt thự</span></a></li>
                                <li><a href="#"><span style="color:black">Thuê kho xưởng</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#"><img src="image/blog.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">BLOG</span></a></li>
                        <li><a href="#"><img src="image/mess.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">ĐĂNG TIN</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="banner">
                <div class="image2">
                    <img src="image/banner.jpg" style="width:99%; height:330px; margin-top:10px">
                </div>
                <div class="button">
                    <input type="text" name="search" id="search" value="Tìm kiếm">
                    <input type="submit" name="search1" id="search1" value="Tìm kiếm">
                </div>
            </div>
            <div class="dangtin">
                <h1>BẠN ĐANG CẦN THUÊ NHÀ HAY CHO THUÊ NHÀ</h1>
                <p>Cập nhật thông tin cho thuê nhà nguyên căn tại Đà Nẵng giá rẻ, chính chủ, mới nhất 2018. Với vị trí trung tâm, gần trạm xe buýt, công trình công cộng,...<p>
                    <input type="submit" name="dangtin" id="dangtin" value="ĐĂNG TIN MIỄN PHÍ">
            </div>
            <h1 style="text-align: center; width: 99%">TIN ĐĂNG CHO THUÊ NHÀ</h1>
            <div class="body">
                <c:forEach items="${listPoster}" var="item">
                <div class="hang1">

                    
                        <div class="o1">

                            <p>Tiêu đề: ${item.title} <br></p>
                            <p>Loại: ${item.name} <br></p>
                            <p>Email: ${item.email} <br></p>
                            <p>Thông tin: ${item.info} <br></p>
                        </div>
                        
                    

                </div>
                </c:forEach>
                <h1 style="text-align: center">TIN TỨC MỚI</h1>
                <div class="new">
                    <div class="trai">
                        <a href="" style="text-decoration: none">
                            <img src="image/trai.jpg" style="width: 100%; height: 450px">
                            <p style="color: red; font-weight: bold; margin-left: 10px">Những lưu ý khi cho thuê mặt bằng</p></a>
                        <span style="margin-left: 10px; margin-bottom: 20px">Việc kinh doanh mặt bằng cho thuê là một dạng kinh doanh đem tới một nguồn lợi nhuận đáng kể, mà không quá phải đầu tư quá nhiều chi phí cũng như không tốn quá nhiều thời gian để quản...</span>

                    </div>
                    <div class="phai">
                        <div class="phai1">
                            <a href="" style="text-decoration: none">
                                <img src="image/phai1.jpg" style="width: 100%; height: 240px">
                                <p style="color: red; font-weight: bold; margin-left: 10px; margin-top: 2px">Kinh nghiệm xây căn hộ Mini cho thuê</p>
                            </a>
                        </div>
                        <div class="phai2">
                            <a href="" style="text-decoration: none">
                                <img src="image/phai2.jpg" style="width: 100%; height: 240px">
                                <p style="color: red; font-weight: bold; margin-left: 10px; margin-top: 2px">Kinh nghiệm làm hợp đồng cho thuê nhà</p>
                            </a>
                        </div>
                        <div class="phai3">
                            <a href="" style="text-decoration: none">
                                <img src="image/phai3.jpg" style="width: 100%; height: 240px">
                                <p style="color: red; font-weight: bold; margin-left: 10px; margin-top: 2px">Kinh nghiệm quản lý nhà cho thuê nguyên căn</p>
                            </a>
                        </div>
                        <div class="phai4">
                            <a href="" style="text-decoration: none">
                                <img src="image/phai4.png" style="width: 100%; height: 240px">
                                <p style="color: red; font-weight: bold; margin-left: 10px; margin-top: 2px">Lưu ý khi ký hợp đồng thuê nhà</p>
                            </a>
                        </div>
                    </div>

                </div>
                <input type="submit" name="all" id="all" value="XEM TẤT CẢ">
            </div>
            <div class="footer">
                <div class="ft">
                    <div class="fttrai">
                        <h4 style="margin-left: 30px; position: absolute">GIỚI THIỆU CHUNG</h4><hr style="color: silver; width: 345px; position: absolute; margin-top: 57px; margin-left: 30px">
                        <p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 90px">Bạn đang cần tìm thuê nhà nguyên căn tại Đà Nẵng ? bạn muốn nhà thuê có giá rẻ nhất thị trường? Hãy đến với chúng tôi, dịch vụ hỗ trợ tìm nhà cho thuê Đà Nẵng chuyên nghiệp nhất tại Đà Nẵng.</p></br>
                        <p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 195px">Dịch vụ hỗ trợ tìm kiếm nhà nguyên căn, căn hộ mini, căn hộ cao cấp theo nhu cầu khách hàng. Ngoài ra, chúng tôi là dịch vụ cho thuê nhà đất Đà Nẵng chính chủ, giá rẻ, vị trí đẹp, đường rộng.</p></br>
                        <p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 300px">Cập nhật thông tin mua cho thuê nhà tại Đà Nẵng, nhanh nhất, nhà mặt tiền, nhà kiệt, phòng trọ...</p>
                    </div>
                    <div class="ftphai">
                        <div class="ftphaitren">
                            <div class="tren1">
                                <h4 style="margin-left: 30px">THÔNG TIN WEBSITE</h4><hr style="color: silver; width: 185px">
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Giới thiệu</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Trang chủ</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Liên hệ</p></a>
                            </div>
                            <div class="tren2">
                                <h4 style="margin-left: 30px">DANH MỤC</h4><hr style="color: silver; width: 185px">
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê nhà Đà Nẵng</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê phòng trọ Đà Nẵng</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê căn hộ Đà Nẵng</p></a>
                            </div>
                            <div class="tren3">
                                <h4 style="margin-left: 30px">DANH MỤC</h4><hr style="color: silver; width: 185px">
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê khách sạn, biệt thự</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê kho xưởng Đà Nẵng</p></a>
                                <a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê mặt bằng Đà Nẵng</p></a>
                            </div>
                        </div>
                        <div class="ftphaiduoi">
                            <h4 style="margin-left: 30px">LIÊN HỆ VỚI CHÚNG TÔI</h4><hr style="color: silver; width: 690px">
                            <p style="margin-left: 30px; color: silver">Địa chỉ: Tầng Lửng, Toà Nhà Savico, 66 Võ Văn Tần, Phường Chính Gián, Quận Thanh Khê, Đà Nẵng 590000</p>
                            <p style="margin-left: 30px; color: silver">Di động: 0905 801 816</p>
                            <p style="margin-left: 30px; color: silver">Fax: 089 924 25 99</p>
                            <p style="margin-left: 30px; color: silver">Email: contact@thuenha24h.net</p>
                        </div>
                    </div>
                </div>
                <hr style="color: silver; width: 1100px">
                <div class="fd">
                    <p style="margin-left: 30px; color: silver">Copyright © 2015. Kênh thông tin nhà cho thuê và cho thuê nhà hàng đầu. All rights reserved</p>
                </div>
            </div>
        </div>
    </body>
</html>

