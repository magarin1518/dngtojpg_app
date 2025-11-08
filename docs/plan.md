# 개발 계획서 - DNG to JPG Converter Flutter App# 개발 계획서 - DNG to JPG Converter Flutter App# 개발 계획서 - DNG to JPG Converter Flutter App# 개발 계획서 - DNG to JPG Converter Flutter App



## 프로젝트 개요

- **프로젝트명**: DNG to JPG Converter

- **플랫폼**: Flutter (Android & iOS)## 프로젝트 개요

- **개발 기간**: 2025-11-08 ~ 2025-11-29 (3주)

- **개발 언어**: Dart- **프로젝트명**: DNG to JPG Converter

- **최소 지원 버전**: Android 8.0 (API 26), iOS 12.0

- **플랫폼**: Flutter (Android & iOS)## 프로젝트 개요## 프로젝트 개요

---

- **개발 기간**: 2025-11-08 ~ 2025-11-29 (3주)

## 개발 일정

- **개발 언어**: Dart- **프로젝트명**: DNG to JPG Converter

### Week 1: 프로젝트 설정 및 기본 UI 구현 (11/08 ~ 11/14)

- **최소 지원 버전**: Android 8.0 (API 26), iOS 12.0

#### Day 1-2: 프로젝트 초기 설정

- [x] Flutter 프로젝트 생성 및 기본 구조 정리- **플랫폼**: Flutter (Android & iOS)## 개발 일정

- [x] 필수 의존성 추가 (image, file_picker, path_provider, shared_preferences, provider, google_mobile_ads, permission_handler)

- [x] 로컬라이제이션 기본 설정 (flutter_localizations)---

- [x] Git 저장소 초기화 및 원격 저장소 연결

- [x] 폴더 구조 정비 (lib/screens, lib/services, lib/widgets, lib/l10n 등)- **개발 기간**: 2025-11-08 ~ 2025-11-29 (3주)



#### Day 3-4: 다국어 리소스 확립## 개발 일정

- [x] `l10n.yaml` 구성 및 ARB 파일 템플릿 정리

- [x] `app_ko.arb`, `app_en.arb` 작성- **개발 언어**: Dart### Week 1: 프로젝트 설정 및 기본 UI 구현 (11/08 ~ 11/14)

- [x] LocaleManager 서비스 및 Provider 연동

- [x] 로케일 단위 테스트/위젯 테스트 작성### Week 1: 프로젝트 설정 및 기본 UI 구현 (11/08 ~ 11/14)

- [x] CI 스크립트와 GitHub Actions 통합 (분석/테스트/커버리지)

- **최소 지원 버전**: Android 8.0 (API 26), iOS 12.0

#### Day 5-7: 메인 UI 뼈대 구현 (임시 데이터)

- [ ] `HomeScreen` 레이아웃 설계 및 플로우 정의#### Day 1-2: 프로젝트 초기 설정

- [ ] 파일 선택, 변환, 광고 안내 등의 기본 버튼 배치

- [ ] 진행률 표시용 인디케이터 UI 프로토타입#### Day 1-2: 프로젝트 초기 설정

- [ ] 설정 화면 구조 초안 (언어 선택 포함)

- [ ] 테스트 데이터 기반 위젯 테스트 강화- [x] Flutter 프로젝트 생성



---- [x] pubspec.yaml 의존성 추가---



### Week 2: 핵심 기능 구현 (11/15 ~ 11/21)  - [x] image, file_picker, path_provider



#### Day 8-10: 파일 선택 및 권한 관리  - [x] shared_preferences, provider  - [x] image, file_picker, path_provider

- [ ] Android/iOS 파일 선택 로직 구현

- [ ] 단일 및 다중 파일 처리 흐름 구성  - [x] google_mobile_ads, permission_handler

- [ ] 권한 체크 및 예외 처리 (안내 메시지 포함)

- [ ] Android 13+ Photo Picker 대응 방안 검토- [x] 다국어 설정 (flutter_localizations)## 개발 일정  - [x] shared_preferences, provider



#### Day 11-12: DNG to JPG 변환 엔진- [x] Git 저장소 초기화

- [ ] 변환 파이프라인 설계 (비동기 작업 포함)

- [ ] 이미지 디코딩 및 JPG 인코딩 품질 파라미터 확정- [x] 기본 폴더 구조 생성 (lib/screens, lib/services, lib/providers, lib/widgets)  - [x] google_mobile_ads, permission_handler

- [ ] EXIF 메타데이터 보존 전략 수립

- [ ] 단일 파일 기준의 스모크 테스트 작성



#### Day 13-14: 배치 변환 및 상태 관리#### Day 3-4: 다국어 리소스 설정### Week 1: 프로젝트 설정 및 기본 UI 구현 (11/08 ~ 11/14)

- [ ] 배치 변환 관리 클래스 작성 (진행률 갱신 포함)

- [ ] 에러 핸들링 및 재시도 로직 확립

- [ ] 변환 성공/실패 UI 피드백 설계

- [ ] 원본 파일 정리 옵션 논의 및 프로토타입- [x] lib/l10n/ 디렉토리 생성



---- [x] app_ko.arb 작성 (한국어 기본)



### Week 3: 광고, 고급 기능, 출시 준비 (11/22 ~ 11/29)- [x] app_en.arb 작성 (영어)#### Day 1-2: 프로젝트 초기 설정#### Day 3-4: 다국어 리소스 설정



#### Day 15-16: 광고 통합- [x] l10n.yaml 설정

- [ ] Google AdMob Rewarded/배너 광고 연동

- [ ] 광고 시청 후 프리미엄 기능 활성화 플로우 구현- [x] pubspec.yaml에 flutter_localizations 추가

- [ ] 광고 로딩 실패 대비 및 로깅

- [ ] QA용 테스트 광고 설정



#### Day 17-18: 고급 사용자 경험 개선#### Day 5-7: 메인 UI 구현 (임시 데이터)- [x] Flutter 프로젝트 생성#### Day 5-7: 고품질 메인 UI 구현 (임시 데이터)

- [ ] 썸네일 미리보기

- [ ] 최근 변환 경로 저장 및 복원

- [ ] 변환 완료 알림 (로컬 Notification)

- [ ] 메모리/배터리 사용 최적화 지표 수집- [ ] HomeScreen 레이아웃 설계- [x] pubspec.yaml 의존성 추가# 개발 계획서 - DNG to JPG Converter Flutter App



#### Day 19-20: 통합 테스트 및 안정화- [ ] Flutter Material Design 테마 적용

- [ ] 단위/위젯/통합 테스트 보강

- [ ] 다양한 기기/OS 버전에서의 QA- [ ] 파일 선택 버튼 UI  - [x] image, file_picker, path_provider

- [ ] 주요 버그 수정 및 성능 튜닝

- [ ] 진행률 표시 UI (CircularProgressIndicator)

#### Day 21: 배포 준비

- [ ] 앱 스토어 리소스 작성 (스크린샷, 설명, 개인정보처리방침)- [ ] 설정 화면 UI (언어 선택 포함)  - [x] shared_preferences, provider## 프로젝트 개요

- [ ] 릴리스 빌드 및 서명 절차 점검

- [ ] 내부 테스트 채널 배포 및 피드백 수집- [ ] 결과 표시 SnackBar/Dialog



---- [ ] 하단 배너 광고 위젯 추가  - [x] google_mobile_ads, permission_handler- **프로젝트명**: DNG to JPG Converter



## 아키텍처 및 코드 구조

- TDD 지향: 각 스토리별 최소 단위 테스트 우선 작성

- 상태 관리: `provider` 기반 ChangeNotifier 구조, 향후 Riverpod 고려---- [x] 다국어 설정 (flutter_localizations)- **플랫폼**: Flutter (Android & iOS)

- 서비스 계층: 변환/파일 접근/광고 등 각 기능별 서비스 분리

- 공통 위젯: 버튼, 진행률, SnackBar 등을 재사용 가능한 컴포넌트화

- 유틸리티: `lib/utils`에 포맷터, 에러 헬퍼, 로깅 함수 배치

### Week 2: 핵심 기능 구현 (11/15 ~ 11/21)- [x] Git 저장소 초기화- **최소 지원 버전**: Android 8.0 (API 26), iOS 12.0

### 현재 구조 스냅샷

```

lib/

├── l10n/#### Day 8-10: 파일 선택 및 권한 관리- [x] 기본 폴더 구조 생성 (lib/screens, lib/services, lib/providers, lib/widgets)

│   ├── app_en.arb

│   ├── app_ko.arb

│   └── generated/

├── screens/- [ ] Storage Access Framework (SAF) 통합---

│   └── home/

│       └── home_screen.dart- [ ] 단일 파일 선택 기능 구현

├── services/

│   └── locale_manager.dart- [ ] 다중 파일 선택 기능 구현#### Day 3-4: 다국어 리소스 설정### Week 1: 프로젝트 설정 및 기본 UI 구현 (11/08 ~ 11/14)

├── widgets/

├── main.dart- [ ] 런타임 권한 요청 처리

└── ...

```  - READ_EXTERNAL_STORAGE



---  - WRITE_EXTERNAL_STORAGE (API < 29)



## 테스트 전략- [ ] Android 13+ Photo Picker 지원- [x] lib/l10n/ 디렉토리 생성#### Day 1-2: 프로젝트 초기 설정

- 단위 테스트: LocaleManager, 변환 로직 등 서비스 레벨 검증

- 위젯 테스트: 로케일 전환, 기본 UI 상태, 에러 메시지 확인- [ ] 권한 거부 시 안내 Dialog

- 통합 테스트: 파일 선택 → 변환 → 결과 표시의 사용자 플로우 점검

- CI 정책: `flutter analyze`, `flutter test --coverage`, 최소 커버리지 70%- [x] app_ko.arb 작성 (한국어 기본)  - [x] google_mobile_ads, permission_handler



---#### Day 11-12: DNG to JPG 변환 엔진



## 리스크 및 대응- [x] app_en.arb 작성 (영어)- [x] 다국어 설정 (flutter_localizations)

| 리스크 | 영향도 | 대응 | 현황 |

|--------|--------|------|------|- [ ] DNG 파일 읽기 기능 구현

| 변환 라이브러리 품질 미검증 | 높음 | 후보 라이브러리 벤치마킹 및 대체 플랜 마련 | 준비 예정 |

| 대용량 DNG 처리 시 메모리 부족 | 중간 | 스트리밍 변환 및 다운샘플 전략 검토 | 준비 예정 |  - Camera2 DngCreator API 연구- [x] l10n.yaml 설정- [x] Git 저장소 초기화

| 광고 로딩 실패/거부 | 중간 | 재시도 및 광고 없는 플로우 고려 | 준비 예정 |

| App Store 승인 지연 | 낮음 | 개인정보 처리, 권한 문구 선제 정비 | 준비 예정 |  - LibRaw 또는 대안 라이브러리 통합



---- [ ] Bitmap 디코딩 및 메모리 최적화- [x] pubspec.yaml에 flutter_localizations 추가- [x] l10n.yaml 설정



## 성공 기준- [ ] JPG 인코딩 (4K 화질, 95% 품질)

- [ ] 단일 및 다중 DNG → JPG 변환 95% 이상 성공

- [ ] 4K 해상도 유지 및 EXIF 메타데이터 보존- [ ] EXIF 메타데이터 보존 기능- [x] pubspec.yaml에 flutter_localizations 추가

- [ ] 한국어/영어 UI 완성 및 커뮤니티 검증

- [ ] Rewarded 광고 시청 이후 배치 기능 활성화- [ ] 단일 파일 변환 테스트

- [ ] 주요 기기(Android 8~14, iOS 12~18) 안정 동작

- [ ] CI/CD 전 과정 자동화 및 커버리지 70% 이상#### Day 5-7: 메인 UI 구현 (임시 데이터)

- [ ] Google Play Store/Apple App Store 제출 완료

#### Day 13-14: 배치 변환 및 비동기 처리

---

#### Day 5-7: 메인 UI 구현 (임시 데이터)

## 다음 액션

- 미착수: Git 초기화, Week 1 Story 1.1 (Locale 전환 UI)- [ ] Kotlin Coroutines로 백그라운드 변환 구현

- 단기 목표: HomeScreen 구조 초안 및 테스트 작성

- 회고: Day 3-4까지 로케일/CI 기반 확보 완료, 문서 정비 필요- [ ] 다중 파일 일괄 변환 로직- [ ] HomeScreen 레이아웃 설계


- [ ] 실시간 진행률 업데이트

- [ ] 변환 성공/실패 처리- [ ] Flutter Material Design 테마 적용- [ ] HomeScreen 레이아웃 설계

- [ ] 에러 핸들링 및 로깅

- [ ] 원본 파일 삭제 옵션 구현- [ ] 파일 선택 버튼 UI- [ ] Flutter Material Design 테마 적용



---- [ ] 진행률 표시 UI (CircularProgressIndicator)- [ ] 파일 선택 버튼 UI



### Week 3: 광고 통합 및 테스트 (11/22 ~ 11/29)- [ ] 설정 화면 UI (언어 선택 포함)- [ ] 진행률 표시 UI (CircularProgressIndicator)



#### Day 15-16: Google AdMob 통합- [ ] 결과 표시 SnackBar/Dialog- [ ] 설정 화면 UI (언어 선택 포함)



- [ ] AdMob 계정 및 앱 등록- [ ] 하단 배너 광고 위젯 추가- [ ] 결과 표시 SnackBar/Dialog

- [ ] Rewarded Ad Unit ID 생성

- [ ] AdMob SDK 초기화- [ ] 하단 배너 광고 위젯 추가

- [ ] 보상형 광고 로딩 로직 구현

- [ ] 광고 시청 완료 시 배치 변환 활성화---

- [ ] 광고 로딩 실패 시 재시도 로직

- [ ] 테스트 광고로 동작 확인---



#### Day 17-18: 추가 기능 및 최적화### Week 2: 핵심 기능 구현 (11/15 ~ 11/21)



- [ ] 썸네일 미리보기 기능### Week 2: 핵심 기능 구현 (11/15 ~ 11/21)

- [ ] 최근 사용 폴더 저장/불러오기

- [ ] 변환 완료 알림 (Notification)#### Day 8-10: 파일 선택 및 권한 관리

- [ ] 메모리 사용량 최적화

- [ ] 배터리 소모 최적화#### Day 8-10: 파일 선택 및 권한 관리

- [ ] 다양한 DNG 파일로 호환성 테스트

- [ ] Storage Access Framework (SAF) 통합

#### Day 19-20: 통합 테스트 및 버그 수정

- [ ] 단일 파일 선택 기능 구현- [ ] Storage Access Framework (SAF) 통합

- [ ] 기능 테스트

  - 단일 파일 변환- [ ] 다중 파일 선택 기능 구현- [ ] 단일 파일 선택 기능 구현

  - 배치 변환 (광고 후)

  - 언어 전환 (한국어 ↔ 영어)- [ ] 런타임 권한 요청 처리- [ ] 다중 파일 선택 기능 구현

  - 권한 처리

  - 광고 표시 및 보상  - READ_EXTERNAL_STORAGE- [ ] 런타임 권한 요청 처리

- [ ] 다양한 기기에서 테스트

  - 저사양 기기  - WRITE_EXTERNAL_STORAGE (API < 29)  - READ_EXTERNAL_STORAGE

  - 고사양 기기

  - 다양한 Android 버전- [ ] Android 13+ Photo Picker 지원  - WRITE_EXTERNAL_STORAGE (API < 29)

- [ ] 버그 수정 및 안정성 개선

- [ ] 권한 거부 시 안내 Dialog- [ ] Android 13+ Photo Picker 지원

#### Day 21: 배포 준비

- [ ] 권한 거부 시 안내 Dialog

- [ ] ProGuard/R8 난독화 설정

- [ ] 릴리스 APK/AAB 빌드#### Day 11-12: DNG to JPG 변환 엔진

- [ ] Google Play Console 등록

- [ ] 앱 설명 작성 (한국어/영어)#### Day 11-12: DNG to JPG 변환 엔진

- [ ] 스크린샷 준비

- [ ] 개인정보 처리방침 작성- [ ] DNG 파일 읽기 기능 구현

- [ ] 테스트 배포 (Internal Testing)

  - Camera2 DngCreator API 연구- [ ] DNG 파일 읽기 기능 구현

---

  - LibRaw 또는 대안 라이브러리 통합  - Camera2 DngCreator API 연구

## 주요 구현 항목

- [ ] Bitmap 디코딩 및 메모리 최적화  - LibRaw 또는 대안 라이브러리 통합

### 1. 프로젝트 구조

- [ ] JPG 인코딩 (4K 화질, 95% 품질)- [ ] Bitmap 디코딩 및 메모리 최적화

```

app/- [ ] EXIF 메타데이터 보존 기능- [ ] JPG 인코딩 (4K 화질, 95% 품질)

├── src/main/

│   ├── java/com/example/dngtojpg/- [ ] 단일 파일 변환 테스트- [ ] EXIF 메타데이터 보존 기능

│   │   ├── ui/

│   │   │   ├── MainActivity.kt- [ ] 단일 파일 변환 테스트

│   │   │   ├── SettingsActivity.kt

│   │   │   └── adapter/#### Day 13-14: 배치 변환 및 비동기 처리

│   │   ├── viewmodel/

│   │   │   └── ConversionViewModel.kt#### Day 13-14: 배치 변환 및 비동기 처리

│   │   ├── model/

│   │   │   └── ConversionResult.kt- [ ] Kotlin Coroutines로 백그라운드 변환 구현

│   │   ├── repository/

│   │   │   └── ImageRepository.kt- [ ] 다중 파일 일괄 변환 로직- [ ] Kotlin Coroutines로 백그라운드 변환 구현

│   │   ├── converter/

│   │   │   └── DngToJpgConverter.kt- [ ] 실시간 진행률 업데이트- [ ] 다중 파일 일괄 변환 로직

│   │   ├── ad/

│   │   │   └── AdManager.kt- [ ] 변환 성공/실패 처리- [ ] 실시간 진행률 업데이트

│   │   └── util/

│   │       ├── LocaleManager.kt- [ ] 에러 핸들링 및 로깅- [ ] 변환 성공/실패 처리

│   │       ├── PermissionHelper.kt

│   │       └── FileHelper.kt- [ ] 원본 파일 삭제 옵션 구현- [ ] 에러 핸들링 및 로깅

│   ├── res/

│   │   ├── values/- [ ] 원본 파일 삭제 옵션 구현

│   │   │   └── strings.xml (한국어)

│   │   ├── values-en/---

│   │   │   └── strings.xml (영어)

│   │   ├── layout/---

│   │   ├── drawable/

│   │   └── menu/### Week 3: 광고 통합 및 테스트 (11/22 ~ 11/29)

│   └── AndroidManifest.xml

```### Week 3: 광고 통합 및 테스트 (11/22 ~ 11/29)



### 2. 필수 라이브러리 (build.gradle.kts)#### Day 15-16: Google AdMob 통합



```kotlin#### Day 15-16: Google AdMob 통합

dependencies {

    // Kotlin- [ ] AdMob 계정 및 앱 등록

    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.9.0")

    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")- [ ] Rewarded Ad Unit ID 생성- [ ] AdMob 계정 및 앱 등록



    // AndroidX- [ ] AdMob SDK 초기화- [ ] Rewarded Ad Unit ID 생성

    implementation("androidx.core:core-ktx:1.12.0")

    implementation("androidx.appcompat:appcompat:1.6.1")- [ ] 보상형 광고 로딩 로직 구현- [ ] AdMob SDK 초기화

    implementation("com.google.android.material:material:1.11.0")

    implementation("androidx.constraintlayout:constraintlayout:2.1.4")- [ ] 광고 시청 완료 시 배치 변환 활성화- [ ] 보상형 광고 로딩 로직 구현



    // ViewModel & LiveData- [ ] 광고 로딩 실패 시 재시도 로직- [ ] 광고 시청 완료 시 배치 변환 활성화

    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")

    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.7.0")- [ ] 테스트 광고로 동작 확인- [ ] 광고 로딩 실패 시 재시도 로직



    // AdMob- [ ] 테스트 광고로 동작 확인

    implementation("com.google.android.gms:play-services-ads:22.6.0")

#### Day 17-18: 추가 기능 및 최적화

    // Image Processing

    implementation("androidx.exifinterface:exifinterface:1.3.7")#### Day 17-18: 추가 기능 및 최적화



    // Testing- [ ] 썸네일 미리보기 기능

    testImplementation("junit:junit:4.13.2")

    androidTestImplementation("androidx.test.ext:junit:1.1.5")- [ ] 최근 사용 폴더 저장/불러오기- [ ] 썸네일 미리보기 기능

}

```- [ ] 변환 완료 알림 (Notification)- [ ] 최근 사용 폴더 저장/불러오기



### 3. 권한 설정 (AndroidManifest.xml)- [ ] 메모리 사용량 최적화- [ ] 변환 완료 알림 (Notification)



```xml- [ ] 배터리 소모 최적화- [ ] 메모리 사용량 최적화

<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"

    android:maxSdkVersion="32" />- [ ] 다양한 DNG 파일로 호환성 테스트- [ ] 배터리 소모 최적화

<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"

    android:maxSdkVersion="28" />- [ ] 다양한 DNG 파일로 호환성 테스트

<uses-permission android:name="android.permission.READ_MEDIA_IMAGES"

    android:minSdkVersion="33" />#### Day 19-20: 통합 테스트 및 버그 수정

<uses-permission android:name="android.permission.INTERNET" />

```#### Day 19-20: 통합 테스트 및 버그 수정



---- [ ] 기능 테스트



## 다국어 지원 구현 계획  - 단일 파일 변환- [ ] 기능 테스트



### strings.xml 주요 항목  - 배치 변환 (광고 후)  - 단일 파일 변환



- 앱 이름  - 언어 전환 (한국어 ↔ 영어)  - 배치 변환 (광고 후)

- 버튼 텍스트 (파일 선택, 변환 시작, 광고 보기)

- 진행 상태 메시지  - 권한 처리  - 언어 전환 (한국어 ↔ 영어)

- 에러 메시지

- 설정 항목  - 광고 표시 및 보상  - 권한 처리

- 알림 메시지

- Dialog 메시지- [ ] 다양한 기기에서 테스트  - 광고 표시 및 보상



### LocaleManager 기능  - 저사양 기기- [ ] 다양한 기기에서 테스트



- 시스템 언어 자동 감지  - 고사양 기기  - 저사양 기기

- 사용자 선택 언어 저장 (SharedPreferences)

- Activity 재시작 없이 런타임 언어 변경  - 다양한 Android 버전  - 고사양 기기

- 앱 재시작 시 저장된 언어 복원

- [ ] 버그 수정 및 안정성 개선  - 다양한 Android 버전

---

- [ ] 버그 수정 및 안정성 개선

## 테스트 계획

#### Day 21: 배포 준비

### 기능 테스트

#### Day 21: 배포 준비

1. 단일 파일 변환 정확성

2. 배치 변환 정확성- [ ] ProGuard/R8 난독화 설정

3. 광고 시청 후 기능 잠금 해제

4. 언어 전환 동작- [ ] 릴리스 APK/AAB 빌드- [ ] ProGuard/R8 난독화 설정

5. 권한 처리 (허용/거부)

6. 저장소 접근 (내부/외부)- [ ] Google Play Console 등록- [ ] 릴리스 APK/AAB 빌드

7. 대용량 파일 처리

8. 메모리 부족 상황 대응- [ ] 앱 설명 작성 (한국어/영어)- [ ] Google Play Console 등록



### 호환성 테스트- [ ] 스크린샷 준비- [ ] 앱 설명 작성 (한국어/영어)



- Android 8.0 ~ 14 버전- [ ] 개인정보 처리방침 작성- [ ] 스크린샷 준비

- 다양한 제조사 기기 (Samsung, LG, Pixel)

- 다양한 화면 크기 (폰, 태블릿)- [ ] 테스트 배포 (Internal Testing)- [ ] 개인정보 처리방침 작성

- 다양한 DNG 파일 (Canon, Nikon, Sony, Samsung 등)

- [ ] 테스트 배포 (Internal Testing)

### 성능 테스트

---

- 변환 속도 측정

- 메모리 사용량 모니터링---

- 배터리 소모량 측정

- 광고 로딩 시간## 주요 구현 항목



---## 주요 구현 항목



## 리스크 관리### 1. 프로젝트 구조



| 리스크 | 영향도 | 대응 방안 |### 1. 프로젝트 구조

|--------|--------|-----------|

| DNG 라이브러리 호환성 문제 | 높음 | 여러 라이브러리 테스트, 대안 준비 |```

| 메모리 부족 (대용량 파일) | 중간 | 이미지 다운샘플링, 청크 처리 |

| 광고 로딩 실패 | 중간 | 재시도 로직, 테스트 광고 |app/```

| Android 버전별 권한 차이 | 중간 | 조건부 권한 요청, 호환성 레이어 |

| 개발 일정 지연 | 낮음 | 우선순위 조정, 단계별 배포 |├── src/main/app/



---│   ├── java/com/example/dngtojpg/├── src/main/



## 우선순위│   │   ├── ui/│   ├── java/com/example/dngtojpg/



### Must Have (필수)│   │   │   ├── MainActivity.kt│   │   ├── ui/



1. 단일 DNG → JPG 변환│   │   │   ├── SettingsActivity.kt│   │   │   ├── MainActivity.kt

2. 기본 UI 및 파일 선택

3. 한국어 지원│   │   │   └── adapter/│   │   │   ├── SettingsActivity.kt

4. 권한 관리

│   │   ├── viewmodel/│   │   │   └── adapter/

### Should Have (중요)

│   │   │   └── ConversionViewModel.kt│   │   ├── viewmodel/

1. 배치 변환

2. 광고 통합│   │   ├── model/│   │   │   └── ConversionViewModel.kt

3. 영어 지원

4. 진행률 표시│   │   │   └── ConversionResult.kt│   │   ├── model/



### Nice to Have (선택)│   │   ├── repository/│   │   │   └── ConversionResult.kt



1. 썸네일 미리보기│   │   │   └── ImageRepository.kt│   │   ├── repository/

2. 변환 완료 알림

3. 최근 폴더 빠른 접근│   │   ├── converter/│   │   │   └── ImageRepository.kt

4. 통계 기능

│   │   │   └── DngToJpgConverter.kt│   │   ├── converter/

---

│   │   ├── ad/│   │   │   └── DngToJpgConverter.kt

## 성공 기준

│   │   │   └── AdManager.kt│   │   ├── ad/

- [ ] 단일/배치 DNG to JPG 변환 정상 동작

- [ ] 4K 화질 출력 (3840x2160 이상)│   │   └── util/│   │   │   └── AdManager.kt

- [ ] 한국어/영어 완벽 지원

- [ ] 광고 시청 후 프리미엄 기능 활성화│   │       ├── LocaleManager.kt│   │   └── util/

- [ ] Android 8.0~14 안정 동작

- [ ] 크래시 발생률 < 1%│   │       ├── PermissionHelper.kt│   │       ├── LocaleManager.kt

- [ ] Google Play Store 배포 완료

│   │       └── FileHelper.kt│   │       ├── PermissionHelper.kt

---

│   ├── res/│   │       └── FileHelper.kt

## 다음 단계

- 브랜치 전략: master를 기본 브랜치로 유지하고 주요 기능은 feature/* 브랜치에서 작업 후 PR로 병합.

│   │   ├── values/│   ├── res/

1. 개발 환경 설정 완료

2. Week 1 Day 1-2 작업 시작│   │   │   └── strings.xml (한국어)│   │   ├── values/

3. 매일 진행 상황 체크

4. 주간 회고 및 계획 조정│   │   ├── values-en/│   │   │   └── strings.xml (한국어)


│   │   │   └── strings.xml (영어)│   │   ├── values-en/

│   │   ├── layout/│   │   │   └── strings.xml (영어)

│   │   ├── drawable/│   │   ├── layout/

│   │   └── menu/│   │   ├── drawable/

│   └── AndroidManifest.xml│   │   └── menu/

```│   └── AndroidManifest.xml

```

### 2. 필수 라이브러리 (build.gradle.kts)

### 2. 필수 라이브러리 (build.gradle.kts)

```kotlin

dependencies {```kotlin

    // Kotlindependencies {

    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.9.0")    // Kotlin

    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.9.0")

    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")

    // AndroidX

    implementation("androidx.core:core-ktx:1.12.0")    // AndroidX

    implementation("androidx.appcompat:appcompat:1.6.1")    implementation("androidx.core:core-ktx:1.12.0")

    implementation("com.google.android.material:material:1.11.0")    implementation("androidx.appcompat:appcompat:1.6.1")

    implementation("androidx.constraintlayout:constraintlayout:2.1.4")    implementation("com.google.android.material:material:1.11.0")

    implementation("androidx.constraintlayout:constraintlayout:2.1.4")

    // ViewModel & LiveData

    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")    // ViewModel & LiveData

    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.7.0")    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")

    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.7.0")

    // AdMob

    implementation("com.google.android.gms:play-services-ads:22.6.0")    // AdMob

    implementation("com.google.android.gms:play-services-ads:22.6.0")

    // Image Processing

    implementation("androidx.exifinterface:exifinterface:1.3.7")    // Image Processing

    implementation("androidx.exifinterface:exifinterface:1.3.7")

    // Testing

    testImplementation("junit:junit:4.13.2")    // Testing

    androidTestImplementation("androidx.test.ext:junit:1.1.5")    testImplementation("junit:junit:4.13.2")

}    androidTestImplementation("androidx.test.ext:junit:1.1.5")

```}

```

### 3. 권한 설정 (AndroidManifest.xml)

### 3. 권한 설정 (AndroidManifest.xml)

```xml

<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"```xml

    android:maxSdkVersion="32" /><uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"

<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"    android:maxSdkVersion="32" />

    android:maxSdkVersion="28" /><uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"

<uses-permission android:name="android.permission.READ_MEDIA_IMAGES"    android:maxSdkVersion="28" />

    android:minSdkVersion="33" /><uses-permission android:name="android.permission.READ_MEDIA_IMAGES"

<uses-permission android:name="android.permission.INTERNET" />    android:minSdkVersion="33" />

```<uses-permission android:name="android.permission.INTERNET" />

```

---

---

## 다국어 지원 구현 계획

## 다국어 지원 구현 계획

### strings.xml 주요 항목

### strings.xml 주요 항목

- 앱 이름

- 버튼 텍스트 (파일 선택, 변환 시작, 광고 보기)- 앱 이름

- 진행 상태 메시지- 버튼 텍스트 (파일 선택, 변환 시작, 광고 보기)

- 에러 메시지- 진행 상태 메시지

- 설정 항목- 에러 메시지

- 알림 메시지- 설정 항목

- Dialog 메시지- 알림 메시지

- Dialog 메시지

### LocaleManager 기능

### LocaleManager 기능

- 시스템 언어 자동 감지

- 사용자 선택 언어 저장 (SharedPreferences)- 시스템 언어 자동 감지

- Activity 재시작 없이 런타임 언어 변경- 사용자 선택 언어 저장 (SharedPreferences)

- 앱 재시작 시 저장된 언어 복원- Activity 재시작 없이 런타임 언어 변경

- 앱 재시작 시 저장된 언어 복원

---

---

## 테스트 계획

## 테스트 계획

### 기능 테스트

### 기능 테스트

1. 단일 파일 변환 정확성

2. 배치 변환 정확성1. 단일 파일 변환 정확성

3. 광고 시청 후 기능 잠금 해제2. 배치 변환 정확성

4. 언어 전환 동작3. 광고 시청 후 기능 잠금 해제

5. 권한 처리 (허용/거부)4. 언어 전환 동작

6. 저장소 접근 (내부/외부)5. 권한 처리 (허용/거부)

7. 대용량 파일 처리6. 저장소 접근 (내부/외부)

8. 메모리 부족 상황 대응7. 대용량 파일 처리

8. 메모리 부족 상황 대응

### 호환성 테스트

### 호환성 테스트

- Android 8.0 ~ 14 버전

- 다양한 제조사 기기 (Samsung, LG, Pixel)- Android 8.0 ~ 14 버전

- 다양한 화면 크기 (폰, 태블릿)- 다양한 제조사 기기 (Samsung, LG, Pixel)

- 다양한 DNG 파일 (Canon, Nikon, Sony, Samsung 등)- 다양한 화면 크기 (폰, 태블릿)

- 다양한 DNG 파일 (Canon, Nikon, Sony, Samsung 등)

### 성능 테스트

### 성능 테스트

- 변환 속도 측정

- 메모리 사용량 모니터링- 변환 속도 측정

- 배터리 소모량 측정- 메모리 사용량 모니터링

- 광고 로딩 시간- 배터리 소모량 측정

- 광고 로딩 시간

---

---

## 리스크 관리

## 리스크 관리

| 리스크 | 영향도 | 대응 방안 |

|--------|--------|-----------|| 리스크 | 영향도 | 대응 방안 |

| DNG 라이브러리 호환성 문제 | 높음 | 여러 라이브러리 테스트, 대안 준비 ||--------|--------|-----------|

| 메모리 부족 (대용량 파일) | 중간 | 이미지 다운샘플링, 청크 처리 || DNG 라이브러리 호환성 문제 | 높음 | 여러 라이브러리 테스트, 대안 준비 |

| 광고 로딩 실패 | 중간 | 재시도 로직, 테스트 광고 || 메모리 부족 (대용량 파일) | 중간 | 이미지 다운샘플링, 청크 처리 |

| Android 버전별 권한 차이 | 중간 | 조건부 권한 요청, 호환성 레이어 || 광고 로딩 실패 | 중간 | 재시도 로직, 테스트 광고 |

| 개발 일정 지연 | 낮음 | 우선순위 조정, 단계별 배포 || Android 버전별 권한 차이 | 중간 | 조건부 권한 요청, 호환성 레이어 |

| 개발 일정 지연 | 낮음 | 우선순위 조정, 단계별 배포 |

---

---

## 우선순위

## 우선순위

### Must Have (필수)

### Must Have (필수)

1. 단일 DNG → JPG 변환

2. 기본 UI 및 파일 선택1. 단일 DNG → JPG 변환

3. 한국어 지원2. 기본 UI 및 파일 선택

4. 권한 관리3. 한국어 지원

4. 권한 관리

### Should Have (중요)

### Should Have (중요)

1. 배치 변환

2. 광고 통합1. 배치 변환

3. 영어 지원2. 광고 통합

4. 진행률 표시3. 영어 지원

4. 진행률 표시

### Nice to Have (선택)

### Nice to Have (선택)

1. 썸네일 미리보기

2. 변환 완료 알림1. 썸네일 미리보기

3. 최근 폴더 빠른 접근2. 변환 완료 알림

4. 통계 기능3. 최근 폴더 빠른 접근

4. 통계 기능

---

---

## 성공 기준

## 성공 기준

- [ ] 단일/배치 DNG to JPG 변환 정상 동작

- [ ] 4K 화질 출력 (3840x2160 이상)- [ ] 단일/배치 DNG to JPG 변환 정상 동작

- [ ] 한국어/영어 완벽 지원- [ ] 4K 화질 출력 (3840x2160 이상)

- [ ] 광고 시청 후 프리미엄 기능 활성화- [ ] 한국어/영어 완벽 지원

- [ ] Android 8.0~14 안정 동작- [ ] 광고 시청 후 프리미엄 기능 활성화

- [ ] 크래시 발생률 < 1%- [ ] Android 8.0~14 안정 동작

- [ ] Google Play Store 배포 완료- [ ] 크래시 발생률 < 1%

- [ ] Google Play Store 배포 완료

---

---

## 다음 단계

## 다음 단계

1. 개발 환경 설정 완료

2. Week 1 Day 1-2 작업 시작1. 개발 환경 설정 완료

3. 매일 진행 상황 체크2. Week 1 Day 1-2 작업 시작

4. 주간 회고 및 계획 조정3. 매일 진행 상황 체크

4. 주간 회고 및 계획 조정
