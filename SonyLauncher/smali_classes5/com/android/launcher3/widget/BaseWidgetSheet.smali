.class public abstract Lcom/android/launcher3/widget/BaseWidgetSheet;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "BaseWidgetSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_HORIZONTAL_SPANS:I = 0x4

.field protected static final KEY_WIDGETS_EDUCATION_TIP_SEEN:Ljava/lang/String; = "launcher.widgets_education_tip_seen"


# instance fields
.field private mContentHorizontalMarginInPx:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field private mWidgetInstructionToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMarginInPx:I

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 80
    sget v1, Lcom/android/launcher3/R$attr;->allAppsNavBarScrimColor:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-void
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z
    .locals 14
    .param p1, "v"    # Lcom/android/launcher3/widget/WidgetCell;

    .line 212
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "b/195031154"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    .line 220
    .local v0, "image":Lcom/android/launcher3/widget/WidgetImageView;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 221
    return v2

    .line 224
    :cond_1
    new-instance v1, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    .line 227
    .local v1, "dragHelper":Lcom/android/launcher3/widget/PendingItemDragHelper;
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getRemoteViewsPreview()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewScale()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V

    .line 228
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V

    .line 230
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_2

    .line 231
    new-array v11, v4, [I

    .line 232
    .local v11, "loc":[I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, v0, v11}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 235
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget v2, v11, v2

    aget v3, v11, v10

    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 234
    move-object v3, v1

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 236
    .end local v11    # "loc":[I
    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v11

    .line 238
    .local v11, "preview":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    new-array v12, v4, [I

    .line 239
    .local v12, "loc":[I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 240
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v3

    .line 241
    .local v13, "r":Landroid/graphics/Rect;
    invoke-virtual {v11, v13}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget v2, v12, v2

    aget v3, v12, v10

    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v3, v1

    move-object v4, v13

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 245
    .end local v11    # "preview":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .end local v12    # "loc":[I
    .end local v13    # "r":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/launcher3/widget/BaseWidgetSheet;->close(Z)V

    .line 246
    return v10
.end method

.method private getNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 147
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    return v0
.end method

.method private static showShortcutToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 304
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->long_press_shortcut_to_add:I

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->long_accessible_way_to_add_shortcut:I

    .line 306
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 307
    .local v0, "msg":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 309
    return-object p1
.end method

.method public static showWidgetToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;

    .line 283
    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 287
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->long_press_widget_to_add:I

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->long_accessible_way_to_add:I

    .line 289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .local v0, "msg":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 292
    return-object p1
.end method


# virtual methods
.method protected clearNavBarColor()V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 265
    return-void
.end method

.method protected computeMaxHorizontalSpans(Landroid/view/View;I)I
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "contentHorizontalPaddingPx"    # I

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 201
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMarginInPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 204
    .local v1, "availableWidth":I
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    .line 205
    .local v2, "cellSize":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_0

    .line 206
    iget v3, v2, Landroid/graphics/Point;->x:I

    div-int v3, v1, v3

    return v3

    .line 208
    :cond_0
    const/4 v3, 0x4

    return v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 162
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    .line 165
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected doMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 181
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 182
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    .line 183
    .local v1, "margin":I
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    .local v1, "widthUsed":I
    goto :goto_0

    .end local v1    # "widthUsed":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .restart local v1    # "widthUsed":I
    goto :goto_0

    .line 187
    .end local v1    # "widthUsed":I
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 188
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 192
    .local v1, "widthUsed":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContent:Landroid/view/ViewGroup;

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/widget/BaseWidgetSheet;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 195
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 194
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setMeasuredDimension(II)V

    .line 196
    return-void
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    return-object v0
.end method

.method protected hasSeenEducationTip()Z
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.widgets_education_tip_seen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    .line 157
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onAttachedToWindow()V

    .line 90
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 92
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 94
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 110
    :cond_1
    :goto_0
    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-static {v1, v2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->showShortcutToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-static {v1, v2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->showWidgetToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 116
    :goto_1
    return-void
.end method

.method protected onCloseComplete()V
    .locals 0

    .line 258
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->clearNavBarColor()V

    .line 260
    return-void
.end method

.method protected abstract onContentHorizontalMarginChanged(I)V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onDetachedFromWindow()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 100
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 254
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 120
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "b/195031154"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const-string v0, "Main"

    const-string v1, "Widgets.onLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_2

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z

    move-result v0

    return v0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z

    move-result v0

    return v0

    .line 132
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 140
    .local v0, "contentHorizontalMarginInPx":I
    iget v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMarginInPx:I

    if-eq v0, v1, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onContentHorizontalMarginChanged(I)V

    .line 142
    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMarginInPx:I

    .line 144
    :cond_0
    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 2
    .param p1, "translationShift"    # F

    .line 340
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 342
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->onWidgetsTransition(F)V

    .line 343
    return-void
.end method

.method protected setupNavBarColor()V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 269
    .local v0, "isSheetDark":Z
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    .line 271
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 269
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 272
    return-void
.end method

.method protected showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 315
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 319
    .local v1, "coords":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 320
    new-instance v2, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/launcher3/R$string;->long_press_widget_to_add:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget v4, v1, v4

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    const/4 v0, 0x1

    aget v5, v1, v0

    .line 321
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;II)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v2

    .line 325
    .local v2, "arrowTipView":Lcom/android/launcher3/views/ArrowTipView;
    if-eqz v2, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 327
    const-string v4, "launcher.widgets_education_tip_seen"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_1
    return-object v2

    .line 316
    .end local v1    # "coords":[I
    .end local v2    # "arrowTipView":Lcom/android/launcher3/views/ArrowTipView;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
