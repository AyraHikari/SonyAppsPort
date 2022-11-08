.class public Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/widget/LocalColorExtractor$Listener;


# static fields
.field private static final ADVANCE_INTERVAL:J = 0x4e20L

.field private static final ADVANCE_STAGGER:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "LauncherAppWidgetHostView"

.field private static final TRACE_METHOD_NAME:Ljava/lang/String; = "appwidget load-widget "

.field private static final UPDATE_LOCK_TIMEOUT_MILLIS:J = 0x3e8L

.field private static final sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;


# instance fields
.field private mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private final mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

.field private mDeferUpdatesUntilMillis:J

.field private mDeferredColorChange:Landroid/util/SparseIntArray;

.field private mDeferredRemoteViews:Landroid/widget/RemoteViews;

.field private mDragContentHeight:I

.field private mDragContentWidth:I

.field private mHasDeferredColorChange:Z

.field private mIsAttachedToWindow:Z

.field private mIsAutoAdvanceRegistered:Z

.field private mIsInDragMode:Z

.field private mIsScrollable:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mReinflateOnConfigChange:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTrackingWidgetUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$DYNazCDcrgW4u34SpQEBZZL6HnA(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->runAutoAdvance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferUpdatesUntilMillis:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mHasDeferredColorChange:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredColorChange:Landroid/util/SparseIntArray;

    .line 93
    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    .line 95
    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentWidth:I

    .line 97
    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentHeight:I

    .line 99
    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTrackingWidgetUpdate:Z

    .line 103
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 104
    new-instance v1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v1, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 105
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    sget v1, Lcom/android/launcher3/R$drawable;->widget_internal_focus_bg:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setBackgroundResource(I)V

    .line 108
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setOnLightBackground(Z)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

    .line 112
    return-void
.end method

.method private checkIfAutoAdvance()V
    .locals 6

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "isAutoAdvance":Z
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v1

    .line 377
    .local v1, "target":Landroid/widget/Advanceable;
    if-eqz v1, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 379
    invoke-interface {v1}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 382
    :cond_0
    sget-object v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 383
    .local v3, "wasAutoAdvance":Z
    :goto_0
    if-eq v0, v3, :cond_3

    .line 384
    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 389
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 391
    :cond_3
    return-void
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 177
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 178
    return v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 183
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    return v1

    .line 180
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getAdvanceable()Landroid/widget/Advanceable;
    .locals 4

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 395
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 399
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Advanceable;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/widget/Advanceable;

    :cond_1
    return-object v1

    .line 396
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private isDeferringUpdates()Z
    .locals 4

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferUpdatesUntilMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameOrientation()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 173
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOrientation()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0
.end method

.method private maybeRegisterAutoAdvance()V
    .locals 3

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 404
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    .local v1, "shouldRegisterAutoAdvance":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-eq v1, v2, :cond_2

    .line 407
    iput-boolean v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    .line 408
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 415
    :cond_2
    return-void
.end method

.method private runAutoAdvance()V
    .locals 1

    .line 431
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 432
    .local v0, "target":Landroid/widget/Advanceable;
    if-eqz v0, :cond_0

    .line 433
    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 436
    return-void
.end method

.method private scheduleNextAdvance()V
    .locals 8

    .line 418
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, "now":J
    const-wide/16 v2, 0x4e20

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 424
    .local v2, "advanceTime":J
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 425
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_1

    .line 426
    iget-object v5, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 428
    :cond_1
    return-void
.end method


# virtual methods
.method public beginDeferringUpdates()V
    .locals 4

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferUpdatesUntilMillis:J

    .line 209
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->cancelLongPress()V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 277
    return-void
.end method

.method public endDeferringUpdates()V
    .locals 4

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferUpdatesUntilMillis:J

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredRemoteViews:Landroid/widget/RemoteViews;

    .line 222
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredRemoteViews:Landroid/widget/RemoteViews;

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredColorChange:Landroid/util/SparseIntArray;

    .line 224
    .local v2, "deferredColors":Landroid/util/SparseIntArray;
    iget-boolean v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mHasDeferredColorChange:Z

    .line 225
    .local v3, "hasDeferredColors":Z
    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredColorChange:Landroid/util/SparseIntArray;

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mHasDeferredColorChange:Z

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 231
    :cond_0
    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onColorsChanged(Landroid/util/SparseIntArray;)V

    .line 234
    :cond_1
    return-void
.end method

.method public endDrag()V
    .locals 1

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    .line 343
    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentWidth:I

    .line 344
    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentHeight:I

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestLayout()V

    .line 346
    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .line 281
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 282
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    :goto_0
    return-object v0
.end method

.method public handleDrag(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 1
    .param p1, "rectInView"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "screenId"    # I

    .line 335
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    .line 338
    :cond_0
    return-void
.end method

.method synthetic lambda$onColorsChanged$0$com-android-launcher3-widget-LauncherAppWidgetHostView(Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "colors"    # Landroid/util/SparseIntArray;

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onAttachedToWindow()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    .line 260
    return-void
.end method

.method public onColorsChanged(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1, "colors"    # Landroid/util/SparseIntArray;

    .line 350
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isDeferringUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredColorChange:Landroid/util/SparseIntArray;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mHasDeferredColorChange:Z

    .line 353
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredColorChange:Landroid/util/SparseIntArray;

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mHasDeferredColorChange:Z

    .line 359
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 440
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isSameOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 447
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onDetachedFromWindow()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 269
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    .line 271
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 364
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 239
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    iget-boolean v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    .line 244
    .end local v0    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 300
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onLayout(ZIIII)V

    .line 301
    invoke-direct {p0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 303
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 305
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mColorExtractor:Lcom/android/launcher3/widget/LocalColorExtractor;

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->screenId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    .line 308
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 125
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 127
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 129
    .end local v0    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 312
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onMeasure(II)V

    .line 313
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentHeight:I

    if-lez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentWidth:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentHeight:I

    .line 316
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 315
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->measureChild(Landroid/view/View;II)V

    .line 318
    :cond_0
    return-void
.end method

.method public onTouchComplete()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 296
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 370
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->onWindowVisibilityChanged(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 372
    return-void
.end method

.method public reInflate()V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 454
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    if-nez v0, :cond_1

    .line 456
    return-void

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v3, "widget removed because of configuration change"

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 462
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 463
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 137
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTrackingWidgetUpdate:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTrackingWidgetUpdate:Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget load-widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App widget created with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppWidgetHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method

.method public setColorResources(Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "colors"    # Landroid/util/SparseIntArray;

    .line 116
    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->resetColorResources()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    .line 121
    :goto_0
    return-void
.end method

.method protected shouldAllowDirectClick()Z
    .locals 4

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 469
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    return v1

    .line 471
    .end local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    return v1
.end method

.method public startDrag()V
    .locals 3

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsInDragMode:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getChildCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentWidth:I

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDragContentHeight:I

    .line 331
    :cond_1
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 147
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTrackingWidgetUpdate:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App widget with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppWidgetHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget load-widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 149
    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTrackingWidgetUpdate:Z

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isDeferringUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredRemoteViews:Landroid/widget/RemoteViews;

    .line 155
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mDeferredRemoteViews:Landroid/widget/RemoteViews;

    .line 159
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 162
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isSameOrientation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    .line 169
    return-void
.end method
