.class public Lcom/android/launcher3/SecondaryDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SecondaryDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    }
.end annotation


# static fields
.field private static final CACHE_EXPIRE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "SecondaryDropTarget"


# instance fields
.field private final mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

.field protected mCurrentAccessibilityAction:I

.field private mHadPendingAlarm:Z

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mUninstallDisabledCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/SecondaryDropTarget;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/SecondaryDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    .line 80
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    .line 81
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 82
    return-void
.end method

.method private doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "logInstanceId"    # Lcom/android/launcher3/logging/InstanceId;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 228
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    if-eqz p2, :cond_0

    .line 229
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 231
    :cond_0
    iget v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    sget v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    if-ne v1, v2, :cond_1

    .line 232
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_UNINSTALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 233
    :cond_1
    iget v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    sget v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    if-ne v1, v2, :cond_2

    .line 234
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 236
    :cond_2
    :goto_0
    return-void
.end method

.method private getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 157
    instance-of v0, p2, Landroid/appwidget/AppWidgetHostView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, p2}, Lcom/android/launcher3/SecondaryDropTarget;->getReconfigurableWidgetId(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    return v0

    .line 161
    :cond_0
    return v1

    .line 162
    :cond_1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREDICTION_DISMISS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    return v0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 167
    .local v0, "uninstallDisabled":Ljava/lang/Boolean;
    if-nez v0, :cond_5

    .line 168
    nop

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 170
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 171
    .local v3, "restrictions":Landroid/os/Bundle;
    const-string v4, "no_control_apps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 172
    const-string v4, "no_uninstall_apps"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v5, 0x1

    .line 171
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    iget-object v4, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 177
    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    return v1

    .line 182
    :cond_6
    instance-of v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_7

    .line 183
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 184
    .local v2, "iconInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0xc0

    if-eqz v3, :cond_7

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_7

    .line 186
    return v1

    .line 189
    .end local v2    # "iconInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_8

    .line 190
    return v1

    .line 192
    :cond_8
    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    return v1
.end method

.method private getReconfigurableWidgetId(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 266
    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    return v1

    .line 269
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 270
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 271
    .local v2, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 276
    return v1

    .line 278
    :cond_2
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    return v1

    .line 272
    :cond_3
    :goto_0
    return v1
.end method

.method private getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 201
    .local v1, "user":Landroid/os/UserHandle;
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 206
    :cond_0
    if-eqz v0, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 208
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    .line 209
    .local v2, "info":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 211
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 214
    .end local v2    # "info":Landroid/content/pm/LauncherActivityInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 254
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    return-object v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$performDropAction$0()V
    .locals 0

    .line 300
    return-void
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 240
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;

    move-result-object v0

    .line 242
    .local v0, "target":Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v1, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    .line 244
    .local v1, "deferred":Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->-$$Nest$fputmPackageName(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    .line 251
    .end local v1    # "deferred":Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    :cond_1
    :goto_0
    return-void
.end method

.method public getAccessibilityAction()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    return v0
.end method

.method synthetic lambda$performDropAction$1$com-android-launcher3-SecondaryDropTarget(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 302
    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 303
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 304
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 305
    return-void
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 333
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    .line 334
    .local v0, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/SecondaryDropTarget;->doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 335
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;

    .line 336
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 131
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onAttachedToWindow()V

    .line 87
    iget-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    .line 92
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onDetachedFromWindow()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    .line 102
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 220
    new-instance v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;-><init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 222
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 223
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/SecondaryDropTarget;->doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 224
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 107
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setupUi(I)V

    .line 108
    return-void
.end method

.method protected performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 286
    const-string v0, "SecondaryDropTarget"

    iget v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    sget v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getReconfigurableWidgetId(Landroid/view/View;)I

    move-result v0

    .line 288
    .local v0, "widgetId":I
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 290
    invoke-static {v0, v3, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 291
    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    .line 294
    :cond_0
    return-object v3

    .line 296
    .end local v0    # "widgetId":I
    :cond_1
    iget v1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    sget v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    if-ne v1, v2, :cond_3

    .line 297
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->item_removed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v1, Lcom/android/launcher3/R$string;->item_removed:I

    sget v2, Lcom/android/launcher3/R$string;->undo:I

    new-instance v4, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p3, p2}, Lcom/android/launcher3/SecondaryDropTarget$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 307
    :cond_2
    return-object v3

    .line 311
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/SecondaryDropTarget;->getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 312
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v4, Lcom/android/launcher3/R$string;->uninstall_system_app_text:I

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    return-object v3

    .line 319
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v5, Lcom/android/launcher3/R$string;->delete_package_intent:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "package"

    .line 320
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.USER"

    iget-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 321
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 322
    .local v2, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher3/SecondaryDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start uninstall activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-object v1

    .line 325
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse intent to start uninstall activity for item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v3
.end method

.method protected setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result v0

    .line 141
    .local v0, "buttonType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setupUi(I)V

    .line 144
    :cond_0
    return-void
.end method

.method protected setupUi(I)V
    .locals 1
    .param p1, "action"    # I

    .line 111
    iget v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    if-ne p1, v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    .line 116
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    if-ne p1, v0, :cond_1

    .line 117
    sget v0, Lcom/android/launcher3/R$drawable;->ic_uninstall_no_shadow:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setDrawable(I)V

    .line 118
    sget v0, Lcom/android/launcher3/R$string;->uninstall_drop_target_label:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->updateText(I)V

    goto :goto_0

    .line 119
    :cond_1
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    if-ne p1, v0, :cond_2

    .line 120
    sget v0, Lcom/android/launcher3/R$drawable;->ic_block_no_shadow:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setDrawable(I)V

    .line 121
    sget v0, Lcom/android/launcher3/R$string;->dismiss_prediction_label:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->updateText(I)V

    goto :goto_0

    .line 122
    :cond_2
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    if-ne p1, v0, :cond_3

    .line 123
    sget v0, Lcom/android/launcher3/R$drawable;->ic_setting:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setDrawable(I)V

    .line 124
    sget v0, Lcom/android/launcher3/R$string;->gadget_setup_text:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->updateText(I)V

    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
