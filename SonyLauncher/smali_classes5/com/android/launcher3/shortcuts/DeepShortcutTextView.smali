.class public Lcom/android/launcher3/shortcuts/DeepShortcutTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "DeepShortcutTextView.java"


# instance fields
.field private final mDragHandleBounds:Landroid/graphics/Rect;

.field private final mDragHandleWidth:I

.field private mInstructionToast:Landroid/widget/Toast;

.field private final mLoadingStateBounds:Landroid/graphics/Rect;

.field private mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

.field private mShowInstructionToast:Z

.field private mShowLoadingState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->popup_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/launcher3/R$dimen;->deep_shortcut_drag_handle_size:I

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/launcher3/R$dimen;->deep_shortcut_drawable_padding:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    .line 61
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->showLoadingState(Z)V

    .line 62
    return-void
.end method

.method private setLoadingBounds()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingStart()I

    move-result v1

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    return-void
.end method

.method private showLoadingState(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .line 142
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    if-ne p1, v0, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    .line 148
    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$drawable;->deep_shortcuts_text_placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->setLoadingBounds()V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->invalidate()V

    .line 157
    return-void
.end method

.method private showToast()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 163
    :cond_0
    nop

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->long_press_shortcut_to_add:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->long_accessible_way_to_add_shortcut:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    .line 167
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 168
    return-void
.end method


# virtual methods
.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 96
    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 139
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 127
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    if-nez v0, :cond_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->onMeasure(II)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->setLoadingBounds()V

    .line 74
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->showToast()V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->showLoadingState(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method
