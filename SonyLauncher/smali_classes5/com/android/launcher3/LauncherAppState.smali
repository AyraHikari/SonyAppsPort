.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAppState$IconObserver;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_ROLOAD:Ljava/lang/String; = "force-reload-launcher"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/LauncherAppState;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ICON_STATE:Ljava/lang/String; = "pref_icon_shape_path"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

.field private final mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public static synthetic $r8$lambda$igD78ILRoBqqLUxNDL79OeU1_bE(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconProvider(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshAndReloadLauncher(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const-string v0, "app_icons.db"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 97
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 98
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 99
    .local v0, "modelChangeReceiver":Lcom/android/launcher3/util/SimpleBroadcastReceiver;
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    const-string v5, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    const-string v6, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 109
    sget-object v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 110
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    .line 112
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 113
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/pm/UserCache;->addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    .line 114
    .local v1, "userChangeListener":Lcom/android/launcher3/util/SafeCloseable;
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 116
    new-instance v2, Lcom/android/launcher3/LauncherAppState$IconObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver-IA;)V

    .line 117
    .local v2, "observer":Lcom/android/launcher3/LauncherAppState$IconObserver;
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 118
    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 117
    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/icons/LauncherIconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v3

    .line 119
    .local v3, "iconChangeTracker":Lcom/android/launcher3/util/SafeCloseable;
    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;

    invoke-direct {v5, v3}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 120
    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 123
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v6, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;

    invoke-direct {v6, v4, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;-><init>(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 128
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    sget-object v4, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 129
    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/pm/InstallSessionHelper;->registerInstallTracker(Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Lcom/android/launcher3/pm/InstallSessionTracker;

    move-result-object v4

    .line 130
    .local v4, "installSessionTracker":Lcom/android/launcher3/pm/InstallSessionTracker;
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda10;

    invoke-direct {v6, v4}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 133
    sget-object v5, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/SettingsCache;

    .line 134
    .local v5, "settingsCache":Lcom/android/launcher3/util/SettingsCache;
    new-instance v6, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 135
    .local v6, "notificationLister":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    sget-object v7, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 136
    sget-object v7, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    .line 137
    iget-object v7, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v8, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;

    invoke-direct {v8, v5, v6}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconCacheFileName"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    .line 142
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 144
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 145
    new-instance v2, Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/LauncherIconProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    .line 146
    new-instance v9, Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v9, p1, v1, p2, v2}, Lcom/android/launcher3/icons/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v9, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 148
    new-instance v1, Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/AppFilter;

    invoke-direct {v7, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v8, v2

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/LauncherModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 150
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda12;

    invoke-direct {v1, v9}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public static getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "observer"    # Lcom/android/launcher3/LauncherAppState$IconObserver;

    .line 125
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 1
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "notificationLister"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 138
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private onNotificationSettingsChanged(Z)V
    .locals 3
    .param p1, "areNotificationDotsEnabled"    # Z

    .line 154
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->requestRebind(Landroid/content/ComponentName;)V

    .line 158
    :cond_0
    return-void
.end method

.method private refreshAndReloadLauncher()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconParams(II)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 165
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->destroy()V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 174
    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 176
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIconCache()Lcom/android/launcher3/icons/IconCache;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    return-object v0
.end method

.method public getIconProvider()Lcom/android/launcher3/icons/IconProvider;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object v0
.end method

.method public getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-LauncherAppState(Z)V
    .locals 0
    .param p1, "modelPropertiesChanged"    # Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    .line 93
    :cond_0
    return-void
.end method

.method synthetic lambda$new$1$com-android-launcher3-LauncherAppState(Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 1
    .param p1, "modelChangeReceiver"    # Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
