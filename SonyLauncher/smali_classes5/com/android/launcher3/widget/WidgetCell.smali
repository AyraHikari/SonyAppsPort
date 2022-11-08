.class public Lcom/android/launcher3/widget/WidgetCell;
.super Landroid/widget/LinearLayout;
.source "WidgetCell.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_IN_DURATION_MS:I = 0x5a

.field private static final MAX_MEASURE_SPEC_DIMENSION:I = 0x3fffffff

.field private static final PREVIEW_SCALE:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "WidgetCell"

.field private static final WIDTH_SCALE:F = 3.0f


# instance fields
.field protected mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mAnimatePreview:Z

.field private mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

.field private mAppWidgetHostViewScale:F

.field private mCellSize:I

.field private final mEnforcedCornerRadius:F

.field protected mItem:Lcom/android/launcher3/model/WidgetItem;

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field protected mPresetPreviewSize:I

.field private mPreviewContainerScale:F

.field private mRemoteViewsPreview:Landroid/widget/RemoteViews;

.field private mSourceContainer:I

.field protected mTargetPreviewHeight:I

.field protected mTargetPreviewWidth:I

.field private mWidgetBadge:Landroid/widget/ImageView;

.field private mWidgetDescription:Landroid/widget/TextView;

.field private mWidgetDims:Landroid/widget/TextView;

.field private mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

.field private mWidgetImageContainer:Landroid/widget/FrameLayout;

.field private mWidgetName:Landroid/widget/TextView;

.field private final mWidgetPreviewLoader:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;


# direct methods
.method public static synthetic $r8$lambda$so9kY5TolyAbY-XBx2yFuSe6XyY(Lcom/android/launcher3/widget/WidgetCell;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mAnimatePreview:Z

    .line 134
    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewScale:F

    .line 135
    const/16 v1, -0x69

    iput v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mSourceContainer:I

    .line 148
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 149
    new-instance v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v2, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    .line 150
    new-instance v2, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 151
    invoke-virtual {v2, v0}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    .line 153
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetCell;->setContainerWidth()V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->setWillNotDraw(Z)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->setClipToPadding(Z)V

    .line 156
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 157
    invoke-static {p1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mEnforcedCornerRadius:F

    .line 158
    return-void
.end method

.method private applyPreview(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 337
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 338
    new-instance v2, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    new-instance v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mEnforcedCornerRadius:F

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 342
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 343
    .local v3, "scale":F
    iget v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    if-lez v4, :cond_0

    .line 344
    int-to-float v4, v4

    .line 345
    .local v4, "maxWidth":F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    mul-float/2addr v5, v6

    .line 346
    .local v5, "previewWidth":F
    div-float v6, v4, v5

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 348
    .end local v4    # "maxWidth":F
    .end local v5    # "previewWidth":F
    :cond_0
    nop

    .line 349
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 350
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 348
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/widget/WidgetCell;->setContainerSize(II)V

    .line 351
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/widget/WidgetImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/widget/WidgetImageView;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/WidgetCell;->removeView(Landroid/view/View;)V

    .line 355
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 359
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "scale":F
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mAnimatePreview:Z

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 361
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 362
    .local v2, "anim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 363
    .end local v2    # "anim":Landroid/view/ViewPropertyAnimator;
    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    .line 368
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 370
    :cond_3
    return-void
.end method

.method private applyPreviewOnAppWidgetHostView(Lcom/android/launcher3/model/WidgetItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetCell;->createAppWidgetHostView(Landroid/content/Context;)Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 290
    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    .line 292
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/WidgetItem;->hasPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetCell;->isLauncherContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetCell;->createAppWidgetHostView(Landroid/content/Context;)Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 304
    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 305
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 309
    .local v1, "launcherAppWidgetProviderInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v2, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewLayout:I

    iput v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initialLayout:I

    .line 310
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/launcher3/widget/WidgetCell;->setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    .line 312
    return-void
.end method

.method private static createAppWidgetHostView(Landroid/content/Context;)Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 448
    new-instance v0, Lcom/android/launcher3/widget/WidgetCell$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetCell$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private ensurePreviewWithCallback(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p2, "cachedPreview"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 397
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 398
    iget v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 399
    .local v0, "containerWidth":I
    iget v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 400
    .local v1, "containerHeight":I
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->setContainerSize(II)V

    .line 401
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "widgetContent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 406
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 408
    .local v3, "shouldScale":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 409
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetCell;->setNoClip(Landroid/view/ViewGroup;)V

    .line 410
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetCell;->setNoClip(Landroid/view/ViewGroup;)V

    .line 411
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetCell;->measureAndComputeWidgetPreviewScale()F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewScale:F

    .line 412
    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    .line 415
    .end local v2    # "widgetContent":Landroid/view/View;
    .end local v3    # "shouldScale":Z
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x77

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 417
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 419
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/WidgetImageView;->setVisibility(I)V

    .line 420
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 421
    return-void

    .line 423
    .end local v0    # "containerWidth":I
    .end local v1    # "containerHeight":I
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    if-eqz p2, :cond_3

    .line 424
    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 425
    return-void

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_4

    .line 428
    return-void

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    new-instance v2, Landroid/util/Size;

    iget v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    iget v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->loadPreview(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;Ljava/util/function/Consumer;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 432
    return-void
.end method

.method private static isLauncherContext(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 457
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    return v0
.end method

.method private measureAndComputeWidgetPreviewScale()F
    .locals 9

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 478
    return v1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 483
    const v2, 0x3fffffff    # 1.9999999f

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 484
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 482
    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->measure(II)V

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    iget v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    invoke-virtual {v0, v3, v3, v2, v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->layout(IIII)V

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    .line 495
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    .line 496
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 494
    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->measure(II)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "widgetContent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 501
    .local v2, "appWidgetContentWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 502
    .local v3, "appWidgetContentHeight":I
    if-eqz v2, :cond_5

    if-nez v3, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    nop

    .line 509
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v1, "layoutParam":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 513
    :cond_3
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_4

    .line 514
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 516
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 519
    invoke-virtual {v5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    .line 520
    .local v4, "horizontalPadding":I
    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 521
    invoke-virtual {v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 522
    .local v5, "verticalPadding":I
    iget v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    mul-float/2addr v6, v7

    int-to-float v8, v2

    div-float/2addr v6, v8

    iget v8, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    mul-float/2addr v8, v7

    int-to-float v7, v3

    div-float/2addr v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6

    .line 503
    .end local v1    # "layoutParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "horizontalPadding":I
    .end local v5    # "verticalPadding":I
    :cond_5
    :goto_0
    return v1
.end method

.method private setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "appWidgetHostViewPreview"    # Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .param p2, "providerInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 318
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setImportantForAccessibility(I)V

    .line 319
    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 320
    invoke-virtual {p1, p3}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 321
    return-void
.end method

.method private setContainerSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 386
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 387
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    return-void
.end method

.method private setContainerWidth()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mCellSize:I

    .line 162
    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    .line 163
    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    .line 164
    return-void
.end method

.method private static setNoClip(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 473
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 474
    return-void
.end method


# virtual methods
.method public applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;F)V

    .line 232
    return-void
.end method

.method public applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;F)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "previewScale"    # F

    .line 238
    new-instance v0, Lcom/android/launcher3/widget/WidgetCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetCell$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/WidgetCell;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 239
    return-void
.end method

.method public applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "previewScale"    # F
    .param p4, "cachedPreview"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/WidgetItem;",
            "F",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 251
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 252
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v1

    .line 253
    .local v1, "widgetSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    .line 254
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    .line 255
    iput p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mPreviewContainerScale:F

    .line 257
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyPreviewOnAppWidgetHostView(Lcom/android/launcher3/model/WidgetItem;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 260
    .local v2, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    .line 261
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->widget_preview_context_description:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, v7, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 263
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->widget_dims_format:I

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v9, v9, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 265
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v9, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v9, v9, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    .line 264
    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->widget_accessible_dims_format:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v7, v7, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 267
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v7, v7, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 266
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v3, v3, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v3, v3, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->loadDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 270
    .local v3, "description":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    .end local v3    # "description":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v3, :cond_2

    .line 279
    new-instance v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v4, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-direct {v3, v4}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 281
    :cond_2
    new-instance v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mSourceContainer:I

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 284
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreviewWithCallback(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 285
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 443
    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 445
    return-void
.end method

.method public clear()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    .line 212
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 214
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v0, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 218
    :cond_1
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewScale:F

    .line 220
    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    .line 221
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 462
    const-class v0, Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    return-object v0
.end method

.method public getAppWidgetHostViewScale()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mAppWidgetHostViewScale:F

    return v0
.end method

.method public getRemoteViewsPreview()Landroid/widget/RemoteViews;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 170
    sget v0, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImageContainer:Landroid/widget/FrameLayout;

    .line 171
    sget v0, Lcom/android/launcher3/R$id;->widget_preview:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    .line 172
    sget v0, Lcom/android/launcher3/R$id;->widget_badge:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    .line 173
    sget v0, Lcom/android/launcher3/R$id;->widget_name:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/android/launcher3/R$id;->widget_dims:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    .line 175
    sget v0, Lcom/android/launcher3/R$id;->widget_description:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDescription:Landroid/widget/TextView;

    .line 176
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 467
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 468
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 469
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimatePreview(Z)V
    .locals 0
    .param p1, "shouldAnimate"    # Z

    .line 333
    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mAnimatePreview:Z

    .line 334
    return-void
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .line 179
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    .line 180
    return-void
.end method

.method public setSourceContainer(I)V
    .locals 0
    .param p1, "sourceContainer"    # I

    .line 224
    iput p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mSourceContainer:I

    .line 225
    return-void
.end method

.method public showBadge()V
    .locals 2

    .line 375
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, v1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetBadge:Landroid/widget/ImageView;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_work_app_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    :goto_0
    return-void
.end method
