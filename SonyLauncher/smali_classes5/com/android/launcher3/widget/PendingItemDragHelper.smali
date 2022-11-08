.class public Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "PendingItemDragHelper.java"


# static fields
.field private static final MAX_WIDGET_SCALE:F = 1.25f


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

.field private final mEnforcedRoundedCornersForWidget:F

.field private mEstimatedCellSize:[I

.field private mRemoteViewsPreview:Landroid/widget/RemoteViews;

.field private mRemoteViewsPreviewScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    .line 70
    return-void
.end method


# virtual methods
.method protected convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 234
    .local v2, "w":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 235
    .local v0, "h":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 236
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v4, "src":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 240
    .local v5, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 241
    .local v6, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 242
    .local v7, "scaledHeight":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v8

    .line 245
    .local v1, "dst":Landroid/graphics/Rect;
    sub-int v8, v2, v6

    const/4 v9, 0x2

    div-int/2addr v8, v9

    sub-int v10, v0, v7

    div-int/2addr v10, v9

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 246
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, p1, v4, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    return-object v3

    .line 230
    .end local v0    # "h":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "w":I
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "src":Landroid/graphics/Rect;
    .end local v5    # "scaleFactor":F
    .end local v6    # "scaledWidth":I
    .end local v7    # "scaledHeight":I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0
    .param p1, "appWidgetHostViewPreview"    # Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 86
    return-void
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V
    .locals 0
    .param p1, "remoteViewsPreview"    # Landroid/widget/RemoteViews;
    .param p2, "previewScale"    # F

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    .line 79
    iput p2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    .line 80
    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 31
    .param p1, "previewBounds"    # Landroid/graphics/Rect;
    .param p2, "previewBitmapWidth"    # I
    .param p3, "previewViewWidth"    # I
    .param p4, "screenPos"    # Landroid/graphics/Point;
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "b/195031154"

    const-string v6, "3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v5, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    .line 103
    .local v5, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 105
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    const/4 v7, 0x0

    .line 112
    .local v7, "preview":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    .line 116
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v10, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_8

    .line 117
    check-cast v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 119
    .local v9, "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    int-to-float v10, v2

    const/high16 v13, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v13

    float-to-int v10, v10

    aget v8, v8, v12

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 121
    .local v8, "maxWidth":I
    new-array v10, v11, [I

    .line 123
    .local v10, "previewSizeBeforeScale":[I
    iget-object v13, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v13, :cond_1

    .line 124
    new-instance v13, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v13, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 125
    const/4 v14, -0x1

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v15, v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 127
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    .line 128
    .local v13, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 129
    .local v14, "padding":Landroid/graphics/Rect;
    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v15, v13, v14}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 130
    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v11, v14, Landroid/graphics/Rect;->left:I

    iget v12, v14, Landroid/graphics/Rect;->top:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v18, v6

    .end local v6    # "app":Lcom/android/launcher3/LauncherAppState;
    .local v18, "app":Lcom/android/launcher3/LauncherAppState;
    iget v6, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15, v11, v12, v4, v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setPadding(IIII)V

    .line 132
    iget-object v4, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 133
    iget-object v4, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v6, v6, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v11, v11, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    invoke-static {v5, v4, v13, v6, v11}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetPaddedSizePx(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v4

    .line 135
    .local v4, "widgetSizes":Landroid/util/Size;
    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 136
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 137
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 135
    invoke-virtual {v6, v11, v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->measure(II)V

    .line 138
    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setClipChildren(Z)V

    .line 139
    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setClipToPadding(Z)V

    .line 140
    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {v6, v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    goto :goto_0

    .line 123
    .end local v4    # "widgetSizes":Landroid/util/Size;
    .end local v13    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    .end local v14    # "padding":Landroid/graphics/Rect;
    .end local v18    # "app":Lcom/android/launcher3/LauncherAppState;
    .restart local v6    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_1
    move-object/from16 v18, v6

    .line 142
    .end local v6    # "app":Lcom/android/launcher3/LauncherAppState;
    .restart local v18    # "app":Lcom/android/launcher3/LauncherAppState;
    :goto_0
    iget-object v4, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v4

    const/4 v6, 0x0

    aput v4, v10, v6

    .line 144
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v4

    new-instance v6, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    invoke-direct {v6, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 145
    invoke-virtual {v4, v6}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 147
    :cond_2
    if-nez v7, :cond_4

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-nez v4, :cond_4

    .line 148
    new-instance v4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance v6, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v6, v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iget-object v11, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 149
    invoke-virtual {v6, v11, v8, v10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v4, "p":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    new-instance v6, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    iget v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    invoke-direct {v6, v4, v11}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v4, v6

    .line 154
    :cond_3
    move-object v7, v4

    .line 157
    .end local v4    # "p":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v4, 0x0

    aget v6, v10, v4

    if-ge v6, v2, :cond_6

    .line 159
    aget v4, v10, v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    .line 160
    .local v4, "padding":I
    if-le v2, v3, :cond_5

    .line 161
    mul-int v6, v4, v3

    div-int v4, v6, v2

    .line 164
    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 165
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 167
    .end local v4    # "padding":I
    :cond_6
    iget-object v4, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v4, :cond_7

    .line 168
    invoke-virtual {v4}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v4

    .line 169
    .local v4, "previewWidth":I
    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredHeight()I

    move-result v6

    .local v6, "previewHeight":I
    goto :goto_1

    .line 171
    .end local v4    # "previewWidth":I
    .end local v6    # "previewHeight":I
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 172
    .restart local v4    # "previewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 174
    .restart local v6    # "previewHeight":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float/2addr v11, v12

    .line 175
    .local v11, "scale":F
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v12

    new-instance v13, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-direct {v13, v5, v14}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 177
    const/4 v12, 0x0

    .line 178
    .local v12, "dragOffset":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 179
    .local v13, "dragRegion":Landroid/graphics/Rect;
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v8

    .line 180
    .end local v9    # "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v10    # "previewSizeBeforeScale":[I
    .local v8, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    goto/16 :goto_2

    .line 181
    .end local v4    # "previewWidth":I
    .end local v8    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .end local v11    # "scale":F
    .end local v12    # "dragOffset":Landroid/graphics/Point;
    .end local v13    # "dragRegion":Landroid/graphics/Rect;
    .end local v18    # "app":Lcom/android/launcher3/LauncherAppState;
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    :cond_8
    move-object/from16 v18, v6

    .end local v6    # "app":Lcom/android/launcher3/LauncherAppState;
    .restart local v18    # "app":Lcom/android/launcher3/LauncherAppState;
    move-object v4, v9

    check-cast v4, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 182
    .local v4, "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    iget-object v6, v4, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 183
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    .line 184
    .local v8, "li":Lcom/android/launcher3/icons/LauncherIcons;
    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/icons/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v9

    .line 185
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 186
    .local v9, "previewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 187
    .local v10, "previewHeight":I
    invoke-virtual {v8}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 188
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v11, v11

    int-to-float v12, v9

    div-float/2addr v11, v12

    .line 190
    .restart local v11    # "scale":F
    new-instance v12, Landroid/graphics/Point;

    iget v13, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v13, v13, 0x2

    iget v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 194
    .restart local v12    # "dragOffset":Landroid/graphics/Point;
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    .line 195
    .local v13, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v14, v13, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 197
    .local v14, "iconSize":I
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 198
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 199
    .local v2, "padding":I
    iget v15, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v2

    iput v15, v1, Landroid/graphics/Rect;->left:I

    .line 200
    iget v15, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v2

    iput v15, v1, Landroid/graphics/Rect;->top:I

    .line 202
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .local v15, "dragRegion":Landroid/graphics/Rect;
    move/from16 v19, v2

    .end local v2    # "padding":I
    .local v19, "padding":I
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/16 v17, 0x0

    aget v2, v2, v17

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    iput v2, v15, Landroid/graphics/Rect;->left:I

    .line 204
    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iput v2, v15, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/16 v16, 0x1

    aget v2, v2, v16

    sub-int/2addr v2, v14

    iget v3, v13, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v2, v3

    iget v3, v13, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v15, Landroid/graphics/Rect;->top:I

    .line 207
    iget v2, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    .line 208
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v2

    move-object v8, v2

    move v4, v9

    move v6, v10

    move-object v13, v15

    .line 211
    .end local v9    # "previewWidth":I
    .end local v10    # "previewHeight":I
    .end local v14    # "iconSize":I
    .end local v15    # "dragRegion":Landroid/graphics/Rect;
    .end local v19    # "padding":I
    .local v4, "previewWidth":I
    .local v6, "previewHeight":I
    .local v8, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v13, "dragRegion":Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v2, p4

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v9

    int-to-float v9, v4

    mul-float/2addr v9, v11

    int-to-float v10, v4

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v3, v9

    .line 213
    .local v3, "dragLayerX":I
    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v14

    int-to-float v14, v6

    mul-float/2addr v14, v11

    int-to-float v15, v6

    sub-float/2addr v14, v15

    div-float/2addr v14, v10

    float-to-int v10, v14

    add-int/2addr v9, v10

    .line 217
    .local v9, "dragLayerY":I
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v10, :cond_9

    .line 218
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v19

    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move/from16 v22, v3

    move/from16 v23, v9

    move-object/from16 v24, p5

    move-object/from16 v25, v14

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v11

    move/from16 v29, v11

    move-object/from16 v30, p6

    invoke-virtual/range {v19 .. v30}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_3

    .line 222
    :cond_9
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v19

    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v3

    move/from16 v23, v9

    move-object/from16 v24, p5

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v11

    move/from16 v29, v11

    move-object/from16 v30, p6

    invoke-virtual/range {v19 .. v30}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 225
    :goto_3
    return-void
.end method
