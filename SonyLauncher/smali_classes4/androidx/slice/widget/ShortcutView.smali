.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "ShortcutView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutView"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 62
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 103
    const/4 v0, 0x3

    return v0
.end method

.method public performClick()Z
    .locals 5

    .line 108
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 113
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 119
    .local v0, "ei":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    :goto_0
    nop

    .line 122
    .local v1, "interactedItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "ei":Landroidx/slice/widget/EventInfo;
    .end local v1    # "interactedItem":Landroidx/slice/SliceItem;
    :cond_2
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "ShortcutView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    :goto_1
    return v2
.end method

.method public resetView()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 145
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 146
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 147
    invoke-virtual {p0, v0}, Landroidx/slice/widget/ShortcutView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->removeAllViews()V

    .line 149
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    .line 135
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 11
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 67
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    .line 68
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 69
    if-nez p1, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    check-cast v0, Landroidx/slice/core/SliceActionImpl;

    .line 73
    .local v0, "shortcutAction":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 74
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 75
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 76
    .local v1, "tintable":Z
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getAccentColor()I

    move-result v4

    .line 77
    .local v4, "color":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v5

    .line 78
    .local v5, "accentColor":I
    :goto_1
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 79
    .local v6, "circle":Landroid/graphics/drawable/Drawable;
    invoke-static {v6, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 80
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v7, "iv":Landroid/widget/ImageView;
    iget-object v8, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_3
    invoke-virtual {p0, v7}, Landroidx/slice/widget/ShortcutView;->addView(Landroid/view/View;)V

    .line 86
    iget-object v8, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v8, :cond_6

    .line 87
    if-eqz v1, :cond_4

    iget v8, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    goto :goto_2

    :cond_4
    iget v8, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    .line 88
    .local v8, "iconSize":I
    :goto_2
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v1, :cond_5

    move v3, v2

    :cond_5
    invoke-static {v9, v8, v10, v3, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroidx/core/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    .line 90
    invoke-virtual {p0, v2}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 91
    .end local v8    # "iconSize":I
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {p0, v3}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 96
    :goto_3
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    invoke-virtual {p0, v2}, Landroidx/slice/widget/ShortcutView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method
