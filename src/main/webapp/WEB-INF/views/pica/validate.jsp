<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<%@include file="../header.jsp"%>
<head>
    <title>VIAS - Validar Títulos</title>
    <link rel="stylesheet" href="/css/template.css">
    <link rel="stylesheet" href="/css/validate.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="viewport" content="width=device-width, user-scalable=no">


</head>
<body>

<div class="container">
    <button class="arrowbutton" onclick="window.history.back()">
        <img src="/images/backarrow.png" alt="Go back!" width="30px">
    </button>
    <p class="title">Validar Títulos</p>
    <div class="content">
        <div class="div-button">
            <form action="/card_scan" method="post" id="qr-form">
                <input type="hidden" id="qr-input" name="qrcode" value="">
            </form><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none" style="margin-top: 20px">
                <mask id="mask0_341_1247" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="30" height="30">
                    <rect width="30" height="30" fill="#D9D9D9"/>
                </mask>
                <g mask="url(#mask0_341_1247)">
                    <path d="M2.5 8.75V2.5H8.75V5H5V8.75H2.5ZM2.5 27.5V21.25H5V25H8.75V27.5H2.5ZM21.25 27.5V25H25V21.25H27.5V27.5H21.25ZM25 8.75V5H21.25V2.5H27.5V8.75H25ZM21.875 21.875H23.75V23.75H21.875V21.875ZM21.875 18.125H23.75V20H21.875V18.125ZM20 20H21.875V21.875H20V20ZM18.125 21.875H20V23.75H18.125V21.875ZM16.25 20H18.125V21.875H16.25V20ZM20 16.25H21.875V18.125H20V16.25ZM18.125 18.125H20V20H18.125V18.125ZM16.25 16.25H18.125V18.125H16.25V16.25ZM23.75 6.25V13.75H16.25V6.25H23.75ZM13.75 16.25V23.75H6.25V16.25H13.75ZM13.75 6.25V13.75H6.25V6.25H13.75ZM11.875 21.875V18.125H8.125V21.875H11.875ZM11.875 11.875V8.125H8.125V11.875H11.875ZM21.875 11.875V8.125H18.125V11.875H21.875Z" fill="white"/>
                </g>
            </svg>
        </div>

            <div class="camera-box" style="margin-top: 30px">
                <video id="camera-feed" autoplay style="width: 100%"></video>
                <canvas id="qr-canvas" style="display:none;"></canvas>
                <div id="qr-ready"></div><div class="valid"></div>
                <c:if test="${validation == true}">
                    <div id="validation" class="invalid" style="background-color: #A3DD41"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <mask id="mask0_891_719" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                            <rect width="24" height="24" fill="#D9D9D9"/>
                        </mask>
                        <g mask="url(#mask0_891_719)">
                            <path d="M10.6 16.6L17.65 9.55L16.25 8.15L10.6 13.8L7.75 10.95L6.35 12.35L10.6 16.6ZM12 22C10.6167 22 9.31667 21.7375 8.1 21.2125C6.88333 20.6875 5.825 19.975 4.925 19.075C4.025 18.175 3.3125 17.1167 2.7875 15.9C2.2625 14.6833 2 13.3833 2 12C2 10.6167 2.2625 9.31667 2.7875 8.1C3.3125 6.88333 4.025 5.825 4.925 4.925C5.825 4.025 6.88333 3.3125 8.1 2.7875C9.31667 2.2625 10.6167 2 12 2C13.3833 2 14.6833 2.2625 15.9 2.7875C17.1167 3.3125 18.175 4.025 19.075 4.925C19.975 5.825 20.6875 6.88333 21.2125 8.1C21.7375 9.31667 22 10.6167 22 12C22 13.3833 21.7375 14.6833 21.2125 15.9C20.6875 17.1167 19.975 18.175 19.075 19.075C18.175 19.975 17.1167 20.6875 15.9 21.2125C14.6833 21.7375 13.3833 22 12 22ZM12 20C14.2333 20 16.125 19.225 17.675 17.675C19.225 16.125 20 14.2333 20 12C20 9.76667 19.225 7.875 17.675 6.325C16.125 4.775 14.2333 4 12 4C9.76667 4 7.875 4.775 6.325 6.325C4.775 7.875 4 9.76667 4 12C4 14.2333 4.775 16.125 6.325 17.675C7.875 19.225 9.76667 20 12 20Z" fill="#1C1B1F"/>
                        </g>
                    </svg></div>
                </c:if>
                <c:if test="${validation == false}">
                    <div id="validation" class="invalid"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <mask id="mask0_891_713" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                            <rect width="24" height="24" fill="#1C1B1F"/>
                        </mask>
                        <g mask="url(#mask0_891_713)">
                            <path d="M8.4 17L12 13.4L15.6 17L17 15.6L13.4 12L17 8.4L15.6 7L12 10.6L8.4 7L7 8.4L10.6 12L7 15.6L8.4 17ZM12 22C10.6167 22 9.31667 21.7375 8.1 21.2125C6.88333 20.6875 5.825 19.975 4.925 19.075C4.025 18.175 3.3125 17.1167 2.7875 15.9C2.2625 14.6833 2 13.3833 2 12C2 10.6167 2.2625 9.31667 2.7875 8.1C3.3125 6.88333 4.025 5.825 4.925 4.925C5.825 4.025 6.88333 3.3125 8.1 2.7875C9.31667 2.2625 10.6167 2 12 2C13.3833 2 14.6833 2.2625 15.9 2.7875C17.1167 3.3125 18.175 4.025 19.075 4.925C19.975 5.825 20.6875 6.88333 21.2125 8.1C21.7375 9.31667 22 10.6167 22 12C22 13.3833 21.7375 14.6833 21.2125 15.9C20.6875 17.1167 19.975 18.175 19.075 19.075C18.175 19.975 17.1167 20.6875 15.9 21.2125C14.6833 21.7375 13.3833 22 12 22ZM12 20C14.2333 20 16.125 19.225 17.675 17.675C19.225 16.125 20 14.2333 20 12C20 9.76667 19.225 7.875 17.675 6.325C16.125 4.775 14.2333 4 12 4C9.76667 4 7.875 4.775 6.325 6.325C4.775 7.875 4 9.76667 4 12C4 14.2333 4.775 16.125 6.325 17.675C7.875 19.225 9.76667 20 12 20Z" fill="#1C1B1F"/>
                        </g>
                    </svg><div style="margin-left: 3px;font-weight: 600">${error_message}</div></div>

                </c:if>

            </div>
    </div>
</div>


<div class="footerlogo" onclick=window.location.href='/home'>
    <footer>
        <div class="footerimage" style="margin-top: 12px">
            <svg width="115" height="25" viewBox="0 0 196 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M18.24 45L-0.896 0.199997H12.8L28.928 38.984H20.864L37.376 0.199997H49.92L30.72 45H18.24ZM52.5425 45V0.199997H65.2145V45H52.5425ZM68.854 45L88.63 0.199997H101.11L120.95 45H107.766L92.278 6.408H97.27L81.782 45H68.854ZM79.67 36.296L82.934 26.952H104.822L108.086 36.296H79.67Z" fill="white"/>
                <path d="M177.001 24.6667L176.998 43.3333L196 38.0027L190.46 34.1147C193.142 30.656 194.643 26.408 194.64 22C194.64 10.9733 185.51 1.99999 174.284 1.99999C158.892 1.99999 155.246 16.3226 154.049 21.032C151.3 31.832 147.294 34 141.714 34C134.98 34 129.5 28.616 129.5 22C129.5 19.272 130.482 16.664 132.189 14.5547L138.999 19.3333V0.666656L120 5.99999L125.54 9.88532C122.858 13.344 121.357 17.592 121.357 22C121.357 33.0293 130.488 42 141.714 42C155.512 42 159.869 31.1413 161.948 22.968C164.849 11.5733 169.591 9.99999 174.284 9.99999C181.018 9.99999 186.498 15.3867 186.498 22.0054C186.5 24.7307 185.518 27.3387 183.811 29.448L177.001 24.6667Z" fill="#A3DD41"/>
            </svg>
        </div>
    </footer>
</div>

<script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<script>

    const form = document.getElementById("qr-form");
    const videoElement = document.getElementById('camera-feed');
    const qrCanvas = document.getElementById('qr-canvas');
    const validation = document.getElementById('validation');
    const audio = new Audio('sounds/beep-08b.mp3');

    const scanner = new Instascan.Scanner({ video: videoElement, mirror: false });
    scanner.addListener('scan', function (content) {
        if(content.startsWith("NaveCard") || content.startsWith("ViasCard")) {
            document.getElementById("qr-input").value = content
            audio.play();
            setTimeout(function () {
                form.submit();
            }, 500);

        }
    });

    setTimeout(function () {
        validation.style.display = 'none';
    }, 2000);


    Instascan.Camera.getCameras().then(function (cameras) {
        // If cameras are detected
        if (cameras.length > 0) {
            let selectedCamera;

            // Prioritize the back camera if available
            for (const camera of cameras) {
                if (camera.name.toLowerCase().includes('back')) {
                    selectedCamera = camera;
                    break;
                }
            }

            // If a back camera was found, use it; otherwise, use the first camera
            if (selectedCamera) {
                scanner.start(selectedCamera);
            } else {
                scanner.start(cameras[0]);
            }
        } else {
            // If no cameras are detected, give an error
            console.error('No cameras found.');
        }
    }).catch(function (e) {
        console.error(e);
    });


</script>
</body>
</html>