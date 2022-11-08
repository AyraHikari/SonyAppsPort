.class public Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SecondaryDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllAppsButton:Landroid/view/View;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field private mWorkspace:Landroid/widget/GridView;


# direct methods
.method public static synthetic $r8$lambda$5Z1bbsGaU0nvdJTJrb_yv4KliGM(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->onIconLongClicked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->recreateControllers()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method private onIconLongClicked(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 170
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 176
    return v1

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 179
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    return v1

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    .line 183
    .local v2, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    if-nez v2, :cond_3

    .line 184
    return v1

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 187
    invoke-virtual {v3}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$layout;->popup_container:I

    iget-object v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 188
    invoke-virtual {v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    .line 187
    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 190
    .local v3, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 191
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v5

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v8, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    .line 193
    invoke-virtual {v8, v0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->getSystemShortcut(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v8

    aput-object v8, v7, v1

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    iget-object v8, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v8, Lcom/android/launcher3/BaseDraggingActivity;

    .line 194
    invoke-interface {v1, v8, v0, p1}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v7, v8

    .line 193
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 196
    return v8
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onAttachedToWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->init()V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onDetachedFromWindow()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->destroy()V

    .line 100
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 70
    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->onFinishInflate()V

    .line 71
    sget v0, Lcom/android/launcher3/R$id;->all_apps_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    .line 73
    sget v0, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 74
    new-instance v1, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    sget v0, Lcom/android/launcher3/R$id;->workspace_grid:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    .line 78
    new-instance v0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/allapps/AllAppsStore;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 107
    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 108
    .local v7, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 109
    .local v8, "height":I
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->setMeasuredDimension(II)V

    .line 111
    iget-object v0, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 112
    .local v9, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getChildCount()I

    move-result v10

    .line 113
    .local v10, "count":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_3

    .line 114
    invoke-virtual {v6, v11}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 115
    .local v12, "child":Landroid/view/View;
    iget-object v0, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_0

    .line 116
    iget v0, v9, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, v9, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, v9, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 118
    .local v0, "horizontalPadding":I
    iget-object v2, v9, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v9, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 121
    .local v2, "verticalPadding":I
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 123
    .local v3, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getPaddingLeft()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 125
    .local v4, "appsWidth":I
    iget v5, v9, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget v13, v9, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v5, v13

    add-int/2addr v5, v2

    .line 127
    .local v5, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getPaddingTop()I

    move-result v13

    sub-int v13, v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 129
    .local v13, "appsHeight":I
    iget-object v14, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 130
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 129
    invoke-virtual {v14, v15, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->measure(II)V

    .line 131
    .end local v0    # "horizontalPadding":I
    .end local v2    # "verticalPadding":I
    .end local v3    # "maxWidth":I
    .end local v4    # "appsWidth":I
    .end local v5    # "maxHeight":I
    .end local v13    # "appsHeight":I
    goto :goto_1

    :cond_0
    iget-object v0, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    if-ne v12, v0, :cond_1

    .line 132
    iget v0, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 133
    .local v0, "appsButtonSpec":I
    iget-object v1, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 134
    .end local v0    # "appsButtonSpec":I
    goto :goto_1

    :cond_1
    iget-object v1, v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    if-ne v12, v1, :cond_2

    .line 135
    const/4 v3, 0x0

    iget v0, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int v5, v0, v2

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 138
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 113
    .end local v12    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 141
    .end local v11    # "i":I
    :cond_3
    return-void
.end method

.method public recreateControllers()V
    .locals 3

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    new-instance v1, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController-IA;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 63
    return-void
.end method
