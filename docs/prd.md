# PRD - DNG to JPG Converter (Flutter App)

## 개요
**제품명**: DNG to JPG Converter  
**플랫폼**: android only  
**목적**: DNG 이미지 파일을 4K 화질의 JPG 파일로 빠르고 쉽게 변환하는 크로스플랫폼 모바일 앱

## 목표
- 기본 기능: 선택된 DNG 파일을 JPG로 변환
- 프리미엄 기능 (구글 광고 시청 후 제공): 다중선택된 DNG 파일을 JPG로 일괄 변환
- 4K 화질(3840x2160 이상)의 고품질 이미지 출력
- 간단하고 직관적인 모바일 사용자 경험 제공

## 사용자
- 모바일 기기에서 DNG 파일을 다루는 일반 사용자
- 스마트폰으로 RAW 사진을 촬영하는 사진 애호가

## 주요 기능
1. **파일 선택**
   - 단일 DNG 파일 선택 (기본 기능)
   - 다중 DNG 파일 선택 (광고 시청 후 활성화)
   - 갤러리/파일 매니저 통합
   - 최근 사용 폴더 빠른 접근
   
2. **DNG to JPG 변환**
   - 선택한 DNG 파일을 4K 화질(고품질)로 JPG 변환
   - 원본 파일은 유지 (옵션으로 삭제 가능)
   - 백그라운드 변환 지원

3. **사용자 인터페이스**
   - Flutter Material Design 기반 직관적 UI
   - 크로스플랫폼 일관된 경험 (Android & iOS)
   - 파일 선택 버튼
   - 실시간 변환 진행률 표시 (프로그레스바)
   - 변환 완료/실패 알림
   - 변환된 파일 개수 및 저장 위치 표시
   - 썸네일 미리보기

4. **광고 통합**
   - Google AdMob 광고 연동
   - 보상형 광고 (Rewarded Ad) 시청 후 배치 변환 기능 활성화
   - 광고 시청 선택 UI

5. **출력 옵션**
   - 저장 위치: Pictures/DNG2JPG 폴더 (기본)
   - JPG 품질 설정 (기본: 95%)
   - 원본 삭제 옵션

6. **다국어 지원**
   - 한국어 (기본)
   - 영어
   - 시스템 언어 자동 감지
   - 설정에서 언어 수동 변경 가능

7. **권한 관리**
   - Android: 저장소 읽기/쓰기 권한, Android 13+ Scoped Storage 대응
   - iOS: Photo Library 접근 권한

## 기술 스택
**플랫폼**: Flutter (Dart)

**이유**:
- 단일 코드베이스로 Android & iOS 동시 지원
- 빠른 개발 속도 및 Hot Reload
- 풍부한 UI 위젯과 Material Design 지원
- 크로스플랫폼 패키지 생태계
- Google AdMob 완벽 통합

**주요 라이브러리 및 패키지**:
- **언어**: Dart
- **UI**: Flutter Material Widgets
- **이미지 처리**:
  - `image` 패키지 (DNG 디코딩 및 JPG 인코딩)
  - Platform Channel (필요시 Native 코드 연동)
- **광고**: `google_mobile_ads` (Rewarded Ads)
- **파일 처리**: 
  - `file_picker` (파일 선택)
  - `path_provider` (파일 경로 관리)
- **권한 관리**: `permission_handler`
- **상태 관리**: `provider`
- **설정 저장**: `shared_preferences`
- **다국어**: Flutter Localizations (`flutter_localizations`)

## 일정
- 개발 시작: 2025-11-08
- 예상 완료: 2025-11-29 (3주)
  - 1주차: UI 구현 및 단일 파일 변환 기능
  - 2주차: 배치 변환 기능 및 광고 통합
  - 3주차: 테스트 및 최적화

## 기술적 고려사항
- DNG 파일의 EXIF 메타데이터 보존
- 대용량 파일 처리 시 메모리 관리 (BitmapFactory Options)
- 배치 변환 시 Coroutines를 이용한 비동기 처리
- Android 13+ Scoped Storage 정책 준수
- 광고 로딩 및 표시 타이밍 최적화
- 다양한 DNG 포맷 호환성 (다양한 제조사 카메라)
- 배터리 소모 최적화
- 다국어 리소스 관리 및 RTL 레이아웃 대응 준비

## 수익화 전략
- 무료 버전: 단일 파일 변환 + 광고
- 프리미엄 기능: 보상형 광고 시청으로 배치 변환 활성화
- 향후 확장: 인앱 구매로 광고 제거 옵션 추가 가능

## 배포
- **Android**: 
  - 최소 지원 버전: Android 8.0 (API 26)
  - 목표 버전: Android 14 (API 34)
  - 배포 채널: Google Play Store
- **iOS**:
  - 최소 지원 버전: iOS 12.0
  - 배포 채널: Apple App Store
