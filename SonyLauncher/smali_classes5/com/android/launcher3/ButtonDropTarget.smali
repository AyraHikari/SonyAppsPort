.class public abstract Lcom/android/launcher3/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DRAG_VIEW_DROP_DURATION:I = 0x11d

.field private static final DRAG_VIEW_HOVER_OVER_OPACITY:F = 0.65f

.field private static final MAX_LINES_TEXT_MULTI_LINE:I = 0x2

.field private static final MAX_LINES_TEXT_SINGLE_LINE:I = 0x1

.field public static final TOOLTIP_DEFAULT:I = 0x0

.field public static final TOOLTIP_LEFT:I = 0x1

.field public static final TOOLTIP_RIGHT:I = 0x2

.field private static final sTempCords:[I


# instance fields
.field private mAccessibleDrag:Z

.field protected mActive:Z

.field private final mDragDistanceThreshold:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawablePadding:I

.field private final mDrawableSize:I

.field protected mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mIconVisible:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mText:Ljava/lang/CharSequence;

.field private mTextMultiLine:Z

.field private mTextVisible:Z

.field private mToolTip:Landroid/widget/PopupWindow;

.field private mToolTipLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    .line 90
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->drag_distanceThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    .line 94
    sget v1, Lcom/android/launcher3/R$dimen;->drop_target_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    .line 95
    sget v1, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawablePadding:I

    .line 97
    return-void
.end method

.method private centerIcon()V
    .locals 5

    .line 308
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :goto_0
    nop

    .line 310
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    add-int v4, v0, v3

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    return-void
.end method

.method private hideTooltip()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 129
    :cond_0
    return-void
.end method

.method private updateIconVisibility()V
    .locals 2

    .line 359
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->centerIcon()V

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawablePadding:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablePadding(I)V

    .line 364
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 196
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public abstract completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract getAccessibilityAction()I
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 261
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 262
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetDragPaddingPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 264
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    .line 265
    iget-object v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 266
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 267
    return-void
.end method

.method public getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;
    .locals 14
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 270
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v0

    .line 271
    .local v0, "viewWidth":I
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v1

    .line 272
    .local v1, "viewHeight":I
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 273
    .local v2, "drawableWidth":I
    iget-object v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 274
    .local v3, "drawableHeight":I
    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 277
    .local v4, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 278
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v4, p0, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 280
    move v6, v2

    .line 281
    .local v6, "width":I
    move v7, v3

    .line 286
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 288
    .local v8, "right":I
    sub-int v9, v8, v6

    .local v9, "left":I
    goto :goto_0

    .line 290
    .end local v8    # "right":I
    .end local v9    # "left":I
    :cond_0
    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v8

    .line 291
    .restart local v9    # "left":I
    add-int v8, v9, v6

    .line 294
    .restart local v8    # "right":I
    :goto_0
    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 295
    .local v10, "top":I
    add-int v11, v10, v7

    .line 297
    .local v11, "bottom":I
    invoke-virtual {v5, v9, v10, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    sub-int v12, v0, v6

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    .line 301
    .local v12, "xOffset":I
    sub-int v13, v1, v7

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    .line 302
    .local v13, "yOffset":I
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 304
    return-object v5
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 211
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->getDistanceDragged()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0
.end method

.method protected isTextMultiLine()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    return v0
.end method

.method public isTextTruncated(I)Z
    .locals 4
    .param p1, "availableWidth"    # I

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, p1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 382
    .local v0, "displayedText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method synthetic lambda$onDrop$0$com-android-launcher3-ButtonDropTarget(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 242
    return-void
.end method

.method public abstract onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    .line 219
    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 133
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-nez v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$layout;->drop_target_tool_tip:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "message":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 142
    const/4 v2, 0x0

    .local v2, "x":I
    const/4 v3, 0x0

    .line 143
    .local v3, "y":I
    iget v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    neg-int v3, v4

    .line 145
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 146
    iget v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    if-ne v4, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 152
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 155
    .end local v0    # "message":Landroid/widget/TextView;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    .line 157
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->cancel()V

    .line 160
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->sendAccessibilityEvent(I)V

    .line 161
    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 170
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 172
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 178
    :goto_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 166
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 182
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iput-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 186
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 188
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setVisibility(I)V

    .line 190
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    .line 191
    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 18
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isFlingToDelete:Z

    if-eqz v3, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 231
    .local v3, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    iget-object v15, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 232
    .local v15, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v16

    .line 233
    .local v16, "to":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v17, v4, v5

    .line 234
    .local v17, "scale":F
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 236
    iget-object v4, v0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher3/DropTargetBar;->deferOnDragEnd()V

    .line 238
    new-instance v12, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v1}, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 244
    .local v12, "onAnimationEndRunnable":Ljava/lang/Runnable;
    iget-object v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3dcccccd    # 0.1f

    const/16 v10, 0x11d

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v3

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 248
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 369
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->centerIcon()V

    .line 370
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 253
    return-void
.end method

.method protected setDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 118
    return-void
.end method

.method public setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0
    .param p1, "dropTargetBar"    # Lcom/android/launcher3/DropTargetBar;

    .line 121
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 122
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 352
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eq v0, p1, :cond_0

    .line 353
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    .line 354
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 356
    :cond_0
    return-void
.end method

.method public setTextMultiLine(Z)V
    .locals 2
    .param p1, "isMultiLine"    # Z

    .line 331
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    if-eq v0, p1, :cond_2

    .line 332
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    .line 333
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSingleLine(Z)V

    .line 334
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setMaxLines(I)V

    .line 335
    const/4 v0, 0x1

    .line 336
    .local v0, "inputType":I
    if-eqz p1, :cond_1

    .line 337
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 340
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setInputType(I)V

    .line 342
    .end local v0    # "inputType":I
    :cond_2
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 319
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 320
    .local v0, "newText":Ljava/lang/CharSequence;
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 325
    :cond_2
    return-void
.end method

.method public setToolTipLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .line 373
    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    .line 374
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 375
    return-void
.end method

.method protected abstract setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public abstract supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
.end method

.method protected abstract supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
.end method

.method protected updateText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setText(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
