.class public Landroidx/preference/PreferenceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PreferenceViewHolder.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mCachedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerAllowedAbove:Z

.field private mDividerAllowedBelow:Z

.field private mTitleTextColors:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .line 44
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    .line 46
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget v1, Landroidx/preference/R$id;->icon_frame:I

    sget v3, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    nop

    .line 54
    const v1, 0x102003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceViewHolder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    .line 60
    :cond_0
    return-void
.end method

.method public static createInstanceForTests(Landroid/view/View;)Landroidx/preference/PreferenceViewHolder;
    .locals 1
    .param p0, "itemView"    # Landroid/view/View;

    .line 65
    new-instance v0, Landroidx/preference/PreferenceViewHolder;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .line 76
    iget-object v0, p0, Landroidx/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    .local v0, "cachedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    return-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 82
    iget-object v2, p0, Landroidx/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    :cond_1
    return-object v1
.end method

.method public isDividerAllowedAbove()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    return v0
.end method

.method resetState()V
    .locals 3

    .line 142
    iget-object v0, p0, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/PreferenceViewHolder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/PreferenceViewHolder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    :cond_1
    return-void
.end method

.method public setDividerAllowedAbove(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 109
    iput-boolean p1, p0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 110
    return-void
.end method

.method public setDividerAllowedBelow(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 133
    iput-boolean p1, p0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 134
    return-void
.end method
