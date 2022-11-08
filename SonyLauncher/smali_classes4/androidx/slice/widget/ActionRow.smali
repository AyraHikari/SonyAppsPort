.class public Landroidx/slice/widget/ActionRow;
.super Landroid/widget/FrameLayout;
.source "ActionRow.java"


# static fields
.field private static final MAX_ACTIONS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ActionRow"


# instance fields
.field private final mActionsGroup:Landroid/widget/LinearLayout;

.field private mColor:I

.field private final mIconPadding:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullActions"    # Z

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 70
    nop

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    .line 72
    nop

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0, v0}, Landroidx/slice/widget/ActionRow;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;
    .locals 3
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "allowTint"    # Z

    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "imageView":Landroid/widget/ImageView;
    iget v1, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 96
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget v1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, v0}, Landroidx/slice/widget/ActionRow;->addAction(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method private addAction(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 156
    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method private createRemoteInputView(ILandroid/content/Context;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 178
    invoke-static {p2, p0}, Landroidx/slice/widget/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroidx/slice/widget/RemoteInputView;

    move-result-object v0

    .line 179
    .local v0, "riv":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/ActionRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    return-void
.end method

.method private findRemoteInputView(Landroid/view/View;)Landroidx/slice/widget/RemoteInputView;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    sget-object v0, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/RemoteInputView;

    return-object v0
.end method

.method private handleSetRemoteInputActions(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V
    .locals 3
    .param p1, "input"    # Landroidx/slice/SliceItem;
    .param p2, "image"    # Landroidx/slice/SliceItem;
    .param p3, "action"    # Landroidx/slice/SliceItem;

    .line 162
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "no_tint"

    invoke-virtual {p2, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 164
    .local v0, "tint":Z
    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroidx/slice/widget/ActionRow$2;

    invoke-direct {v2, p0, p3, p1}, Landroidx/slice/widget/ActionRow$2;-><init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget v1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/slice/widget/ActionRow;->createRemoteInputView(ILandroid/content/Context;)V

    .line 174
    .end local v0    # "tint":Z
    :cond_0
    return-void
.end method

.method private setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 82
    iput p1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    .local v2, "mode":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 87
    .local v3, "tint":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 88
    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    iget v5, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 83
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "mode":I
    .end local v3    # "tint":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method handleRemoteInputClick(Landroid/view/View;Landroidx/slice/SliceItem;Landroid/app/RemoteInput;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Landroidx/slice/SliceItem;
    .param p3, "input"    # Landroid/app/RemoteInput;

    .line 187
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 188
    return v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 192
    .local v1, "p":Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 193
    .local v2, "riv":Landroidx/slice/widget/RemoteInputView;
    :goto_0
    if-eqz v1, :cond_2

    .line 194
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 195
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 196
    .local v3, "pv":Landroid/view/View;
    invoke-direct {p0, v3}, Landroidx/slice/widget/ActionRow;->findRemoteInputView(Landroid/view/View;)Landroidx/slice/widget/RemoteInputView;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_1

    .line 198
    goto :goto_1

    .line 201
    .end local v3    # "pv":Landroid/view/View;
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 204
    return v0

    .line 207
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 208
    .local v3, "width":I
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 210
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    .line 211
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 212
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    float-to-int v5, v5

    .line 213
    .local v5, "innerWidth":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 214
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 217
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "innerWidth":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    .line 218
    .local v4, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 219
    .local v5, "cy":I
    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView;->getWidth()I

    move-result v6

    .line 220
    .local v6, "w":I
    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView;->getHeight()I

    move-result v7

    .line 221
    .local v7, "h":I
    add-int v8, v4, v5

    sub-int v9, v7, v5

    add-int/2addr v9, v4

    .line 222
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int v9, v6, v4

    add-int/2addr v9, v5

    sub-int v10, v6, v4

    sub-int v11, v7, v5

    add-int/2addr v10, v11

    .line 223
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 221
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 225
    .local v8, "r":I
    invoke-virtual {v2, v4, v5, v8}, Landroidx/slice/widget/RemoteInputView;->setRevealParameters(III)V

    .line 226
    invoke-virtual {v2, p2}, Landroidx/slice/widget/RemoteInputView;->setAction(Landroidx/slice/SliceItem;)V

    .line 227
    const/4 v9, 0x1

    new-array v10, v9, [Landroid/app/RemoteInput;

    aput-object p3, v10, v0

    invoke-virtual {v2, v10, p3}, Landroidx/slice/widget/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 230
    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView;->focusAnimated()V

    .line 231
    return v9
.end method

.method public setActions(Ljava/util/List;I)V
    .locals 10
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;I)V"
        }
    .end annotation

    .line 112
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->removeAllViews()V

    .line 113
    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ActionRow;->addView(Landroid/view/View;)V

    .line 115
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 116
    invoke-direct {p0, p2}, Landroidx/slice/widget/ActionRow;->setColor(I)V

    .line 118
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/core/SliceAction;

    .line 119
    .local v1, "action":Landroidx/slice/core/SliceAction;
    iget-object v3, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 120
    return-void

    .line 122
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    .line 123
    .local v3, "sliceItem":Landroidx/slice/SliceItem;
    move-object v4, v1

    check-cast v4, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v4

    .line 124
    .local v4, "actionItem":Landroidx/slice/SliceItem;
    const-string v5, "input"

    invoke-static {v3, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    .line 125
    .local v5, "input":Landroidx/slice/SliceItem;
    const-string v6, "image"

    invoke-static {v3, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 126
    .local v6, "image":Landroidx/slice/SliceItem;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v2, v7, :cond_2

    .line 128
    invoke-direct {p0, v5, v6, v4}, Landroidx/slice/widget/ActionRow;->handleSetRemoteInputActions(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V

    goto :goto_1

    .line 130
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received RemoteInput on API <20 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ActionRow"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 133
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    .line 134
    .local v7, "iconItem":Landroidx/core/graphics/drawable/IconCompat;
    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 135
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->getImageMode()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v2, 0x1

    .line 136
    .local v2, "tint":Z
    :cond_4
    invoke-direct {p0, v7, v2}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    move-result-object v8

    new-instance v9, Landroidx/slice/widget/ActionRow$1;

    invoke-direct {v9, p0, v4}, Landroidx/slice/widget/ActionRow$1;-><init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .end local v1    # "action":Landroidx/slice/core/SliceAction;
    .end local v2    # "tint":Z
    .end local v3    # "sliceItem":Landroidx/slice/SliceItem;
    .end local v4    # "actionItem":Landroidx/slice/SliceItem;
    .end local v5    # "input":Landroidx/slice/SliceItem;
    .end local v6    # "image":Landroidx/slice/SliceItem;
    .end local v7    # "iconItem":Landroidx/core/graphics/drawable/IconCompat;
    :cond_5
    :goto_1
    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 153
    return-void
.end method
