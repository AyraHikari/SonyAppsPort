.class public Lcom/android/launcher3/folder/PreviewItemManager;
.super Ljava/lang/Object;
.source "PreviewItemManager.java"


# static fields
.field private static final CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/folder/PreviewItemManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final ITEM_SLIDE_IN_OUT_DISTANCE_PX:I = 0xc8

.field private static final SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION:I = 0x12c

.field private static final SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION_DELAY:I = 0x64


# instance fields
.field private final mClipThreshold:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentPageItemsTransX:F

.field private mCurrentPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mIconSize:I

.field private mIntrinsicIconSize:F

.field private mPrevTopPadding:I

.field private mReferenceDrawable:Landroid/graphics/drawable/Drawable;

.field private mShouldSlideInFirstPage:Z

.field private mTotalWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentPageItemsTransX(Lcom/android/launcher3/folder/PreviewItemManager;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPageParams(Lcom/android/launcher3/folder/PreviewItemManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPageItemsTransX(Lcom/android/launcher3/folder/PreviewItemManager;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager$1;

    const-string v1, "currentPageItemsTransX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewItemManager;->CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    .line 86
    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 111
    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 112
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mClipThreshold:F

    .line 114
    return-void
.end method

.method private computePreviewDrawingParams(II)V
    .locals 7
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .line 145
    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 146
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 147
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    .line 148
    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    .line 152
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v6

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 154
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    .line 158
    :cond_1
    return-void
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/PointF;ZLandroid/graphics/Path;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .param p3, "offset"    # Landroid/graphics/PointF;
    .param p4, "shouldClipPath"    # Z
    .param p5, "clipPath"    # Landroid/graphics/Path;

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 231
    if-eqz p4, :cond_0

    .line 232
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 234
    :cond_0
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    add-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->y:F

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 236
    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 238
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 240
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 247
    return-void
.end method

.method private getFinalIconParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 4
    .param p1, "params"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    .line 173
    .local v0, "iconSize":F
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 174
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 176
    .local v2, "trans":F
    invoke-virtual {p1, v2, v2, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    .line 177
    return-object p1
.end method

.method private setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 5
    .param p1, "p"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 433
    instance-of v0, p2, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 434
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    .line 435
    .local v0, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget v3, v0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0xc00

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v3

    .line 437
    .local v3, "drawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/AppInfo;->getProgressLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 438
    iput-object v3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 439
    .end local v3    # "drawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    goto :goto_0

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/model/data/AppInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 442
    :goto_0
    iget-object v3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v3, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    .line 444
    iget-object v3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 447
    .end local v0    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_4

    .line 448
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 450
    .local v0, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0xc00

    if-eqz v3, :cond_2

    goto :goto_1

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 452
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 453
    .local v1, "drawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getProgressLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 454
    iput-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 455
    .end local v1    # "drawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    nop

    .line 458
    :goto_2
    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    iput-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    .line 463
    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 465
    .end local v0    # "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_4
    return-void
.end method

.method private updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;III)V
    .locals 10
    .param p1, "p"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "prevIndex"    # I
    .param p4, "newIndex"    # I
    .param p5, "numItems"    # I

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 424
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v7, 0x190

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 426
    .local v0, "anim":Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    .line 429
    :cond_0
    iput-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 430
    return-void
.end method


# virtual methods
.method buildParamsForPage(ILjava/util/ArrayList;Z)V
    .locals 18
    .param p1, "page"    # I
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;Z)V"
        }
    .end annotation

    .line 263
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/PreviewItemDrawingParams;>;"
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v12

    .line 264
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 267
    .local v13, "prevNumItems":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 271
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_1
    if-nez v10, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    move v14, v0

    .line 275
    .local v14, "numItemsInFirstPagePreview":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    .line 276
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 277
    .local v8, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v9, v8, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 279
    if-nez p3, :cond_4

    .line 280
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    .line 283
    :cond_3
    invoke-virtual {v9, v15, v14, v8}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 284
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 285
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 288
    :cond_4
    new-instance v16, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v7, 0x190

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v15

    move v4, v13

    move v5, v15

    move v6, v14

    move-object v9, v8

    .end local v8    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .local v9, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 291
    .local v0, "anim":Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v1, :cond_6

    .line 292
    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    goto :goto_4

    .line 296
    :cond_5
    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    .line 298
    :cond_6
    iput-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 299
    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 275
    .end local v0    # "anim":Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    .end local v9    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    goto :goto_3

    .line 302
    .end local v15    # "i":I
    :cond_8
    return-void
.end method

.method computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 1
    .param p1, "index"    # I
    .param p2, "curNumItems"    # I
    .param p3, "params"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 165
    invoke-direct {p0, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->getFinalIconParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method public createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    .locals 10
    .param p1, "reverse"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 122
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0xc8

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x15e

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 122
    :goto_0
    return-object v9
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 199
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    .line 200
    .local v1, "bg":Lcom/android/launcher3/folder/PreviewBackground;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v8

    .line 201
    .local v8, "clipPath":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 202
    .local v9, "firstPageItemsTransX":F
    iget-boolean v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    .line 203
    new-instance v5, Landroid/graphics/PointF;

    iget v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    add-float/2addr v2, v3

    iget v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 205
    .local v5, "firstPageOffset":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mClipThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    move v6, v11

    .line 206
    .local v6, "shouldClip":Z
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/PointF;ZLandroid/graphics/Path;)V

    .line 207
    const/high16 v2, -0x3cb80000    # -200.0f

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    add-float v9, v3, v2

    .line 210
    .end local v5    # "firstPageOffset":Landroid/graphics/PointF;
    .end local v6    # "shouldClip":Z
    :cond_1
    new-instance v5, Landroid/graphics/PointF;

    iget v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v2, v9

    iget v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 212
    .restart local v5    # "firstPageOffset":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mClipThreshold:F

    neg-float v2, v2

    cmpg-float v2, v9, v2

    if-gez v2, :cond_2

    move v6, v10

    goto :goto_1

    :cond_2
    move v6, v11

    .line 213
    .local v6, "shouldClipFirstPage":Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/PointF;ZLandroid/graphics/Path;)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 215
    return-void
.end method

.method public drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/PointF;ZLandroid/graphics/Path;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "offset"    # Landroid/graphics/PointF;
    .param p4, "shouldClipPath"    # Z
    .param p5, "clipPath"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;",
            "Landroid/graphics/PointF;",
            "Z",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 183
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/PreviewItemDrawingParams;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 184
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 185
    .local v2, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    iget-boolean v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v3, :cond_1

    .line 187
    iget v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->index:F

    const/high16 v4, -0x40000000    # -2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    .line 188
    .local v9, "isExiting":Z
    or-int v7, v9, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/folder/PreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/PointF;ZLandroid/graphics/Path;)V

    .line 183
    .end local v2    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .end local v9    # "isExiting":Z
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method getIntrinsicIconSize()F
    .locals 1

    .line 360
    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    return v0
.end method

.method public hidePreviewItem(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "hidden"    # Z

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    .local v0, "params":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    :goto_0
    if-eqz v0, :cond_1

    .line 258
    iput-boolean p2, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    .line 260
    :cond_1
    return-void
.end method

.method public onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 18
    .param p3, "dropped"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")V"
        }
    .end annotation

    .line 374
    .local p1, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p2, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .line 375
    .local v9, "numItems":I
    iget-object v10, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    .line 376
    .local v10, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/PreviewItemDrawingParams;>;"
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v10, v11}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 380
    .local v12, "moveIn":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 381
    .local v1, "newItem":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 382
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_0
    move-object/from16 v13, p3

    .line 384
    .end local v1    # "newItem":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    :goto_1
    goto :goto_0

    .line 385
    :cond_2
    move-object/from16 v13, p3

    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_3

    .line 386
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 387
    .local v15, "prevIndex":I
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 388
    .local v5, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    invoke-virtual {v6, v15, v9, v5}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 389
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, -0x3

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v16, v5

    .end local v5    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .local v16, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;III)V

    .line 385
    .end local v15    # "prevIndex":I
    .end local v16    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 394
    .end local v14    # "i":I
    :cond_3
    const/4 v0, 0x0

    move v14, v0

    .local v14, "newIndex":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    .line 395
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 396
    .local v15, "oldIndex":I
    if-ltz v15, :cond_4

    if-eq v14, v15, :cond_4

    .line 397
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 398
    .restart local v16    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v3, v15

    move v4, v14

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;III)V

    .line 394
    .end local v15    # "oldIndex":I
    .end local v16    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 403
    .end local v14    # "newIndex":I
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v0

    .line 404
    .local v14, "moveOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {v14, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 405
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6

    .line 406
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 407
    .local v5, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {v7, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 408
    .local v4, "oldIndex":I
    const/4 v0, 0x0

    invoke-virtual {v6, v4, v9, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v3

    .line 409
    .local v3, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    const/16 v16, -0x2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v6, v3

    .end local v3    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .local v6, "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    move v3, v4

    move/from16 v17, v4

    .end local v4    # "oldIndex":I
    .local v17, "oldIndex":I
    move/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v16, "item":Lcom/android/launcher3/model/data/ItemInfo;
    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;III)V

    .line 410
    invoke-virtual {v10, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 405
    .end local v6    # "p":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .end local v16    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v17    # "oldIndex":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p0

    goto :goto_4

    .line 413
    .end local v15    # "i":I
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 414
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v1, :cond_7

    .line 415
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 413
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 418
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method onFolderClose(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .line 307
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    .line 308
    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    .line 310
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    .line 313
    sget-object v0, Lcom/android/launcher3/folder/PreviewItemManager;->CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 314
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/launcher3/folder/PreviewItemManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/PreviewItemManager$2;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 322
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 323
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 325
    .end local v0    # "slideAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method public onParamsChanged()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 219
    return-void
.end method

.method prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "destView"    # Landroid/view/View;

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 131
    .local v0, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 131
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParams(II)V

    .line 133
    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    return-object v0
.end method

.method public recomputePreviewDrawingParams()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 140
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getMeasuredWidth()I

    move-result v1

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParams(II)V

    .line 142
    :cond_0
    return-void
.end method

.method updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "itemCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    .line 333
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 334
    .local v2, "param":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    iget-object v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 336
    const/4 v0, 0x1

    .line 338
    .end local v2    # "param":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 340
    .restart local v2    # "param":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    iget-object v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 342
    const/4 v0, 0x1

    .line 344
    .end local v2    # "param":Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    :cond_2
    goto :goto_1

    .line 345
    :cond_3
    if-eqz v0, :cond_4

    .line 346
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 348
    :cond_4
    return-void
.end method

.method updatePreviewItems(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    .line 329
    return-void
.end method

.method verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_0

    .line 353
    const/4 v1, 0x1

    return v1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
