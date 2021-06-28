.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;
.super Ljava/lang/Object;
.source "FirebaseCrashlyticsUtils.java"


# static fields
.field private static volatile sCrashlyticsUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableCrashlyticsExceptionHandler(Landroid/content/Context;Z)V
    .locals 1

    .line 44
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz p1, :cond_3

    .line 52
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sCrashlyticsUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_2

    .line 57
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_1

    .line 58
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 62
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sCrashlyticsUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    :cond_2
    sget-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->sCrashlyticsUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    return-void
.end method

.method public static handleFirebaseCrashlyticsSetup(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 29
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->isPersonalDataCollectionAllowedByUser(Landroid/content/Context;)Z

    move-result v1

    .line 30
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isCrashlyticsDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->enableCrashlyticsExceptionHandler(Landroid/content/Context;Z)V

    return-void
.end method
