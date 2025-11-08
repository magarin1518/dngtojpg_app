# TDD 작업 보드 - DNG to JPG Converter

## 작업 원칙

- 모든 기능은 `RED → GREEN → REFACTOR` 사이클에 따라 구현하고, 테스트 케이스 정의 없이는 코드를 작성하지 않는다.
- 도메인 계층(변환 로직)과 UI 계층(Flutter 위젯)을 분리하여, 비즈니스 로직은 Dart 단위 테스트로, UI 흐름은 위젯/통합 테스트로 검증한다.
- 각 작업은 완료 기준(Definition of Done)에 테스트 통과, 린트 통과, 문서 업데이트(필요 시)를 포함한다.

---

## Iteration 0 (Week 1 Day 1-2) — 프로젝트 셋업 및 CI 기반 마련

- [x] **Task 0.1**: Flutter 프로젝트 초기화 & 필수 패키지 추가 *(Flutter 기본 템플릿 생성 및 스모크 테스트 준비됨)*
  - 테스트 선행: `flutter test`에서 실행될 스모크 테스트 작성 (`main_app_smoke_test.dart`) — `MaterialApp`과 기본 라우트 로드 확인.
  - 기대 산출물: 기본 앱 구조, `pubspec.yaml` 의존성, 테스트 폴더 구조.
- [x] **Task 0.2**: 폴더 구조 및 TDD 유틸 템플릿 구축 *(기본 폴더/홈 화면 스캐폴딩, 테스트 헬퍼 및 단위 테스트 완료)*
  - 테스트 선행: 공용 헬퍼(`test/helpers/widget_tester_extension.dart`)에 대한 유틸 단위 테스트.
  - 기대 산출물: `lib/screens`, `lib/services`, `lib/providers`, `lib/widgets`, `lib/l10n`, `test/` 하위 구조.
- [x] **Task 0.3**: GitHub Actions or 대체 CI 구성 (로컬에서는 스크립트)
  - 테스트 선행: CI 스크립트 내 `flutter test` / `flutter analyze`가 실패 시 빌드 중단되는지 로컬 시뮬레이션.
  - 기대 산출물: CI 파이프라인 정의, 품질 게이트 확보.

---

## Iteration 1 (Week 1 Day 3-7) — 기본 UI & 다국어 틀 구축

- [ ] **Story 1.1: 앱 국제화 프레임워크**
  - 테스트 선행: 로케일 전환 위젯 테스트 (`locale_switcher_test.dart`) — `LocaleManager`로 `Locale('en')` 전환 시 영어 문자열 표기 검증.
  - 구현 범위: `LocaleManager`, `l10n.yaml`, `app_ko.arb`, `app_en.arb`, `MaterialApp`에 로케일 바인딩.
- [ ] **Story 1.2: 홈 화면 기본 레이아웃**
  - 테스트 선행: 위젯 테스트 — 홈 화면에서 "파일 선택" 버튼/진행률 표기/설정 버튼 표시 여부 검증.
  - 구현 범위: `HomeScreen` UI, 더미 상태 공급자(Provider) 작성.
- [ ] **Story 1.3: 설정 화면 및 언어 선택 UI**
  - 테스트 선행: 위젯 테스트 — 설정 화면에서 언어 선택 시 `LocaleManager` 호출 확인 (Mock 사용).
  - 구현 범위: `SettingsScreen`, 언어 선택 드롭다운, `Provider`와의 데이터 바인딩.

---

## Iteration 2 (Week 2 Day 8-14) — 파일 선택 & 변환 엔진 코어

- [ ] **Story 2.1: 권한 및 파일 선택 서비스**
  - 테스트 선행: 서비스 단위 테스트 — 권한 거부/허용 시 상태 전환, FilePicker 모킹을 통한 단일/다중 선택 케이스 검증.
  - 구현 범위: `PermissionHelper`, `FilePickerService`, Android/iOS 권한 브리징 코드.
- [ ] **Story 2.2: 단일 DNG → JPG 변환 엔진**
  - 테스트 선행: 순수 Dart 단위 테스트 — 샘플 DNG 픽스처(모킹/샘플 데이터)로 JPG 바이트 출력 형식 검증, EXIF 메타 유지 여부 체크(Mock).
  - 구현 범위: `DngToJpgConverter`, 메모리 최적화 로직, EXIF 보존.
- [ ] **Story 2.3: 변환 진행 상태 관리 (Provider/ViewModel)**
  - 테스트 선행: 상태 관리 단위 테스트 — 단일 파일 변환 시작 → 성공 → 진행률/결과 상태 변환 시나리오.
  - 구현 범위: `ConversionViewModel` (Provider), `ConversionResult` 모델, 에러/성공 상태 처리.

---

## Iteration 3 (Week 2 Day 13-14) — 배치 변환 & 비동기 처리

- [ ] **Story 3.1: 코루틴/Isolate 기반 비동기 처리 래퍼**
  - 테스트 선행: 단위 테스트 — 여러 파일 큐 추가 시 예상 변환 순서와 진행률 업데이트 검증 (Isolate/compute 함수 모킹).
  - 구현 범위: 배치 변환 큐, 진행률 스트림, 실패 복구 로직.
- [ ] **Story 3.2: 배치 변환 UI & UX**
  - 테스트 선행: 위젯 테스트 — 다중 선택 후 진행률 UI가 파일 개수에 맞게 업데이트 되는지 검증.
  - 구현 범위: 홈 화면 업데이트, 결과 다이얼로그, 실패 핸들링 메시지.

---

## Iteration 4 (Week 3 Day 15-18) — 광고 & 프리미엄 플로우

- [ ] **Story 4.1: Google AdMob Rewarded Ad 통합**
  - 테스트 선행: AdManager 단위 테스트 — 광고 시청 성공/실패 시 상태 전환(Mock `google_mobile_ads`).
  - 구현 범위: `AdManager`, 광고 로딩/리트라이, Rewarded 콜백 처리.
- [ ] **Story 4.2: 광고와 배치 변환 권한 연동**
  - 테스트 선행: 상태 테스트 — 광고 성공 시 배치 변환 허용, 실패 시 안내 다이얼로그 노출.
  - 구현 범위: ViewModel과 AdManager 연동, UI 잠금 해제 표시.

---

## Iteration 5 (Week 3 Day 17-20) — 추가 기능 & 최적화

- [ ] **Story 5.1: 썸네일 미리보기**
  - 테스트 선행: 위젯 테스트 — 변환 전/후 썸네일이 올바른 이미지를 표시하는지 로컬 픽스처로 검증.
  - 구현 범위: 썸네일 생성 서비스, 캐시 전략, UI 연동.
- [ ] **Story 5.2: 최근 폴더 저장/불러오기**
  - 테스트 선행: 단위 테스트 — `SharedPreferences` Mock으로 최근 경로 저장/로드 시나리오 검증.
  - 구현 범위: `RecentFolderRepository`, 홈 화면 단축 접근 UI.
- [ ] **Story 5.3: 변환 완료 알림 (Notification)**
  - 테스트 선행: 플랫폼 채널 단위 테스트 — 알림 트리거 시 올바른 Payload 전달 Mock 검증.
  - 구현 범위: Android `NotificationManager`, iOS 로컬 알림 설정.

---

## Iteration 6 (Week 3 Day 19-21) — 통합 테스트 & 배포 준비

- [ ] **Story 6.1: 통합 테스트 시나리오 작성**
  - 테스트 선행: `integration_test` 패키지로 e2e 시나리오 정의 — 단일 변환, 광고 후 배치 변환, 언어 전환, 권한 거부 흐름.
  - 구현 범위: 시나리오 스크립트, 테스트 픽스처 자동 정리.
- [ ] **Story 6.2: 릴리스 빌드 파이프라인**
  - 테스트 선행: CI에서 릴리스 빌드 플래그 테스트 실행 (빌드 실패 시 경고).
  - 구현 범위: `flutter build apk --release`, ProGuard/R8 구성, 스토어 메타데이터 초안.
- [ ] **Story 6.3: 품질 지표 점검 및 리포트**
  - 테스트 선행: 테스트 커버리지 리포트 항목 정의(`lcov`) 및 최소 기준 설정.
  - 구현 범위: 커버리지 수집 스크립트, 버그 리스트/리스크 리포트 업데이트.

---

## 부록 — 테스트 데이터 & 도구 준비

- [ ] 샘플 DNG 파일(제조사별)과 기대 JPG 아웃풋을 `test/fixtures/`에 추가.
- [ ] 광고/권한/파일 픽커 등의 외부 의존성을 위한 Mock/Stub 클래스 생성.
- [ ] 메모리/성능 측정을 위한 DevTools 스크립트 문서화.

### 테스트 픽스처 & 목업 세부 설계 (v1)

- **DNG 샘플 세트**: `canon_eos_r5.dng`, `nikon_z6.dng`, `sony_a7riv.dng`, `samsung_s23.dng`를 최소 해상도 24MP 이상으로 준비하고, 각 파일에 대한 기대 JPG 해시(`.sha256`) 저장.
- **JPEG 아웃풋 템플릿**: 각 DNG에 대한 95% 품질 JPG를 `expected/` 디렉터리에 배치하여 `image` 패키지 기반 비교 테스트에 활용.
- **FilePicker Mock**: `test/mocks/mock_file_picker.dart`에서 단일/다중 선택, 취소, 권한 거부 시나리오를 지원하는 Fake 구현.
- **Permission Handler Stub**: 플랫폼별 권한 응답을 제어할 수 있는 `MockPermissionHandler` 클래스 작성, 기본 허용/거부 플래그 제공.
- **AdMob Mock**: `MockRewardedAd`로 로딩 성공/실패, 보상 콜백, 재시도 횟수 검증 로직 포함.
- **Isolate/compute Wrapper Stub**: `FakeCompute` 유틸을 통해 비동기 변환 흐름을 동기적으로 검증할 수 있도록 Future 제어.
- **EXIF Validator Helper**: JPG 메타데이터 보존 여부를 검증하기 위한 `ExifMatcher` 헬퍼 함수 정의.

### CI 파이프라인 초안 (v1)

- **GitHub Actions 워크플로우**: `.github/workflows/flutter.yml` 생성, `pull_request`와 `push/main` 트리거, Windows/Ubuntu 매트릭스로 `flutter --version` 캐시 후 `flutter pub get`, `flutter analyze`, `flutter test --coverage` 실행.
- **캐시 전략**: `actions/cache`로 `~/.pub-cache`와 `build/` 캐시, `pubspec.lock`을 키에 포함해 의존성 변경 감지.
- **커버리지 업로드**: `coverage/lcov.info`를 `actions/upload-artifact`로 저장하고, 로컬에서는 `tool/run_ci_checks.ps1`로 최소 커버리지(예: 70%) 검증.
- **로컬 스크립트**: `tool/run_ci_checks.ps1`에 `flutter analyze; flutter test --coverage; genhtml` 순으로 실행, Windows PowerShell 호환 명령 사용.
- **품질 게이트**: 워크플로우에서 테스트 실패나 커버리지 미달 시 `fail-fast`, PR 머지 전 상태 체크로 표시.

> 모든 Story는 "테스트 작성 → 테스트 실패 확인 → 최소 구현 → 테스트 통과 → 리팩터링" 순서로 처리한다.
