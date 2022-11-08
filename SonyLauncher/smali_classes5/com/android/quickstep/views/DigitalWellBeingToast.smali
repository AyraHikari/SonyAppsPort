.class public final Lcom/android/quickstep/views/DigitalWellBeingToast;
.super Ljava/lang/Object;
.source "DigitalWellBeingToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/DigitalWellBeingToast$SPLIT_BANNER_CONFIG;
    }
.end annotation


# static fields
.field static final MINUTE_MS:I = 0xea60

.field static final OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

.field private static final SPLIT_BANNER_FULLSCREEN:I = 0x0

.field private static final SPLIT_GRID_BANNER_LARGE:I = 0x1

.field private static final SPLIT_GRID_BANNER_SMALL:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_LEFT_ICON_ONLY:F = 0.4f

.field private static final THRESHOLD_RIGHT_ICON_ONLY:F = 0.6f


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mAppRemainingTimeMs:J

.field private mBanner:Landroid/view/View;

.field private mBannerOffsetPercentage:F

.field private mHasLimit:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mModalOffset:F

.field private mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mSplitBannerConfig:I

.field private mSplitOffsetTranslationX:F

.field private mSplitOffsetTranslationY:F

.field private mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModalOffset(Lcom/android/quickstep/views/DigitalWellBeingToast;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mModalOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldBannerOutlineProvider(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitOffsetTranslationY(Lcom/android/quickstep/views/DigitalWellBeingToast;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.APP_USAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

    .line 87
    const-class v0, Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/DigitalWellBeingToast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mModalOffset:F

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    .line 112
    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 113
    iput-object p2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 114
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 115
    return-void
.end method

.method private getContentDescriptionForTask(Lcom/android/systemui/shared/recents/model/Task;JJ)Ljava/lang/String;
    .locals 5
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "appUsageLimitTimeMs"    # J
    .param p4, "appRemainingTimeMs"    # J

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    sget v1, Lcom/android/launcher3/R$string;->task_contents_description_with_remaining_time:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 289
    const/4 v3, 0x1

    invoke-direct {p0, p4, p5, v3}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 285
    :goto_0
    return-object v0
.end method

.method private getReadableDuration(Ljava/time/Duration;Landroid/icu/text/MeasureFormat$FormatWidth;IZ)Ljava/lang/String;
    .locals 9
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "formatWidthHourAndMinute"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "durationLessThanOneMinuteStringId"    # I
    .param p4, "forceFormatWidth"    # Z

    .line 197
    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 198
    .local v0, "hours":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/time/Duration;->minusHours(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    .line 201
    .local v1, "minutes":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/icu/util/Measure;

    new-instance v6, Landroid/icu/util/Measure;

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v6, v5, v3

    new-instance v3, Landroid/icu/util/Measure;

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v5, v2

    .line 203
    invoke-virtual {v4, v5}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v2

    .line 202
    return-object v2

    .line 209
    :cond_0
    if-lez v0, :cond_2

    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 212
    if-eqz p4, :cond_1

    move-object v5, p2

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 210
    :goto_0
    invoke-static {v4, v5}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v4

    new-array v2, v2, [Landroid/icu/util/Measure;

    new-instance v5, Landroid/icu/util/Measure;

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v5, v2, v3

    invoke-virtual {v4, v2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v2

    .line 210
    return-object v2

    .line 217
    :cond_2
    if-lez v1, :cond_4

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 220
    if-eqz p4, :cond_3

    move-object v5, p2

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 218
    :goto_1
    invoke-static {v4, v5}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v4

    new-array v2, v2, [Landroid/icu/util/Measure;

    new-instance v5, Landroid/icu/util/Measure;

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v5, v2, v3

    invoke-virtual {v4, v2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v2

    .line 218
    return-object v2

    .line 225
    :cond_4
    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v4

    if-lez v4, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 231
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eqz p4, :cond_6

    move-object v5, p2

    goto :goto_2

    :cond_6
    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 230
    :goto_2
    invoke-static {v4, v5}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v4

    new-array v2, v2, [Landroid/icu/util/Measure;

    new-instance v5, Landroid/icu/util/Measure;

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v5, v2, v3

    invoke-virtual {v4, v2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v2

    .line 230
    return-object v2
.end method

.method private getText(JZ)Ljava/lang/String;
    .locals 6
    .param p1, "remainingTime"    # J
    .param p3, "forContentDesc"    # Z

    .line 242
    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 243
    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    mul-long/2addr v2, v0

    goto :goto_0

    .line 244
    :cond_0
    move-wide v2, p1

    .line 241
    :goto_0
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    .line 245
    .local v0, "duration":Ljava/time/Duration;
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget v2, Lcom/android/launcher3/R$string;->shorter_duration_less_than_one_minute:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getReadableDuration(Ljava/time/Duration;Landroid/icu/text/MeasureFormat$FormatWidth;IZ)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "readableDuration":Ljava/lang/String;
    if-nez p3, :cond_3

    iget v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 257
    const-string v2, ""

    return-object v2

    .line 260
    :cond_2
    return-object v1

    .line 250
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    sget v4, Lcom/android/launcher3/R$string;->time_left_for_app:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/BaseDraggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private replaceBanner(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 294
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->resetOldBanner()V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBanner(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method private resetOldBanner()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 301
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->removeView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->digital_wellbeing_toast:I

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 305
    :cond_0
    return-void
.end method

.method private setBanner(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 308
    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    .line 309
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setupAndAddBanner()V

    .line 311
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerOutline()V

    .line 313
    :cond_0
    return-void
.end method

.method private setBannerOutline()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mOldBannerOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 335
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/views/DigitalWellBeingToast$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast$1;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 344
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 345
    return-void
.end method

.method private setLimit(JJ)V
    .locals 8
    .param p1, "appUsageLimitTimeMs"    # J
    .param p3, "appRemainingTimeMs"    # J

    .line 125
    iput-wide p3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->digital_wellbeing_toast:I

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, "toast":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    sget v2, Lcom/android/launcher3/R$drawable;->ic_hourglass_top:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v1, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->replaceBanner(Landroid/view/View;)V

    .line 133
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 134
    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getContentDescriptionForTask(Lcom/android/systemui/shared/recents/model/Task;JJ)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private setNoLimit()V
    .locals 2

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    .line 119
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->replaceBanner(Landroid/view/View;)V

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    .line 122
    return-void
.end method

.method private setupAndAddBanner()V
    .locals 11

    .line 316
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 318
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 319
    .local v1, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 320
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 321
    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v10

    .line 322
    .local v10, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 323
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getMeasuredWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 324
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 325
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v7

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v9, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    .line 323
    move-object v2, v10

    move-object v6, v1

    invoke-interface/range {v2 .. v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 326
    .local v2, "translations":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationX:F

    .line 327
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    .line 328
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationY()V

    .line 329
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationX()V

    .line 330
    iget-object v3, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v4, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->addView(Landroid/view/View;)V

    .line 331
    return-void
.end method

.method private updateTranslationX()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 374
    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mModalOffset:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitOffsetTranslationY:F

    add-float/2addr v1, v2

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 366
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    .line 138
    iget-wide v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mAppRemainingTimeMs:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/DigitalWellBeingToast;->getText(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mHasLimit:Z

    return v0
.end method

.method public initialize(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 146
    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 147
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method synthetic lambda$initialize$0$com-android-quickstep-views-DigitalWellBeingToast(JJ)V
    .locals 3
    .param p1, "appUsageLimitTimeMs"    # J
    .param p3, "appRemainingTimeMs"    # J

    .line 158
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setLimit(JJ)V

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setNoLimit()V

    .line 163
    :goto_1
    return-void
.end method

.method synthetic lambda$initialize$1$com-android-quickstep-views-DigitalWellBeingToast(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 11
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 150
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object v0

    .line 153
    .local v0, "usageLimit":Landroid/content/pm/LauncherApps$AppUsageLimit;
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getTotalUsageLimit()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v1

    .line 155
    .local v7, "appUsageLimitTimeMs":J
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getUsageRemaining()J

    move-result-wide v1

    :cond_1
    move-wide v9, v1

    .line 157
    .local v9, "appRemainingTimeMs":J
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    new-instance v2, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda2;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/quickstep/views/DigitalWellBeingToast$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/views/DigitalWellBeingToast;JJ)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public openAppUsageSettings(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 265
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/quickstep/views/DigitalWellBeingToast;->OPEN_APP_USAGE_SETTINGS_TEMPLATE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 267
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 267
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    .line 271
    .local v1, "activity":Lcom/android/launcher3/BaseActivity;
    nop

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 271
    const/4 v4, 0x0

    invoke-static {p1, v4, v4, v2, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 274
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/BaseActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "activity":Lcom/android/launcher3/BaseActivity;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/quickstep/views/DigitalWellBeingToast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open app usage settings for task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 279
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method setBannerColorTint(IF)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "amount"    # F

    .line 377
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 381
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 383
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 384
    .local v0, "layerPaint":Landroid/graphics/Paint;
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 385
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 386
    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 387
    return-void
.end method

.method public setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 4
    .param p1, "stagedSplitBounds"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 168
    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 169
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 170
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 171
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 178
    iput v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    .line 179
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 185
    move v1, v3

    goto :goto_0

    :cond_2
    nop

    :goto_0
    iput v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    goto :goto_2

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 188
    move v1, v3

    goto :goto_1

    :cond_4
    nop

    :goto_1
    iput v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    .line 190
    :goto_2
    return-void

    .line 172
    :cond_5
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mSplitBannerConfig:I

    .line 173
    return-void
.end method

.method updateBannerOffset(FF)V
    .locals 1
    .param p1, "offsetPercentage"    # F
    .param p2, "verticalOffset"    # F

    .line 348
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 349
    iput p2, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mModalOffset:F

    .line 350
    iput p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBannerOffsetPercentage:F

    .line 351
    invoke-direct {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateTranslationY()V

    .line 352
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast;->mBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 354
    :cond_0
    return-void
.end method
