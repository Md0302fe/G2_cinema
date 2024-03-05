<%-- 
    Document   : CreateSeatPage
    Created on : Feb 28, 2024, 11:16:29 PM
    Author     : GIA TIEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./Assets/Styles/createSeatPage.css" />
    <link rel="stylesheet" href="./Assets/Styles/gridTien.css"/>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
    <title>Create Seat Page</title>
  </head>
  <body>
    <div class="seat_booking grid wide">
      <div class="all_seat">
        <div class="content_left">
          <div class="choose_time_movie grid wide">
            <div class="show_time_movie flex">
              <div class="change_time_movie">
                <p class="bold" style="margin-top: 14px;">Đổi suất chiếu</p>
              </div>

              <div class="time_movie">
                  <button class="time_slot border border-1 font-semibold">09:30</button>
                  <button class="time_slot border border-1 font-semibold">11:30</button>           
                  <button class="time_slot border border-1 font-semibold">13:30</button>
                  <button class="time_slot border border-1 font-semibold">15:30</button>
                  <button class="time_slot border border-1 font-semibold">17:30</button>
                  <button class="time_slot border border-1 font-semibold">18:30</button>
                  <button class="time_slot border border-1 font-semibold">19:30</button>
                  <button class="time_slot border border-1 font-semibold">19:30</button>
                  <button class="time_slot border border-1 font-semibold">20:30</button>
              </div>
            </div>
          </div>
          
          <div class="choose_seat">
            <ul class="seat_layout">
              <li class="seat_items">
                <div class="text1">L</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">L</div>
              </li>

              <li class="seat_items">
                <div class="text1">K</div>

                <div class="seats">
                  <button class="border_seats border rounded" id="myButton">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">K</div>
              </li>

              <li class="seat_items">
                <div class="text1">J</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">J</div>
              </li>

              <li class="seat_items">
                <div class="text1">I</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">I</div>
              </li>

              <li class="seat_items">
                <div class="text1">H</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">H</div>
              </li>

              <li class="seat_items">
                <div class="text1">G</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">G</div>
              </li>

              <li class="seat_items">
                <div class="text1">F</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">F</div>
              </li>

              <li class="seat_items">
                <div class="text1">E</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">E</div>
              </li>

              <li class="seat_items">
                <div class="text1">D</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">D</div>
              </li>

              <li class="seat_items">
                <div class="text1">C</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">C</div>
              </li>

              <li class="seat_items">
                <div class="text1">B</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">B</div>
              </li>

              <li class="seat_items">
                <div class="text1">A</div>

                <div class="seats">
                  <button class="border_seats border rounded">
                    <span class="seat_numbers">1</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">2</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">3</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">4</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">5</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">6</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">7</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">8</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">9</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">10</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">11</span>
                  </button>

                  <button class="border_seats border rounded">
                    <span class="seat_numbers">12</span>
                  </button>
                </div>

                <div class="text2">A</div>
              </li>
            </ul>
          </div>

          <div class="seatstatus" style="margin-top: 20px">
            <p class="man_hinh">Màn Hình</p>

            <div class="border_orange"></div>

            <div class="all_status">
              <div class="status_left">
                <div class="GDB">
                  <div
                    class="GDB_border_color1 border border-1 rounded-3"></div>
                  <div>Ghế đã bán</div>
                </div>

                <div class="GDC">
                  <div
                    class="GDC_border_color2 border border-1 rounded-3"></div>
                  <div>Ghế đang chọn</div>
                </div>
              </div>

              <div class="status_right">
                <div class="VIP_seat">
                  <div
                    class="VIP border border border-warning border-1 rounded-3"></div>
                  <div>Ghế VIP</div>
                </div>

                <div class="single_seat">
                  <div class="single border border-1 rounded-3"></div>
                  <div>Ghế đơn</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="content_right">
          <div class="booking_summary">
            <div class="line_booking"></div>
            <div class="booking_top mg-t-10px">
              <img
                alt="Mai"
                loading="lazy"
                width="130"
                height="180"
                decoding="async"
                data-nimg="1"
                class="xl:w-full xl:h-full md:w-[80px] md:h-[120px] w-[90px] h-[110px] rounded object-cover object-cover duration-500 ease-in-out group-hover:opacity-100 scale-100 blur-0 grayscale-0)"
                src="https://cdn.galaxycine.vn/media/2024/2/5/mai-500_1707105158298.jpg"
                style="color: transparent" />
              <div class="content_booking">
                <h3 class="movie_name">Mai</h3>
                <div class="booking_info">
                  <p class="subtitle">Digital Phụ Đề</p>
                  <p style="margin-top: 15px; margin-left: 10px">-</p>
                  <p class="movie_rated border border-1 rounded">T18</p>
                </div>
              </div>
            </div>
            <div class="total_booking mg-t-10px">
              <div class="theater_name flex">
                <p class="bold ">Vincom Xuân Khánh</p>
                <p style="margin: 0px 8px">-</p>
                <p>RAP 1</p>
              </div>
              <div class="showtime_booking flex">
                <p>Suất:</p>
                <p class="movie_time bold">20:30</p>
                <p style="margin: -1px 6px">-</p>
                <p>
                  Thứ Ba,
                  <p class="date_movie bold">27/02/2024</p>
                </p>
              </div>
              <div class="line_totalbooking"></div>
              <div class="bill_booking" id="billSection">
                
                <div class="flex">
                  <div class="total_seat">
                    <div class="flex" style="margin-bottom: -10px;">
                      <p class="bold" style="margin-right: 6px;">1x</p>
                      <p style="width: 61px;">Ghế đơn</p>
                    </div>
                    <div class="flex">
                      <p style="margin-right: 6px;">Ghế:</p>
                      <p class="bold">I12</p>
                    </div>                  
                  </div>
                  <p class="price_seat_black bold">0 ₫</p>
                </div>
                
                <div class="line_totalbooking"></div>
              </div>
              <div class="total_price flex">
                <p class="tongcong bold" style="width: 86px;">Tổng cộng</p>
                <p class="price_seat_orange bold">0 ₫</p>
              </div>
            </div>
            <div class="booking_bottom flex">
              <button class="text_back border border-white rounded pd-t-10px">
                <p>Quay lại</p>
              </button>
              <button class="text_continute border border-white rounded pd-t-10px">
                <p>Tiếp tục</p>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
      <script src="./Assets/JS/createSeatPage.js"></script>
  </body>
</html>

