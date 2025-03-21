<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="pages_contacts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="sub_page">


        <!-- contact section -->

        <section class="contact_section layout_padding">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5 col-lg-4 offset-md-1 offset-lg-2">
                        <div class="form_container">
                            <div class="heading_container">
                                <h2>Contact Us
                                </h2>
                            </div>
                            <form action="">
                                <div>
                                    <input type="text" placeholder="Full Name " />
                                </div>
                                <div>
                                    <input type="text" placeholder="Phone number" />
                                </div>
                                <div>
                                    <input type="email" placeholder="Email" />
                                </div>
                                <div>
                                    <input type="text" class="message-box" placeholder="Message" />
                                </div>
                                <div class="d-flex ">
                                    <button>
                                        SEND NOW
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6  px-0">
                        <div class="map_container">
                            <div class="map">
                                <div id="googleMap"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end contact section -->
    <script>

        /** google_map js **/

        function myMap() {
            var mapProp = {
                center: new google.maps.LatLng(40.712775, -74.005973),
                zoom: 18,
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        }
    </script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
    <!-- End Google Map -->
</asp:Content>

