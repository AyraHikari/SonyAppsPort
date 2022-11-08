.class public Lcom/android/launcher3/widget/PendingAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;


# static fields
.field private static final MIN_SATUNATION:F = 0.7f

.field private static final SETUP_ICON_SIZE_FACTOR:F = 0.4f


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private final mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "cache"    # Lcom/android/launcher3/icons/IconCache;
    .param p4, "disabledForSafeMode"    # Z

    .line 75
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/launcher3/R$style;->WidgetContainerTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 78
    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    .line 79
    iput-boolean p4, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 81
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 84
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 83
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    sget v0, Lcom/android/launcher3/R$drawable;->pending_widget_bg:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 88
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 89
    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 94
    iget-object v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p3, p0, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 98
    :goto_0
    return-void
.end method

.method private getWidgetCategoryIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/PackageItemInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private updateDrawableBounds()V
    .locals 26

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 231
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v2

    .line 232
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v3

    .line 233
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v4

    .line 234
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v5

    .line 236
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$dimen;->pending_widget_min_padding:I

    .line 237
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 239
    .local v6, "minPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    .line 240
    .local v7, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v3

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    .line 242
    .local v8, "availableHeight":I
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    if-nez v9, :cond_0

    .line 243
    iget v9, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 244
    .local v9, "maxSize":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 246
    .local v10, "size":I
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v15, v15, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 248
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 249
    .end local v9    # "maxSize":I
    .end local v10    # "size":I
    goto/16 :goto_3

    .line 250
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    .line 254
    .local v9, "iconSize":F
    const v17, 0x3fe66666    # 1.8f

    .line 255
    .local v17, "settingIconScaleFactor":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 256
    .local v14, "maxSize":I
    mul-float v10, v9, v17

    int-to-float v11, v14

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 258
    int-to-float v10, v14

    div-float v9, v10, v17

    move v13, v9

    goto :goto_0

    .line 256
    :cond_1
    move v13, v9

    .line 261
    .end local v9    # "iconSize":F
    .local v13, "iconSize":F
    :goto_0
    iget v9, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v9, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v12, v9

    .line 264
    .local v12, "actualIconSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v12

    div-int/lit8 v18, v9, 0x2

    .line 265
    .local v18, "iconTop":I
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 267
    if-lez v7, :cond_3

    .line 269
    new-instance v10, Landroid/text/StaticLayout;

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/android/launcher3/R$string;->gadget_complete_setup_text:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v23, v9

    move-object v9, v10

    move-object/from16 v24, v10

    move-object v10, v11

    move-object/from16 v11, v23

    move/from16 v25, v12

    .end local v12    # "actualIconSize":I
    .local v25, "actualIconSize":I
    move v12, v7

    move/from16 v23, v13

    .end local v13    # "iconSize":F
    .local v23, "iconSize":F
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "maxSize":I
    .local v19, "maxSize":I
    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v9, v24

    iput-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 272
    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    .line 275
    .local v9, "textHeight":I
    int-to-float v10, v9

    move/from16 v11, v25

    .end local v25    # "actualIconSize":I
    .local v11, "actualIconSize":I
    int-to-float v12, v11

    mul-float v12, v12, v17

    add-float/2addr v10, v12

    iget v12, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 278
    .local v10, "minHeightWithText":F
    int-to-float v12, v8

    cmpg-float v12, v10, v12

    if-gez v12, :cond_2

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v9

    iget v13, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    div-int/lit8 v18, v12, 0x2

    move/from16 v9, v18

    goto :goto_2

    .line 285
    :cond_2
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    goto :goto_1

    .line 267
    .end local v9    # "textHeight":I
    .end local v10    # "minHeightWithText":F
    .end local v11    # "actualIconSize":I
    .end local v19    # "maxSize":I
    .end local v23    # "iconSize":F
    .restart local v12    # "actualIconSize":I
    .restart local v13    # "iconSize":F
    .restart local v14    # "maxSize":I
    :cond_3
    move v11, v12

    move/from16 v23, v13

    move/from16 v19, v14

    .line 289
    .end local v12    # "actualIconSize":I
    .end local v13    # "iconSize":F
    .end local v14    # "maxSize":I
    .restart local v11    # "actualIconSize":I
    .restart local v19    # "maxSize":I
    .restart local v23    # "iconSize":F
    :goto_1
    move/from16 v9, v18

    .end local v18    # "iconTop":I
    .local v9, "iconTop":I
    :goto_2
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12, v11, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v12

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v12, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 291
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 293
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    iput v12, v10, Landroid/graphics/Rect;->left:I

    .line 294
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    int-to-float v13, v11

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 295
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v2, v6

    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 296
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->top:I

    int-to-float v13, v11

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 297
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 299
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v10, :cond_4

    .line 301
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    iput v12, v10, Landroid/graphics/Rect;->left:I

    .line 302
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 305
    .end local v9    # "iconTop":I
    .end local v11    # "actualIconSize":I
    .end local v17    # "settingIconScaleFactor":F
    .end local v19    # "maxSize":I
    .end local v23    # "iconSize":F
    :cond_4
    :goto_3
    return-void
.end method

.method private updateSettingColor(I)V
    .locals 4
    .param p1, "dominantColor"    # I

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 188
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 189
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 190
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 203
    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->appwidget_not_ready:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "defaultView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 126
    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v2, 0x4

    .line 225
    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 224
    :goto_0
    return v1
.end method

.method public isReinflateIfNeeded()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->updateDrawableBounds()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 330
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 142
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidgetCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, "widgetCategoryIcon":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 157
    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    .line 159
    .local v2, "disabledIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 160
    iput-object v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    .end local v2    # "disabledIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 163
    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    if-nez v0, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 169
    :cond_3
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$drawable;->ic_setting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->updateSettingColor(I)V

    goto :goto_3

    .line 173
    :cond_4
    if-nez v0, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v2

    goto :goto_2

    .line 175
    :cond_5
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 179
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    iput-boolean v3, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 182
    .end local v0    # "widgetCategoryIcon":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 183
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 131
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 132
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 102
    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reInflate()V

    .line 107
    :cond_0
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .line 113
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
