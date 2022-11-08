.class public Lcom/android/launcher3/views/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source "FloatingIconView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    }
.end annotation


# static fields
.field public static final SHAPE_PROGRESS_DURATION:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static sFetchIconId:J

.field private static sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private static sRecycledFetchIconId:J

.field private static final sTmpObjArray:[Ljava/lang/Object;

.field private static final sTmpRectF:Landroid/graphics/RectF;


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBtvDrawable:Landroid/view/View;

.field private mClipIconView:Lcom/android/launcher3/views/ClipIconView;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFastFinishRunnable:Ljava/lang/Runnable;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private mIconOffsetY:F

.field private mIsOpening:Z

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mListenerView:Lcom/android/launcher3/views/ListenerView;

.field private mLoadIconSignal:Landroid/os/CancellationSignal;

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;

.field private mOriginalIcon:Landroid/view/View;

.field private mPositionOut:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-class v0, Lcom/android/launcher3/views/FloatingIconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    .line 75
    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 117
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    .line 119
    new-instance v0, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    .line 120
    new-instance v0, Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    .line 121
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->addView(Landroid/view/View;)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setWillNotDraw(Z)V

    .line 125
    return-void
.end method

.method private checkIconResult(Landroid/view/View;)V
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;

    .line 386
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 388
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v1, :cond_0

    .line 389
    sget-object v1, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v2, "No icon load result found in checkIconResult"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 393
    :cond_0
    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v4, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    .line 397
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 398
    invoke-static {p1, v2}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    new-instance v3, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V

    iput-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    .line 411
    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 413
    :goto_0
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .locals 17
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "isOpening"    # Z

    .line 521
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v11, v0

    .line 522
    .local v11, "position":Landroid/graphics/RectF;
    move-object/from16 v12, p0

    move/from16 v13, p3

    invoke-static {v12, v9, v13, v11}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 526
    instance-of v0, v9, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 527
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 528
    .local v0, "btv":Lcom/android/launcher3/BubbleTextView;
    instance-of v1, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_0

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0xc00

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 532
    .local v1, "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    new-instance v2, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .local v2, "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 534
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .end local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    .line 536
    .restart local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    new-instance v2, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 538
    .end local v0    # "btv":Lcom/android/launcher3/BubbleTextView;
    .restart local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    move-object v14, v1

    move-object v15, v2

    goto :goto_1

    .line 539
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .end local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    const/4 v1, 0x0

    .line 540
    .restart local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    const/4 v2, 0x0

    move-object v14, v1

    move-object v15, v2

    .line 543
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .local v14, "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .local v15, "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :goto_1
    new-instance v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-direct {v0, v10, v1}, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    move-object v8, v0

    .line 544
    .local v8, "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    iput-object v15, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    .line 546
    sget-wide v1, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    .line 547
    .local v1, "fetchIconId":J
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v6, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v9, v6

    move-object v6, v11

    move-object v10, v7

    move-object v7, v14

    move-object/from16 v16, v8

    .end local v8    # "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .local v16, "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda6;-><init>(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 554
    sput-object v16, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 555
    return-object v16
.end method

.method private finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 623
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 625
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    .line 626
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_icon_view:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 627
    return-void
.end method

.method public static getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;
    .locals 7
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "hideOriginal"    # Z
    .param p3, "positionOut"    # Landroid/graphics/RectF;
    .param p4, "isOpening"    # Z

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 569
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 570
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->floating_icon_view:I

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/FloatingIconView;

    .line 572
    .local v2, "view":Lcom/android/launcher3/views/FloatingIconView;
    invoke-direct {v2}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    .line 575
    iput-boolean p4, v2, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    .line 576
    iput-object p1, v2, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    .line 577
    iput-object p3, v2, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 581
    .local v3, "shouldLoadIcon":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 582
    sget-object v5, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 583
    sget-object v5, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-object v5, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    goto :goto_1

    .line 585
    :cond_1
    nop

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 585
    invoke-static {p0, p1, v5, p4}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 588
    :goto_1
    iget-object v5, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    invoke-direct {v2, v5}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    .line 590
    :cond_2
    const/4 v5, 0x0

    sput-object v5, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 593
    invoke-direct {v2, p0, p1, p4, p3}, Lcom/android/launcher3/views/FloatingIconView;->matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 596
    invoke-static {v2, v4}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 597
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 598
    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 599
    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 601
    new-instance v4, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p2, p1, v0}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 615
    if-eqz v3, :cond_3

    .line 616
    invoke-direct {v2, p1}, Lcom/android/launcher3/views/FloatingIconView;->checkIconResult(Landroid/view/View;)V

    .line 619
    :cond_3
    return-object v2
.end method

.method private static getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 19
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "pos"    # Landroid/graphics/RectF;
    .param p4, "btvIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "outIconLoadResult"    # Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 259
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    move v13, v0

    .line 261
    .local v13, "supportsAdaptiveIcons":Z
    const/4 v0, 0x0

    .line 262
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    instance-of v1, v9, Lcom/android/launcher3/popup/SystemShortcut;

    if-eqz v1, :cond_2

    .line 263
    instance-of v1, v8, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 264
    move-object v1, v8

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 265
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v1, v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_1

    .line 266
    move-object v1, v8

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 268
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 270
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v1, v10, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_3

    .line 272
    move-object/from16 v1, p4

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 274
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v14, v1

    .line 275
    .local v14, "width":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v15, v1

    .line 276
    .local v15, "height":I
    if-eqz v13, :cond_6

    .line 277
    instance-of v1, v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/16 v16, 0x0

    if-eqz v1, :cond_4

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 278
    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v12

    goto :goto_0

    :cond_4
    move/from16 v5, v16

    .line 279
    .local v5, "shouldThemeIcon":Z
    :goto_0
    sget-object v17, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 280
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_5

    .line 281
    aget-object v2, v17, v16

    invoke-static {v7, v9, v2}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_5
    move-object/from16 v1, p4

    .line 287
    .end local v5    # "shouldThemeIcon":Z
    :goto_1
    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    goto :goto_2

    .line 288
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v1, v8, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_7

    .line 290
    move-object/from16 v1, p4

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 292
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v5, 0x1

    sget-object v6, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .line 298
    .end local v14    # "width":I
    .end local v15    # "height":I
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v2, 0x0

    if-nez v0, :cond_8

    move-object v3, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 299
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v4, p3

    invoke-static {v7, v3, v4}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v5

    .line 302
    .local v5, "iconOffset":I
    if-nez v10, :cond_9

    move-object v0, v2

    goto :goto_4

    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    move-object v6, v0

    .line 303
    .local v6, "btvClone":Landroid/graphics/drawable/Drawable;
    monitor-enter p5

    .line 304
    :try_start_0
    new-instance v0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    .line 305
    iput-object v3, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    .line 306
    iput-object v1, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    .line 307
    iput v5, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    .line 308
    iget-object v0, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v14, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v0, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 310
    iput-object v2, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    .line 312
    :cond_a
    iput-boolean v12, v11, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    .line 313
    monitor-exit p5

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOpening"    # Z
    .param p3, "outRect"    # Landroid/graphics/RectF;

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 209
    return-void
.end method

.method public static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOpening"    # Z
    .param p3, "outRect"    # Landroid/graphics/RectF;
    .param p4, "outViewBounds"    # Landroid/graphics/Rect;

    .line 218
    xor-int/lit8 v0, p2, 0x1

    .line 219
    .local v0, "ignoreTransform":Z
    instance-of v1, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v1, :cond_0

    .line 220
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    .line 221
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 227
    return-void

    .line 230
    :cond_2
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_3

    .line 231
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p4}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 232
    :cond_3
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_4

    .line 233
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, p4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 235
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p4

    move v4, v0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    .line 240
    return-void
.end method

.method private static getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I
    .locals 5
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "position"    # Landroid/graphics/RectF;

    .line 419
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    return v1

    .line 422
    :cond_0
    nop

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 425
    .local v0, "blurSizeOutline":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    .line 426
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 427
    .local v1, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 429
    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    .line 430
    .local v2, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4, v4}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 434
    .end local v2    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_1
    nop

    .line 435
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 436
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 434
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 439
    iget v2, v1, Landroid/graphics/Rect;->left:I

    return v2

    .line 429
    .restart local v2    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
.end method

.method static synthetic lambda$fetchIcon$2(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 532
    return-object p0
.end method

.method static synthetic lambda$fetchIcon$3(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fetchIcon$4(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 2
    .param p0, "fetchIconId"    # J
    .param p2, "l"    # Lcom/android/launcher3/Launcher;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "position"    # Landroid/graphics/RectF;
    .param p6, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;
    .param p7, "result"    # Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 548
    sget-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    invoke-static/range {p2 .. p7}, Lcom/android/launcher3/views/FloatingIconView;->getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    .line 552
    return-void
.end method

.method static synthetic lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 1
    .param p0, "view"    # Lcom/android/launcher3/views/FloatingIconView;
    .param p1, "hideOriginal"    # Z
    .param p2, "originalView"    # Landroid/view/View;
    .param p3, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 604
    if-eqz p1, :cond_0

    .line 605
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 606
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 610
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIconResult$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "btvClone"    # Landroid/graphics/drawable/Drawable;

    .line 304
    return-object p0
.end method

.method private matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "isOpening"    # Z
    .param p4, "positionOut"    # Landroid/graphics/RectF;

    .line 177
    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 178
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 179
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 180
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    invoke-direct {p0, p4, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iget v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/ClipIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iget v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method private recycle()V
    .locals 4

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setTranslationX(F)V

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setTranslationY(F)V

    .line 632
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setScaleX(F)V

    .line 633
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setScaleY(F)V

    .line 634
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setAlpha(F)V

    .line 635
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 638
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 639
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 640
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 641
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    .line 642
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    .line 643
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 644
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    .line 645
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 646
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 647
    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 648
    sget-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    .line 649
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 650
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/views/ClipIconView;->recycle()V

    .line 651
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 653
    iput v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    .line 654
    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badge"    # Landroid/graphics/drawable/Drawable;
    .param p4, "iconOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    .line 326
    .local p3, "btvIcon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 327
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 328
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 329
    .local v7, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 330
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-boolean v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    move-object v2, p1

    move v3, p4

    move-object v4, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/views/ClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V

    .line 331
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    .line 332
    iget v1, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    .line 333
    .local v1, "originalHeight":I
    iget v2, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    .line 335
    .local v2, "originalWidth":I
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    .line 338
    .local v3, "aspectRatio":F
    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v5, :cond_0

    .line 339
    iget v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 341
    :cond_0
    iget v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    int-to-float v5, v5

    iget v6, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    .line 343
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/launcher3/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/views/ClipIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 346
    .local v5, "clipViewLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 347
    new-instance v6, Landroid/graphics/Rect;

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v6, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .line 348
    .local v4, "badgeBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 350
    .end local v4    # "badgeBounds":Landroid/graphics/Rect;
    :cond_1
    iget v4, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 351
    iget v4, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 352
    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/views/ClipIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .end local v1    # "originalHeight":I
    .end local v2    # "originalWidth":I
    .end local v3    # "aspectRatio":F
    .end local v5    # "clipViewLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->invalidate()V

    .line 357
    return-void
.end method

.method private setOriginalDrawableBackground(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p1, "btvIcon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_1
    return-void
.end method

.method private updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .locals 5
    .param p1, "pos"    # Landroid/graphics/RectF;
    .param p2, "lp"    # Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 192
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 193
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    .line 200
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 202
    :cond_1
    iget v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    nop

    .line 203
    .local v0, "left":I
    iget v1, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v4, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->layout(IIII)V

    .line 204
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 444
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 448
    :cond_0
    return-void
.end method

.method public fastFinish()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 461
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 465
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 468
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 469
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 471
    :cond_2
    return-void
.end method

.method public isDifferentFromAppIcon()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    :goto_0
    return v0
.end method

.method synthetic lambda$checkIconResult$1$com-android-launcher3-views-FloatingIconView(Landroid/os/CancellationSignal;Landroid/view/View;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "originalView"    # Landroid/view/View;

    .line 401
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v1, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 409
    invoke-static {p2, v0}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 410
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 487
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    .line 168
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 490
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 475
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 478
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 480
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 482
    invoke-static {v0, v1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 484
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 130
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 139
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 502
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 510
    :cond_0
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 454
    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 455
    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onTargetChangeListener"    # Ljava/lang/Runnable;

    .line 513
    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 514
    return-void
.end method

.method public setPositionOffsetY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 494
    iput p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->onGlobalLayout()V

    .line 496
    return-void
.end method

.method public update(FILandroid/graphics/RectF;FFFZ)V
    .locals 10
    .param p1, "alpha"    # F
    .param p2, "fgIconAlpha"    # I
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "progress"    # F
    .param p5, "shapeProgressStart"    # F
    .param p6, "cornerRadius"    # F
    .param p7, "isOpening"    # Z

    .line 152
    move-object v9, p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->setAlpha(F)V

    .line 153
    iget-object v0, v9, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v1, v9, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 154
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    .line 153
    move-object v1, p3

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move v5, p2

    move/from16 v6, p7

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V

    .line 155
    return-void
.end method
