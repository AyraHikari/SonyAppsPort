.class public Lcom/sonyericsson/music/ui/MusicLayout;
.super Landroidx/drawerlayout/widget/DrawerLayout;
.source "MusicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;
    }
.end annotation


# instance fields
.field private mAppBarWrap:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mInsets:Landroid/graphics/Rect;

.field private mNavBarShade:Landroid/view/View;

.field private mNavBarSpacer:Landroid/view/View;

.field private mNavigationDrawerView:Landroid/view/View;

.field private final mOnInsetsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarColorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mInsets:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MusicLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mInsets:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/MusicLayout;->init()V

    return-void
.end method

.method private dispatchOnInsetsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;

    .line 101
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;->onInsetsChanged(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method

.method private static nullCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private setMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOnInsetsListener(Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1, v0}, Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;->onInsetsChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener already added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 14

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mStatusBarColorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mStatusBarColorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mAppBarWrap:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 118
    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    iget v6, p1, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/ui/MusicLayout;->setMargins(Landroid/view/View;IIII)V

    .line 121
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarSpacer:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 122
    iget v10, p1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->right:I

    iget v13, p1, Landroid/graphics/Rect;->bottom:I

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/music/ui/MusicLayout;->setMargins(Landroid/view/View;IIII)V

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mContent:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 126
    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/ui/MusicLayout;->setMargins(Landroid/view/View;IIII)V

    .line 129
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavigationDrawerView:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 130
    iget v8, p1, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/music/ui/MusicLayout;->setMargins(Landroid/view/View;IIII)V

    .line 138
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarShade:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 143
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    if-lez v1, :cond_5

    .line 144
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xc

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/UIUtils;->isSeascapeMode(Landroid/content/Context;)Z

    move-result v1

    const/16 v3, 0x9

    const/16 v4, 0xb

    if-eqz v1, :cond_6

    .line 149
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 150
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 154
    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 155
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 156
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarShade:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarShade:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_8
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mInsets:Landroid/graphics/Rect;

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/MusicLayout;->dispatchOnInsetsChanged(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090158

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarShade:Landroid/view/View;

    const v0, 0x7f090159

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavBarSpacer:Landroid/view/View;

    const v0, 0x7f09007a

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mContent:Landroid/view/View;

    const v0, 0x7f09004d

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mAppBarWrap:Landroid/view/View;

    const v0, 0x7f0901e2

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mStatusBarColorView:Landroid/view/View;

    const v0, 0x7f09015a

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/MusicLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mNavigationDrawerView:Landroid/view/View;

    return-void
.end method

.method public removeOnInsetsListener(Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/ui/MusicLayout;->mOnInsetsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener not added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
