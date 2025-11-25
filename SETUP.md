# 환경 설정 가이드

## 초기 설정

1. `.env.example` 파일을 복사하여 `.env` 파일을 만듭니다:
   ```bash
   cp .env.example .env
   ```

2. `.env` 파일을 열어 실제 키 값들을 입력합니다:
   ```
   KAKAO_NATIVE_APP_KEY=your_actual_key_here
   API_BASE_URL=https://your-actual-server.com/api/v1
   ```

3. 환경 설정 스크립트를 실행하여 Android/iOS 설정 파일을 업데이트합니다:
   
   **Windows (PowerShell):**
   ```powershell
   .\scripts\setup_env.ps1
   ```
   
   **Mac/Linux (Bash):**
   ```bash
   chmod +x scripts/setup_env.sh
   ./scripts/setup_env.sh
   ```

4. Flutter 패키지를 설치합니다:
   ```bash
   flutter pub get
   ```

5. 앱을 실행합니다:
   ```bash
   flutter run
   ```

## 주의사항

- `.env` 파일은 **절대 Git에 커밋하지 마세요**
- Kakao Native App Key를 변경할 때마다 setup 스크립트를 다시 실행해야 합니다
- Android/iOS 네이티브 설정 파일은 수동으로 수정하지 마세요 (스크립트가 자동으로 처리합니다)

## 보안이 필요한 파일들

현재 환경 변수로 관리되는 민감한 정보:
- `KAKAO_NATIVE_APP_KEY`: Kakao SDK Native App Key
- `API_BASE_URL`: 백엔드 서버 Base URL

이 키들은 다음 파일들에 자동으로 적용됩니다:
- `lib/main.dart` - Kakao SDK 초기화
- `lib/core/network/dio_client.dart` - API Base URL
- `android/app/src/main/AndroidManifest.xml` - Kakao URL Scheme
- `ios/Runner/Info.plist` - Kakao URL Scheme
