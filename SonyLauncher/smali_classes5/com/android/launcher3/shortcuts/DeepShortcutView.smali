.class public Lcom/android/launcher3/shortcuts/DeepShortcutView;
.super Landroid/widget/FrameLayout;
.source "DeepShortcutView.java"

# interfaces
.implements Lcom/android/launcher3/views/BubbleTextHolder;


# static fields
.field private static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field private mBubbleText:Lcom/android/launcher3/BubbleTextView;

.field private mDetail:Landroid/content/pm/ShortcutInfo;

.field private mIconView:Landroid/view/View;

.field private mInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private final mTransparentDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method private tryUpdateTextBackground()V
    .locals 6

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 101
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101042c

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 102
    .local v1, "color":I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 103
    .local v2, "backgroundMask":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 111
    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v5, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    .local v3, "drawable":Landroid/graphics/drawable/RippleDrawable;
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void

    .line 97
    .end local v0    # "background":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "color":I
    .end local v2    # "backgroundMask":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "drawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public applyShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "detail"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 143
    iput-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 144
    iput-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Landroid/content/pm/ShortcutInfo;

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, "longLabel":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    .line 151
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 152
    .local v1, "availableWidth":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    .line 153
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 154
    .local v2, "usingLongLabel":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemDragHandler()Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemDragHandler()Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    return-void
.end method

.method public getBubbleText()Lcom/android/launcher3/BubbleTextView;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public getDetail()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3

    .line 166
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 169
    .local v0, "badged":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Landroid/content/pm/ShortcutInfo;

    .line 170
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    .line 171
    return-object v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 3

    .line 133
    sget-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 137
    :cond_0
    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/launcher3/R$id;->bubble_text:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setHideBadge(Z)V

    .line 76
    sget v0, Lcom/android/launcher3/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->tryUpdateTextBackground()V

    .line 78
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->tryUpdateTextBackground()V

    .line 84
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 89
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->tryUpdateTextBackground()V

    .line 90
    return-void
.end method

.method public setWillDrawIcon(Z)V
    .locals 2
    .param p1, "willDraw"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public willDrawIcon()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
