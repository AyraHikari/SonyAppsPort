.class public Lcom/android/launcher3/dragndrop/AddItemActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "AddItemActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# static fields
.field private static final REQUEST_BIND_APPWIDGET:I = 0x1

.field private static final SHADOW_SIZE:I = 0xa

.field private static final STATE_EXTRA_WIDGET_ID:Ljava/lang/String; = "state.widget.id"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field private mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/dragndrop/AddItemActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishOnPause:Z

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

.field private mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWidgetCell(Lcom/android/launcher3/dragndrop/AddItemActivity;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return-void
.end method

.method private acceptWidget(I)V
    .locals 2
    .param p1, "widgetId"    # I

    .line 337
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 338
    invoke-virtual {v1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    .line 341
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->close(Z)V

    .line 343
    return-void
.end method

.method private applyWidgetItemAsync(Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "itemProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    return-void
.end method

.method private logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 2
    .param p1, "command"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    .line 413
    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 414
    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 415
    return-void
.end method

.method private sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "widgetName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/16 v0, 0x4000

    .line 403
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 404
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    nop

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->added_to_home_screen_accessibility_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setupShortcut()V
    .locals 3

    .line 250
    new-instance v0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    .line 252
    .local v0, "shortcutInfo":Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 253
    new-instance v1, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    .line 255
    return-void
.end method

.method private setupWidget()Z
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 259
    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 260
    .local v0, "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v2, :cond_1

    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetCell;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    .line 266
    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 267
    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 269
    new-instance v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/16 v2, -0x71

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 271
    .local v1, "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 272
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 273
    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 274
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 276
    new-instance v2, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    .line 277
    const/4 v2, 0x1

    return v2

    .line 262
    .end local v1    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object v0
.end method

.method synthetic lambda$setupShortcut$0$com-android-launcher3-dragndrop-AddItemActivity(Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    .line 254
    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method synthetic lambda$setupWidget$1$com-android-launcher3-dragndrop-AddItemActivity(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3
    .param p1, "widgetInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 276
    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 353
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 354
    if-eqz p3, :cond_0

    .line 355
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 356
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    :goto_0
    nop

    .line 357
    .local v0, "widgetId":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 358
    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    goto :goto_1

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 362
    iput v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 364
    :goto_1
    return-void

    .line 366
    .end local v0    # "widgetId":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 367
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 347
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_BACK:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->close(Z)V

    .line 349
    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 299
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->close(Z)V

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 117
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 119
    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 123
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 129
    sget v0, Lcom/android/launcher3/R$layout;->add_item_confirmation_activity:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 133
    sget v0, Lcom/android/launcher3/R$id;->add_item_drag_layer:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    .line 134
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    .line 135
    sget v0, Lcom/android/launcher3/R$id;->widget_cell:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupShortcut()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupWidget()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    sget v1, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCellPreview;

    .line 150
    .local v0, "previewContainer":Lcom/android/launcher3/widget/WidgetCellPreview;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCellPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCellPreview;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    if-nez p1, :cond_3

    .line 156
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_START:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 159
    :cond_3
    sget v1, Lcom/android/launcher3/R$id;->widget_appName:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, "widgetAppName":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    sget v2, Lcom/android/launcher3/R$id;->add_item_bottom_sheet:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    .line 163
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 164
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->show()V

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupNavBarColor()V

    .line 166
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    .line 178
    .local v0, "img":Lcom/android/launcher3/widget/WidgetImageView;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v1

    .line 182
    .local v1, "appWidgetHostView":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 183
    return v3

    .line 189
    :cond_0
    if-eqz v1, :cond_1

    .line 190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 192
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewScale()F

    move-result v10

    .line 193
    .local v10, "appWidgetHostViewScale":F
    nop

    .line 194
    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v11, v4, v5

    .line 195
    .local v11, "xOffset":I
    nop

    .line 196
    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v12, v4, v5

    .line 197
    .local v12, "yOffset":I
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 198
    new-instance v13, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 201
    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v7

    .line 202
    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v8

    move-object v4, v13

    move-object v6, v2

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V

    .line 204
    .end local v10    # "appWidgetHostViewScale":F
    .end local v11    # "xOffset":I
    .end local v12    # "yOffset":I
    .local v4, "listener":Lcom/android/launcher3/dragndrop/PinItemDragListener;
    goto :goto_0

    .line 205
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "listener":Lcom/android/launcher3/dragndrop/PinItemDragListener;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 206
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 207
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 206
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 208
    new-instance v4, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 209
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v7

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    .line 214
    .restart local v4    # "listener":Lcom/android/launcher3/dragndrop/PinItemDragListener;
    :goto_0
    new-instance v5, Landroid/content/ClipDescription;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ""

    invoke-direct {v5, v8, v7}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 215
    .local v5, "description":Landroid/content/ClipDescription;
    new-instance v7, Landroid/content/ClipData;

    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v8}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v7, v5, v9}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 216
    .local v7, "data":Landroid/content/ClipData;
    new-instance v8, Lcom/android/launcher3/dragndrop/AddItemActivity$1;

    invoke-direct {v8, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V

    const/4 v9, 0x0

    const/16 v10, 0x100

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 228
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x10000000

    .line 231
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 232
    .local v8, "homeIntent":Landroid/content/Intent;
    sget-object v9, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v9, v4}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 233
    const v9, 0x10a0001

    .line 234
    invoke-static {p0, v3, v9}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 235
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 233
    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/dragndrop/AddItemActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 236
    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v9}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 237
    iput-boolean v6, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    .line 238
    return v3
.end method

.method protected onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    .line 244
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 247
    :cond_0
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 309
    .local v0, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    sget-object v2, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    .line 310
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 311
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    .line 312
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 316
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->close(Z)V

    .line 318
    return-void

    .line 321
    .end local v0    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 323
    .local v0, "widgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 325
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 326
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    .line 327
    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    .line 328
    return-void

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 333
    invoke-virtual {v5, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 332
    invoke-virtual {v3, p0, v4, v5, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    .line 334
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 377
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 378
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 379
    const-string v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 380
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 371
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    return-void
.end method

.method public onSlideInViewClosed()V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 390
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected setupNavBarColor()V
    .locals 4

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 395
    .local v0, "isSheetDark":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    .line 397
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 395
    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 398
    return-void
.end method
