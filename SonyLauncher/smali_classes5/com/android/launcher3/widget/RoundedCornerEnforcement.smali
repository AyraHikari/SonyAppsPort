.class public Lcom/android/launcher3/widget/RoundedCornerEnforcement;
.super Ljava/lang/Object;
.source "RoundedCornerEnforcement.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static accumulateViewsWithId(Landroid/view/View;ILjava/util/List;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "output":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 123
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void

    .line 126
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 127
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->accumulateViewsWithId(Landroid/view/View;ILjava/util/List;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static computeEnforcedRadius(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 110
    .local v1, "systemRadius":F
    sget v2, Lcom/android/launcher3/R$dimen;->enforced_rounded_corner_max_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 111
    .local v2, "defaultRadius":F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    return v3
.end method

.method public static computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "appWidget"    # Landroid/view/View;
    .param p1, "background"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 90
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 92
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 94
    :goto_0
    if-eq p1, p0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public static findBackground(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "appWidget"    # Landroid/view/View;

    .line 53
    const/high16 v0, 0x1020000

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findViewsWithId(Landroid/view/View;I)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "backgrounds":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 58
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findUndefinedBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 64
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-object p0
.end method

.method private static findUndefinedBackground(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "current"    # Landroid/view/View;

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    return-object p0

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 152
    .local v0, "lastVisibleView":Landroid/view/View;
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 153
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 154
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findUndefinedBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, "visibleView":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 157
    if-eqz v0, :cond_2

    .line 158
    return-object p0

    .line 160
    :cond_2
    move-object v0, v3

    .line 154
    .end local v3    # "visibleView":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method private static findViewsWithId(Landroid/view/View;I)Ljava/util/List;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->accumulateViewsWithId(Landroid/view/View;ILjava/util/List;)V

    .line 117
    return-object v0
.end method

.method public static hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "appWidget"    # Landroid/view/View;
    .param p1, "background"    # Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/high16 v1, 0x1020000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRoundedCornerEnabled()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isViewVisible(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
