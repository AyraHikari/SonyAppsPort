.class public Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "menuItemId"    # I

    .line 136
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 137
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :cond_1

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 142
    .local v3, "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 143
    return-object v3

    .line 138
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    return-object v2

    .line 105
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "content"    # Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    return-object v2

    .line 77
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 6
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "navigationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return-object v1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 121
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    .line 123
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    .line 124
    .local v4, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 125
    return-object v4

    .line 120
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "imageButton":Landroid/widget/ImageButton;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 93
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 94
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private static getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 4
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    return-object v2

    .line 58
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextView(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
