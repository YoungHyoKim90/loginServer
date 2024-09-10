<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 한마디</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        #container {
            text-align: center;
        }
        #inputField {
            width: 80%;
            padding: 10px;
            margin-bottom: 10px;
        }
        #submitButton {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        .floating-text {
            position: absolute;
            white-space: nowrap;
            font-size: 20px;
            color: #ff4500;
            opacity: 0.8;
            transition: transform 20s linear;
        }
    </style>
</head>
<body>
    <div id="container">
        <h1>오늘의 한마디</h1>
        <input type="text" id="inputField" placeholder="여기에 오늘의 한마디를 입력하세요">
        <button id="submitButton">출력</button>
    </div>
    
    <script>
        document.getElementById('submitButton').addEventListener('click', function() {
            const inputField = document.getElementById('inputField');
            const text = inputField.value;

            if (text.trim() === '') {
                alert('한마디를 입력해주세요!');
                return;
            }

            // 새로운 텍스트 요소 생성
            const textElement = document.createElement('div');
            textElement.className = 'floating-text';
            textElement.textContent = text;
            
            // 페이지에 추가
            document.body.appendChild(textElement);

            // 애니메이션을 위해 임시 스타일을 적용
            textElement.style.left = Math.random() * window.innerWidth + 'px';
            textElement.style.top = Math.random() * window.innerHeight + 'px';

            // 텍스트 요소를 화면의 가장자리를 넘어가게 하여 애니메이션 효과를 줍니다.
            const moveAnimation = textElement.animate([
                { transform: 'translateY(0)' },
                { transform: 'translateY(100vh)' }
            ], {
                duration: 20000,
                iterations: Infinity
            });

            // 일정 시간 후 애니메이션을 종료
            setTimeout(() => {
                moveAnimation.cancel();
                document.body.removeChild(textElement);
            }, 20000);
        });
    </script>
</body>
</html>
