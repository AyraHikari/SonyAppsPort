.class public Lcom/android/quickstep/logging/SettingsChangeLogger;
.super Ljava/lang/Object;
.source "SettingsChangeLogger.java"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;
    }
.end annotation


# static fields
.field private static final BOOLEAN_PREF:Ljava/lang/String; = "SwitchPreference"

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/logging/SettingsChangeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceScreen"

.field private static final TAG:Ljava/lang/String; = "SettingsChangeLogger"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomeScreenSuggestionEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mLoggablePrefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;",
            ">;"
        }
    .end annotation
.end field

.field private mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private mNotificationDotsEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public static synthetic $r8$lambda$VxhAIejPU8p0nkI8yr6FLMiGkeA(Landroid/content/Context;)Lcom/android/quickstep/logging/SettingsChangeLogger;
    .locals 1

    new-instance v0, Lcom/android/quickstep/logging/SettingsChangeLogger;

    invoke-direct {v0, p0}, Lcom/android/quickstep/logging/SettingsChangeLogger;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$l6toowoxxrUOJQmCbDLkww4Uzl0(Lcom/android/quickstep/logging/SettingsChangeLogger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->onNotificationDotsChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/logging/SettingsChangeLogger;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 87
    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->loadPrefKeys(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mLoggablePrefs:Landroid/util/ArrayMap;

    .line 88
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 89
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 91
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    .line 95
    .local v0, "mSettingsCache":Lcom/android/launcher3/util/SettingsCache;
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/logging/SettingsChangeLogger;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 97
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->onNotificationDotsChanged(Z)V

    .line 98
    return-void
.end method

.method static synthetic lambda$logSnapshot$0(Lcom/android/launcher3/util/DisplayController$NavigationMode;)Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 1
    .param p0, "mode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0
.end method

.method static synthetic lambda$logSnapshot$1(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)I
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lp"    # Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    .line 189
    iget-boolean v0, p2, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->defaultValue:Z

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOn:I

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOff:I

    :goto_0
    return v0
.end method

.method static synthetic lambda$logSnapshot$2(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)V
    .locals 1
    .param p0, "logger"    # Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "lp"    # Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    .line 188
    new-instance v0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)V

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private static loadPrefKeys(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$xml;->launcher_preferences:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 102
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;>;"
    :try_start_0
    const-string v2, "androidx.preference.PreferenceScreen"

    invoke-static {v0, v2}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 108
    .local v2, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 109
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_4

    :cond_1
    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    .line 110
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    const-string v5, "SwitchPreference"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    nop

    .line 115
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/R$styleable;->LoggablePref:[I

    .line 114
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 116
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/launcher3/R$styleable;->LoggablePref_android_key:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "key":Ljava/lang/String;
    new-instance v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;-><init>(Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref-IA;)V

    .line 118
    .local v7, "pref":Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;
    sget v8, Lcom/android/launcher3/R$styleable;->LoggablePref_android_defaultValue:I

    .line 119
    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->defaultValue:Z

    .line 120
    sget v3, Lcom/android/launcher3/R$styleable;->LoggablePref_logIdOn:I

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOn:I

    .line 121
    sget v3, Lcom/android/launcher3/R$styleable;->LoggablePref_logIdOff:I

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOff:I

    .line 122
    iget v3, v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOff:I

    if-lez v3, :cond_3

    iget v3, v7, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;->eventIdOn:I

    if-lez v3, :cond_3

    .line 123
    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;
    :cond_3
    goto :goto_0

    .line 129
    .end local v2    # "depth":I
    .end local v4    # "type":I
    :cond_4
    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SettingsChangeLogger"

    const-string v4, "Error parsing preference xml"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private onNotificationDotsChanged(Z)V
    .locals 3
    .param p1, "isDotsEnabled"    # Z

    .line 135
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DOT_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DOT_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    nop

    .line 139
    .local v0, "mEvent":Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNotificationDotsEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNotificationDotsEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 142
    :cond_1
    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNotificationDotsEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 143
    return-void
.end method


# virtual methods
.method public logSnapshot(Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4
    .param p1, "snapshotInstanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 175
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNotificationDotsEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 176
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 177
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mHomeScreenSuggestionEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 178
    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    iget-object v2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/DeviceGridState;->getWorkspaceSizeEvent()Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 179
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 181
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    const/4 v2, 0x0

    const-string v3, "themed_icons"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_THEMED_ICON_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 185
    :cond_0
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_THEMED_ICON_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 183
    :goto_0
    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mLoggablePrefs:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 190
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 147
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 155
    const-string v0, "last_prediction_enabled_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "migration_src_workspace_size"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string v1, "themed_icons"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mLoggablePrefs:Landroid/util/ArrayMap;

    .line 158
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    :cond_0
    nop

    .line 161
    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    .line 161
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mHomeScreenSuggestionEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 165
    iget-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger;->mHomeScreenSuggestionEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 167
    :cond_2
    return-void
.end method
