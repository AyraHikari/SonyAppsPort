.class public Lcom/android/launcher3/widget/WidgetManagerHelper;
.super Ljava/lang/Object;
.source "WidgetManagerHelper.java"


# static fields
.field public static final WIDGET_OPTION_RESTORE_COMPLETED:Ljava/lang/String; = "appWidgetRestoreCompleted"


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 55
    return-void
.end method

.method private static allWidgetsSteam(Landroid/content/Context;)Ljava/util/stream/Stream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/stream/Stream<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 122
    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    .line 123
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 124
    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    .line 125
    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager;)V

    .line 127
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 128
    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$allWidgetsSteam$0(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "awm"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 127
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 93
    const/16 v0, -0x64

    if-gt p1, v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 97
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 105
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 106
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    .line 109
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 3
    .param p1, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->allWidgetsSteam(Landroid/content/Context;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 61
    const/16 v0, -0x64

    if-gt p1, v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProvider(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 65
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isAppWidgetRestored(I)Z
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 118
    const-string v1, "appWidgetRestoreCompleted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 117
    return v0
.end method
